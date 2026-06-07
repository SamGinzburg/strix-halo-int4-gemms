	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:400:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:400:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
.Ltmp2:
	.loc	1 402 25 is_stmt 1              ; ragged.py:402:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v66, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v56, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v60, 0xf0, v0
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
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
	s_ashr_i32 s15, s4, 31
	s_sub_i32 s16, s5, s6
	s_add_i32 s17, s3, 1
	s_sub_i32 s18, s16, s14
	s_cmp_ge_u32 s16, s14
	s_load_b256 s[4:11], s[0:1], 0x28
	s_cselect_b32 s3, s17, s3
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s3, 1
	s_cmp_ge_u32 s16, s14
	s_cselect_b32 s3, s17, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s15
	s_sub_i32 s20, s3, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 406 34                        ; ragged.py:406:34
	s_mul_i32 s3, s20, s13
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 406 20 is_stmt 0              ; ragged.py:406:20
	s_add_i32 s2, s2, s12
	s_mov_b32 s12, 0
	.loc	1 409 20 is_stmt 1              ; ragged.py:409:20
	s_ashr_i32 s3, s2, 31
	.loc	1 410 23                        ; ragged.py:410:23
	s_lshl_b64 s[28:29], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s28
	s_addc_u32 s3, s5, s29
	s_load_b64 s[14:15], s[2:3], 0x0
	.loc	1 411 24                        ; ragged.py:411:24
	s_add_u32 s2, s6, s28
	s_addc_u32 s3, s7, s29
	.loc	1 412 22                        ; ragged.py:412:22
	s_add_u32 s4, s8, s28
	s_addc_u32 s5, s9, s29
	.loc	1 411 24                        ; ragged.py:411:24
	s_load_b64 s[16:17], s[2:3], 0x0
	.loc	1 412 22                        ; ragged.py:412:22
	s_load_b64 s[18:19], s[4:5], 0x0
	v_mov_b32_e32 v81, 0
	.loc	1 414 18                        ; ragged.py:414:18
	s_lshl_b32 s35, s20, 8
	.loc	1 413 18                        ; ragged.py:413:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s14, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s15, 0, s2
	.loc	1 494 25                        ; ragged.py:494:25
	v_add_nc_u32_e32 v58, s14, v1
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
	v_cmp_le_i64_e32 vcc_lo, s[16:17], v[2:3]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s2, s[18:19], v[2:3]
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s3, s[16:17], v[4:5]
	v_cmp_le_i64_e64 s5, s[16:17], v[6:7]
	v_cmp_le_i64_e64 s6, s[16:17], v[8:9]
	.loc	1 415 48                        ; ragged.py:415:48
	v_cmp_gt_i64_e64 s7, s[18:19], v[4:5]
	v_cmp_gt_i64_e64 s8, s[18:19], v[6:7]
	v_cmp_gt_i64_e64 s9, s[18:19], v[8:9]
	.loc	1 494 25 is_stmt 1              ; ragged.py:494:25
	v_add_nc_u32_e32 v61, 16, v58
	v_add_nc_u32_e32 v62, 32, v58
	v_add_nc_u32_e32 v63, 48, v58
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
	s_clause 0x3
	s_load_b64 s[8:9], s[0:1], 0x20
	s_load_b32 s13, s[0:1], 0x50
	s_load_b32 s7, s[0:1], 0x48
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 413 18 is_stmt 1              ; ragged.py:413:18
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v5, 63, v0
	v_lshrrev_b32_e32 v7, 1, v0
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v87, 0, v1
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v9, 1, v0
	.loc	1 414 18                        ; ragged.py:414:18
	v_lshl_or_b32 v2, v1, 4, s35
	v_or_b32_e32 v1, 0x300, v0
	v_or_b32_e32 v6, 0x700, v0
	v_or_b32_e32 v8, 0x3f0, v0
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v13, 28, v9
	v_or_b32_e32 v82, s35, v0
	.loc	1 461 28                        ; ragged.py:461:28
	v_lshrrev_b32_e32 v83, 4, v60
	v_lshrrev_b32_e32 v84, 6, v0
	.loc	1 409 20                        ; ragged.py:409:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s8, s28
	s_addc_u32 s1, s9, s29
	.loc	1 477 39                        ; ragged.py:477:39
	s_mul_i32 s13, s13, s33
	.loc	1 501 25                        ; ragged.py:501:25
	s_load_b32 s8, s[0:1], 0x0
	.loc	1 413 18                        ; ragged.py:413:18
	v_add_co_u32 v3, s0, s14, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s15, 0, s0
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v12, 4, v0
	v_mov_b32_e32 v78, 0
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s5, s[16:17], v[3:4]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s6, s[18:19], v[3:4]
	v_and_b32_e32 v3, 0x70, v7
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v7, 5, v0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v70, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v96, v87, v3
	v_lshlrev_b32_e32 v3, 2, v60
	v_and_b32_e32 v7, 32, v7
	v_or_b32_e32 v4, 0x7f0, v0
	.loc	1 494 25 is_stmt 1              ; ragged.py:494:25
	v_mul_lo_u32 v85, v62, s34
	v_mul_lo_u32 v86, v63, s34
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v9, s14, v5
	v_add3_u32 v3, 0, v3, v7
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v7, 1, v60
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[10:11], null, s13, s8, v[2:3]
	s_mov_b32 s13, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s0, s33, v2
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v98, 0, v1
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v99, 0, v6
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v100, 0, v8
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v101, 0, v4
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v103, v3, v13
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v104, 0, v7
	v_mov_b32_e32 v1, s12
	v_cmp_gt_i32_e64 s1, s33, v82
	.loc	1 461 28                        ; ragged.py:461:28
	v_or_b32_e32 v88, 16, v83
	v_or_b32_e32 v89, 4, v84
	v_or_b32_e32 v90, 8, v84
	v_or_b32_e32 v91, 12, v84
	v_or_b32_e32 v92, 16, v84
	v_or_b32_e32 v93, 20, v84
	v_or_b32_e32 v94, 24, v84
	v_or_b32_e32 v95, 28, v84
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v97, 0, v0
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v102, 0, v12
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v8, s19
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v3, s14
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v7, s18
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s5, s5, s6
	.loc	1 501 25                        ; ragged.py:501:25
	s_mul_i32 s6, s34, s8
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s29, s27, 0xffff
	s_mov_b32 s28, s26
	s_mov_b32 s36, s20
	s_mov_b32 s37, s21
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	s_mov_b32 s22, s30
	s_mov_b32 s23, s31
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 466 28                        ; ragged.py:466:28
	s_lshl_b32 s8, s12, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v11, s8, v84
	v_or_b32_e32 v105, s8, v89
	v_or_b32_e32 v107, s8, v90
	v_or_b32_e32 v108, s8, v91
	v_or_b32_e32 v110, s8, v93
	v_mad_u64_u32 v[11:12], null, v11, s7, v[9:10]
	v_or_b32_e32 v109, s8, v92
	v_mad_u64_u32 v[105:106], null, v105, s7, v[9:10]
	v_mad_u64_u32 v[106:107], null, v107, s7, v[9:10]
	v_mad_u64_u32 v[107:108], null, v108, s7, v[9:10]
	v_cndmask_b32_e64 v115, 0x80000000, v11, s5
	v_mad_u64_u32 v[11:12], null, v110, s7, v[9:10]
	v_or_b32_e32 v111, s8, v94
	v_mad_u64_u32 v[108:109], null, v109, s7, v[9:10]
	v_or_b32_e32 v112, s8, v95
	v_or_b32_e32 v113, s8, v83
	v_or_b32_e32 v114, s8, v88
	v_mad_u64_u32 v[109:110], null, v111, s7, v[9:10]
	v_cndmask_b32_e64 v12, 0x80000000, v105, s5
	v_cndmask_b32_e64 v110, 0x80000000, v106, s5
	v_mad_u64_u32 v[105:106], null, v112, s7, v[9:10]
	v_cndmask_b32_e64 v111, 0x80000000, v107, s5
	v_mad_u64_u32 v[106:107], null, v113, s33, v[10:11]
	v_cndmask_b32_e64 v112, 0x80000000, v108, s5
	v_mad_u64_u32 v[107:108], null, v114, s33, v[10:11]
	v_cndmask_b32_e64 v11, 0x80000000, v11, s5
	v_cndmask_b32_e64 v108, 0x80000000, v109, s5
	v_cndmask_b32_e64 v105, 0x80000000, v105, s5
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	.loc	1 501 25                        ; ragged.py:501:25
	s_add_i32 s8, s12, s6
	v_cndmask_b32_e64 v107, 0x80000000, v107, s0
	.loc	1 478 34                        ; ragged.py:478:34
	s_clause 0x7
	buffer_load_u8 v109, v115, s[36:39], 0 offen
	buffer_load_u8 v12, v12, s[36:39], 0 offen
	buffer_load_u8 v110, v110, s[36:39], 0 offen
	buffer_load_u8 v112, v112, s[36:39], 0 offen
	buffer_load_u8 v11, v11, s[36:39], 0 offen
	buffer_load_u8 v108, v108, s[36:39], 0 offen
	buffer_load_u8 v105, v105, s[36:39], 0 offen
	buffer_load_u8 v111, v111, s[36:39], 0 offen
	.loc	1 479 34                        ; ragged.py:479:34
	s_clause 0x1
	buffer_load_b128 v[225:228], v106, s[20:23], 0 offen
	buffer_load_b128 v[229:232], v107, s[20:23], 0 offen
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 501 25                        ; ragged.py:501:25
	s_mul_i32 s8, s8, s33
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt vmcnt(9)
	ds_store_b8 v97, v109
	s_waitcnt vmcnt(8)
	ds_store_b8 v97, v12 offset:256
	s_waitcnt vmcnt(7)
	ds_store_b8 v97, v110 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v97, v112 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b8 v97, v11 offset:1280
	s_waitcnt vmcnt(2)
	ds_store_b8 v98, v111
	ds_store_b8 v97, v108 offset:1536
	ds_store_b8 v99, v105
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 480 31                        ; ragged.py:480:31
	ds_load_u8 v11, v87 offset:192
	ds_load_u8 v12, v87 offset:128
	ds_load_u8 v116, v87 offset:208
	ds_load_u8 v117, v87 offset:144
	ds_load_u8 v109, v87 offset:224
	ds_load_u8 v110, v87 offset:160
	ds_load_u8 v105, v87 offset:240
	ds_load_u8 v106, v87 offset:176
	ds_load_u8 v233, v87 offset:448
	ds_load_u8 v234, v87 offset:384
	ds_load_u8 v155, v87 offset:464
	ds_load_u8 v156, v87 offset:400
	ds_load_u8 v125, v87 offset:480
	ds_load_u8 v127, v87 offset:416
	ds_load_u8 v107, v87 offset:496
	ds_load_u8 v108, v87 offset:432
	ds_load_u8 v235, v87 offset:320
	ds_load_u8 v236, v87 offset:256
	ds_load_u8 v161, v87 offset:336
	ds_load_u8 v162, v87 offset:272
	ds_load_u8 v130, v87 offset:352
	ds_load_u8 v131, v87 offset:288
	ds_load_u8 v111, v87 offset:368
	ds_load_u8 v112, v87 offset:304
	ds_load_u8 v237, v87 offset:64
	ds_load_u8 v163, v87 offset:80
	ds_load_u8 v132, v87 offset:96
	ds_load_u8 v113, v87 offset:112
	ds_load_u8 v238, v87
	ds_load_u8 v166, v87 offset:16
	ds_load_u8 v135, v87 offset:32
	ds_load_u8 v114, v87 offset:48
	ds_load_u8 v213, v87 offset:960
	ds_load_u8 v214, v87 offset:896
	ds_load_u8 v201, v87 offset:1024
	ds_load_u8 v167, v87 offset:976
	ds_load_u8 v168, v87 offset:912
	ds_load_u8 v136, v87 offset:992
	ds_load_u8 v137, v87 offset:928
	ds_load_u8 v115, v87 offset:944
	ds_load_u8 v217, v87 offset:832
	ds_load_u8 v218, v87 offset:768
	ds_load_u8 v173, v87 offset:848
	ds_load_u8 v174, v87 offset:784
	ds_load_u8 v142, v87 offset:864
	ds_load_u8 v143, v87 offset:800
	ds_load_u8 v118, v87 offset:880
	ds_load_u8 v119, v87 offset:816
	ds_load_u8 v220, v87 offset:704
	ds_load_u8 v222, v87 offset:640
	ds_load_u8 v175, v87 offset:720
	ds_load_u8 v176, v87 offset:656
	ds_load_u8 v145, v87 offset:736
	ds_load_u8 v147, v87 offset:672
	ds_load_u8 v120, v87 offset:752
	ds_load_u8 v121, v87 offset:688
	ds_load_u8 v223, v87 offset:576
	ds_load_u8 v224, v87 offset:512
	ds_load_u8 v181, v87 offset:592
	ds_load_u8 v182, v87 offset:528
	ds_load_u8 v150, v87 offset:608
	ds_load_u8 v152, v87 offset:544
	ds_load_u8 v123, v87 offset:624
	ds_load_u8 v126, v87 offset:560
	ds_load_u8 v205, v87 offset:1216
	ds_load_u8 v207, v87 offset:1280
	ds_load_u8 v183, v87 offset:1232
	ds_load_u8 v184, v87 offset:1168
	ds_load_u8 v153, v87 offset:1248
	ds_load_u8 v154, v87 offset:1184
	ds_load_u8 v122, v87 offset:1264
	ds_load_u8 v124, v87 offset:1200
	ds_load_u8 v209, v87 offset:1152
	ds_load_u8 v211, v87 offset:1088
	ds_load_u8 v187, v87 offset:1104
	ds_load_u8 v188, v87 offset:1040
	ds_load_u8 v159, v87 offset:1120
	ds_load_u8 v160, v87 offset:1056
	ds_load_u8 v128, v87 offset:1136
	ds_load_u8 v129, v87 offset:1072
	ds_load_u8 v216, v87 offset:1472
	ds_load_u8 v202, v87 offset:1536
	ds_load_u8 v189, v87 offset:1488
	ds_load_u8 v190, v87 offset:1424
	ds_load_u8 v164, v87 offset:1504
	ds_load_u8 v165, v87 offset:1440
	ds_load_u8 v133, v87 offset:1520
	ds_load_u8 v134, v87 offset:1456
	ds_load_u8 v219, v87 offset:1408
	ds_load_u8 v221, v87 offset:1344
	ds_load_u8 v191, v87 offset:1360
	ds_load_u8 v193, v87 offset:1296
	ds_load_u8 v169, v87 offset:1376
	ds_load_u8 v171, v87 offset:1312
	ds_load_u8 v139, v87 offset:1392
	ds_load_u8 v141, v87 offset:1328
	ds_load_u8 v203, v87 offset:1984
	ds_load_u8 v192, v87 offset:2000
	ds_load_u8 v194, v87 offset:1936
	ds_load_u8 v170, v87 offset:2016
	ds_load_u8 v172, v87 offset:1952
	ds_load_u8 v148, v100
	ds_load_u8 v138, v101
	ds_load_u8 v140, v87 offset:1968
	ds_load_u8 v204, v87 offset:1920
	ds_load_u8 v206, v87 offset:1856
	ds_load_u8 v195, v87 offset:1872
	ds_load_u8 v196, v87 offset:1808
	ds_load_u8 v177, v87 offset:1888
	ds_load_u8 v178, v87 offset:1824
	ds_load_u8 v144, v87 offset:1904
	ds_load_u8 v146, v87 offset:1840
	ds_load_u8 v208, v87 offset:1728
	ds_load_u8 v210, v87 offset:1792
	ds_load_u8 v197, v87 offset:1744
	ds_load_u8 v198, v87 offset:1680
	ds_load_u8 v179, v87 offset:1760
	ds_load_u8 v180, v87 offset:1696
	ds_load_u8 v149, v87 offset:1776
	ds_load_u8 v151, v87 offset:1712
	ds_load_u8 v212, v87 offset:1664
	ds_load_u8 v215, v87 offset:1600
	ds_load_u8 v199, v87 offset:1616
	ds_load_u8 v200, v87 offset:1552
	ds_load_u8 v185, v87 offset:1632
	ds_load_u8 v186, v87 offset:1568
	ds_load_u8 v157, v87 offset:1648
	ds_load_u8 v158, v87 offset:1584
	.loc	1 479 34                        ; ragged.py:479:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v102, v[225:228]
	s_waitcnt vmcnt(0)
	ds_store_b128 v102, v[229:232] offset:4096
	.loc	1 480 31                        ; ragged.py:480:31
	v_perm_b32 v225, v236, v235, 0xc0c0004
	v_perm_b32 v226, v234, v233, 0xc0c0004
	v_perm_b32 v227, v238, v237, 0xc0c0004
	v_perm_b32 v11, v12, v11, 0xc0c0004
	.loc	1 479 34                        ; ragged.py:479:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 480 31                        ; ragged.py:480:31
	v_lshl_or_b32 v12, v226, 16, v225
	v_perm_b32 v217, v218, v217, 0xc0c0004
	v_lshl_or_b32 v11, v11, 16, v227
	ds_load_u8 v225, v96 offset:1280
	ds_load_u8 v226, v96 offset:1024
	ds_load_u8 v227, v96 offset:1792
	ds_load_u8 v228, v96 offset:1536
	ds_load_u8 v229, v96 offset:1408
	ds_load_u8 v230, v96 offset:1152
	v_perm_b32 v213, v214, v213, 0xc0c0004
	v_perm_b32 v218, v224, v223, 0xc0c0004
	v_perm_b32 v220, v222, v220, 0xc0c0004
	v_perm_b32 v207, v207, v221, 0xc0c0004
	v_perm_b32 v216, v219, v216, 0xc0c0004
	v_lshl_or_b32 v214, v213, 16, v217
	v_perm_b32 v201, v201, v211, 0xc0c0004
	v_lshl_or_b32 v213, v220, 16, v218
	v_perm_b32 v205, v209, v205, 0xc0c0004
	v_perm_b32 v203, v204, v203, 0xc0c0004
	v_perm_b32 v202, v202, v215, 0xc0c0004
	v_perm_b32 v204, v212, v208, 0xc0c0004
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_lshl_or_b32 v219, v205, 16, v201
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v225, v226, v225, 0xc0c0004
	v_lshl_or_b32 v215, v204, 16, v202
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v226, v228, v227, 0xc0c0004
	ds_load_u8 v227, v96 offset:256
	ds_load_u8 v228, v96
	ds_load_u8 v231, v96 offset:768
	ds_load_u8 v232, v96 offset:512
	ds_load_u8 v233, v96 offset:384
	ds_load_u8 v234, v96 offset:128
	v_perm_b32 v156, v166, v163, 0xc0c0004
	v_perm_b32 v116, v117, v116, 0xc0c0004
	v_lshl_or_b32 v117, v155, 16, v161
	v_lshl_or_b32 v226, v226, 16, v225
	v_perm_b32 v155, v174, v173, 0xc0c0004
	v_perm_b32 v161, v182, v181, 0xc0c0004
	v_lshl_or_b32 v116, v116, 16, v156
	v_perm_b32 v156, v168, v167, 0xc0c0004
	v_perm_b32 v162, v176, v175, 0xc0c0004
	v_perm_b32 v163, v188, v187, 0xc0c0004
	v_perm_b32 v166, v184, v183, 0xc0c0004
	v_perm_b32 v168, v200, v199, 0xc0c0004
	v_lshl_or_b32 v156, v156, 16, v155
	v_lshl_or_b32 v155, v162, 16, v161
	v_perm_b32 v161, v193, v191, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v227, v228, v227, 0xc0c0004
	v_perm_b32 v162, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v228, v232, v231, 0xc0c0004
	ds_load_u8 v217, v96 offset:3328
	ds_load_u8 v218, v96 offset:3072
	ds_load_u8 v220, v96 offset:3840
	ds_load_u8 v222, v96 offset:3584
	ds_load_u8 v231, v96 offset:3456
	ds_load_u8 v232, v96 offset:3200
	v_perm_b32 v173, v198, v197, 0xc0c0004
	v_perm_b32 v130, v131, v130, 0xc0c0004
	v_lshl_or_b32 v162, v162, 16, v161
	v_lshl_or_b32 v225, v228, 16, v227
	v_lshl_or_b32 v161, v166, 16, v163
	v_perm_b32 v166, v194, v192, 0xc0c0004
	v_perm_b32 v163, v196, v195, 0xc0c0004
	v_perm_b32 v125, v127, v125, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[187:194], v[225:226], v[116:117], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v127, v135, v132, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v167, v166, 16, v163
	v_lshl_or_b32 v166, v173, 16, v168
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_lshl_or_b32 v110, v125, 16, v130
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	v_perm_b32 v125, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v218, v222, v220, 0xc0c0004
	ds_load_u8 v220, v96 offset:2304
	ds_load_u8 v222, v96 offset:2048
	ds_load_u8 v223, v96 offset:2816
	ds_load_u8 v224, v96 offset:2560
	ds_load_u8 v235, v96 offset:2432
	ds_load_u8 v236, v96 offset:2176
	v_lshl_or_b32 v109, v109, 16, v127
	v_perm_b32 v127, v137, v136, 0xc0c0004
	v_perm_b32 v130, v152, v150, 0xc0c0004
	v_lshl_or_b32 v218, v218, 16, v217
	v_perm_b32 v132, v147, v145, 0xc0c0004
	v_perm_b32 v135, v154, v153, 0xc0c0004
	v_lshl_or_b32 v131, v127, 16, v125
	v_perm_b32 v125, v171, v169, 0xc0c0004
	v_perm_b32 v127, v165, v164, 0xc0c0004
	v_lshl_or_b32 v130, v132, 16, v130
	v_perm_b32 v132, v160, v159, 0xc0c0004
	v_perm_b32 v137, v180, v179, 0xc0c0004
	v_perm_b32 v111, v112, v111, 0xc0c0004
	v_lshl_or_b32 v136, v127, 16, v125
	v_perm_b32 v127, v172, v170, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v220, v222, v220, 0xc0c0004
	v_lshl_or_b32 v135, v135, 16, v132
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v222, v224, v223, 0xc0c0004
	v_perm_b32 v125, v178, v177, 0xc0c0004
	v_perm_b32 v132, v186, v185, 0xc0c0004
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_perm_b32 v108, v114, v113, 0xc0c0004
	v_lshl_or_b32 v217, v222, 16, v220
	v_lshl_or_b32 v220, v216, 16, v207
	ds_load_u8 v201, v96 offset:5376
	ds_load_u8 v205, v96 offset:5120
	ds_load_u8 v207, v96 offset:5888
	ds_load_u8 v209, v96 offset:5632
	ds_load_u8 v211, v96 offset:5504
	ds_load_u8 v237, v96 offset:5248
	v_lshl_or_b32 v143, v127, 16, v125
	v_lshl_or_b32 v142, v137, 16, v132
	v_wmma_i32_16x16x16_iu4 v[187:194], v[217:218], v[155:156], v[187:194] neg_lo:[1,1,0]
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_lshl_or_b32 v106, v107, 16, v111
	v_perm_b32 v107, v126, v123, 0xc0c0004
	v_perm_b32 v111, v119, v118, 0xc0c0004
	v_perm_b32 v112, v115, v148, 0xc0c0004
	v_lshl_or_b32 v105, v105, 16, v108
	v_perm_b32 v108, v121, v120, 0xc0c0004
	v_perm_b32 v113, v129, v128, 0xc0c0004
	v_perm_b32 v114, v124, v122, 0xc0c0004
	v_perm_b32 v115, v146, v144, 0xc0c0004
	v_perm_b32 v118, v140, v138, 0xc0c0004
	v_lshl_or_b32 v107, v108, 16, v107
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v201, v205, v201, 0xc0c0004
	v_lshl_or_b32 v108, v112, 16, v111
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v205, v209, v207, 0xc0c0004
	ds_load_u8 v207, v96 offset:4352
	ds_load_u8 v209, v96 offset:4096
	ds_load_u8 v216, v96 offset:4864
	ds_load_u8 v221, v96 offset:4608
	ds_load_u8 v238, v96 offset:4480
	ds_load_u8 v239, v96 offset:4224
	v_perm_b32 v111, v141, v139, 0xc0c0004
	v_perm_b32 v112, v134, v133, 0xc0c0004
	v_lshl_or_b32 v222, v205, 16, v201
	v_perm_b32 v201, v210, v206, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v112, v112, 16, v111
	v_lshl_or_b32 v111, v114, 16, v113
	v_perm_b32 v113, v158, v157, 0xc0c0004
	v_perm_b32 v114, v151, v149, 0xc0c0004
	v_lshl_or_b32 v113, v114, 16, v113
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v207, v209, v207, 0xc0c0004
	v_lshl_or_b32 v114, v118, 16, v115
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v209, v221, v216, 0xc0c0004
	v_lshl_or_b32 v216, v203, 16, v201
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v221, v209, 16, v207
	ds_load_u8 v201, v96 offset:7424
	ds_load_u8 v202, v96 offset:7168
	ds_load_u8 v203, v96 offset:7936
	ds_load_u8 v204, v96 offset:7680
	ds_load_u8 v209, v96 offset:7552
	ds_load_u8 v210, v96 offset:7296
	v_wmma_i32_16x16x16_iu4 v[187:194], v[221:222], v[161:162], v[187:194] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v201, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v202, v204, v203, 0xc0c0004
	ds_load_u8 v203, v96 offset:6400
	ds_load_u8 v204, v96 offset:6144
	ds_load_u8 v205, v96 offset:6912
	ds_load_u8 v206, v96 offset:6656
	ds_load_u8 v212, v96 offset:6528
	ds_load_u8 v240, v96 offset:6272
	v_lshl_or_b32 v224, v202, 16, v201
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v203, v204, v203, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v204, v206, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v223, v204, 16, v203
	v_wmma_i32_16x16x16_iu4 v[201:208], v[225:226], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[187:194], v[223:224], v[166:167], v[187:194] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[201:208], v[217:218], v[213:214], v[201:208] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v175, v187
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[201:208], v[221:222], v[219:220], v[201:208] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v176, v188
	v_cvt_f32_i32_e32 v181, v189
	v_cvt_f32_i32_e32 v182, v190
	v_cvt_f32_i32_e32 v183, v191
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[201:208], v[223:224], v[215:216], v[201:208] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v184, v192
	v_cvt_f32_i32_e32 v195, v193
	v_cvt_f32_i32_e32 v196, v194
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v242, v202
	v_cvt_f32_i32_e32 v243, v203
	v_cvt_f32_i32_e32 v244, v204
	v_cvt_f32_i32_e32 v245, v205
	.loc	1 480 31                        ; ragged.py:480:31
	ds_load_u8 v202, v96 offset:1664
	ds_load_u8 v203, v96 offset:1920
	ds_load_u8 v204, v96 offset:640
	ds_load_u8 v205, v96 offset:896
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v241, v201
	.loc	1 480 31                        ; ragged.py:480:31
	v_perm_b32 v201, v230, v229, 0xc0c0004
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v246, v206
	v_cvt_f32_i32_e32 v247, v207
	v_cvt_f32_i32_e32 v248, v208
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v202, v202, v203, 0xc0c0004
	v_perm_b32 v203, v234, v233, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v204, v204, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v228, v202, 16, v201
	v_perm_b32 v201, v232, v231, 0xc0c0004
	v_lshl_or_b32 v227, v204, 16, v203
	ds_load_u8 v202, v96 offset:3712
	ds_load_u8 v203, v96 offset:3968
	ds_load_u8 v204, v96 offset:2688
	ds_load_u8 v205, v96 offset:2944
	v_wmma_i32_16x16x16_iu4 v[187:194], v[227:228], v[116:117], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v202, v202, v203, 0xc0c0004
	v_perm_b32 v203, v236, v235, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v204, v204, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v230, v202, 16, v201
	v_perm_b32 v201, v237, v211, 0xc0c0004
	v_lshl_or_b32 v229, v204, 16, v203
	ds_load_u8 v202, v96 offset:5760
	ds_load_u8 v203, v96 offset:6016
	ds_load_u8 v204, v96 offset:4736
	ds_load_u8 v205, v96 offset:4992
	v_wmma_i32_16x16x16_iu4 v[187:194], v[229:230], v[155:156], v[187:194] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v202, v202, v203, 0xc0c0004
	v_perm_b32 v203, v239, v238, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v204, v204, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v232, v202, 16, v201
	v_perm_b32 v201, v210, v209, 0xc0c0004
	v_lshl_or_b32 v231, v204, 16, v203
	ds_load_u8 v202, v96 offset:7808
	ds_load_u8 v203, v96 offset:8064
	ds_load_u8 v204, v96 offset:6784
	ds_load_u8 v205, v96 offset:7040
	v_wmma_i32_16x16x16_iu4 v[187:194], v[231:232], v[161:162], v[187:194] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v202, v202, v203, 0xc0c0004
	v_perm_b32 v203, v240, v212, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v204, v204, v205, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v234, v202, 16, v201
	v_lshl_or_b32 v233, v204, 16, v203
	v_wmma_i32_16x16x16_iu4 v[204:211], v[227:228], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[187:194], v[233:234], v[166:167], v[187:194] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[225:226], v[109:110], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[204:211], v[229:230], v[213:214], v[204:211] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v117, v192
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[167:174], v[217:218], v[130:131], v[167:174] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v156, v194
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[204:211], v[231:232], v[219:220], v[204:211] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v166, v187
	v_cvt_f32_i32_e32 v163, v188
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[167:174], v[221:222], v[135:136], v[167:174] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v162, v189
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[204:211], v[233:234], v[215:216], v[204:211] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v161, v190
	v_cvt_f32_i32_e32 v116, v191
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[167:174], v[223:224], v[142:143], v[167:174] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v155, v193
	v_cvt_f32_i32_e32 v12, v209
	v_cvt_f32_i32_e32 v202, v211
	v_cvt_f32_i32_e32 v11, v208
	v_cvt_f32_i32_e32 v137, v167
	v_cvt_f32_i32_e32 v145, v168
	v_cvt_f32_i32_e32 v147, v169
	v_cvt_f32_i32_e32 v150, v170
	v_cvt_f32_i32_e32 v152, v171
	v_cvt_f32_i32_e32 v153, v172
	v_cvt_f32_i32_e32 v154, v173
	v_cvt_f32_i32_e32 v159, v174
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[167:174], v[227:228], v[109:110], v[1:8] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v212, v204
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v204, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[167:174], v[229:230], v[130:131], v[167:174] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v203, v207
	v_cvt_f32_i32_e32 v201, v210
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[167:174], v[231:232], v[135:136], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[225:226], v[105:106], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[167:174], v[233:234], v[142:143], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[217:218], v[107:108], v[128:135] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v110, v172
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[128:135], v[221:222], v[111:112], v[128:135] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v127, v174
	v_cvt_f32_i32_e32 v109, v171
	v_cvt_f32_i32_e32 v136, v167
	v_cvt_f32_i32_e32 v142, v168
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[128:135], v[223:224], v[113:114], v[128:135] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v143, v169
	v_cvt_f32_i32_e32 v160, v170
	v_cvt_f32_i32_e32 v125, v173
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v115, v128
	v_cvt_f32_i32_e32 v118, v129
	v_cvt_f32_i32_e32 v119, v130
	v_cvt_f32_i32_e32 v120, v131
	v_cvt_f32_i32_e32 v121, v132
	v_cvt_f32_i32_e32 v122, v133
	v_cvt_f32_i32_e32 v123, v134
	v_cvt_f32_i32_e32 v124, v135
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[128:135], v[227:228], v[105:106], v[1:8] neg_lo:[1,1,0]
	.loc	1 493 40                        ; ragged.py:493:40
	v_add_lshl_u32 v105, s12, v85, 1
	v_add_lshl_u32 v106, s12, v86, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[128:135], v[229:230], v[107:108], v[128:135] neg_lo:[1,1,0]
	.loc	1 494 25                        ; ragged.py:494:25
	v_mul_lo_u32 v107, v58, s34
	v_mul_lo_u32 v108, v61, s34
	.loc	1 493 40                        ; ragged.py:493:40
	v_cndmask_b32_e64 v105, 0x80000000, v105, s2
	v_cndmask_b32_e32 v106, 0x80000000, v106, vcc_lo
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[128:135], v[231:232], v[111:112], v[128:135] neg_lo:[1,1,0]
	.loc	1 500 40                        ; ragged.py:500:40
	v_add_lshl_u32 v111, v82, s8, 1
	.loc	1 493 40                        ; ragged.py:493:40
	v_add_lshl_u32 v107, s12, v107, 1
	v_add_lshl_u32 v108, s12, v108, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[128:135], v[233:234], v[113:114], v[128:135] neg_lo:[1,1,0]
	.loc	1 500 40                        ; ragged.py:500:40
	v_cndmask_b32_e64 v111, 0x80000000, v111, s1
	.loc	1 507 17                        ; ragged.py:507:17
	s_add_i32 s12, s12, 1
	.loc	1 493 40                        ; ragged.py:493:40
	v_cndmask_b32_e64 v107, 0x80000000, v107, s4
	v_cndmask_b32_e64 v108, 0x80000000, v108, s3
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v126, v128
	v_cvt_f32_i32_e32 v128, v129
	v_cvt_f32_i32_e32 v129, v130
	v_cvt_f32_i32_e32 v130, v131
	v_cvt_f32_i32_e32 v131, v132
	v_cvt_f32_i32_e32 v132, v133
	v_cvt_f32_i32_e32 v133, v134
	v_cvt_f32_i32_e32 v134, v135
	.loc	1 500 40                        ; ragged.py:500:40
	buffer_load_u16 v111, v111, s[28:31], 0 offen
	.loc	1 493 40                        ; ragged.py:493:40
	s_clause 0x3
	buffer_load_u16 v107, v107, s[24:27], 0 offen
	buffer_load_u16 v135, v108, s[24:27], 0 offen
	buffer_load_u16 v138, v105, s[24:27], 0 offen
	buffer_load_u16 v139, v106, s[24:27], 0 offen
	.loc	1 505 21                        ; ragged.py:505:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 464 19                        ; ragged.py:464:19
	s_cmp_lg_u32 s12, s34
	.loc	1 500 40                        ; ragged.py:500:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v105, 16, v111
	.loc	1 493 40                        ; ragged.py:493:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v140, 16, v107
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v138, 16, v138
	.loc	1 505 21                        ; ragged.py:505:21
	ds_store_b32 v103, v105
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v104
	ds_load_b128 v[111:114], v104 offset:16
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v141, v241, v140
	v_mul_f32_e32 v137, v137, v138
	v_dual_mul_f32 v110, v110, v138 :: v_dual_lshlrev_b32 v135, 16, v135
	v_mul_f32_e32 v109, v109, v138
	.loc	1 506 17                        ; ragged.py:506:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v56, v141, v105 :: v_dual_mul_f32 v141, v242, v140
	v_fmac_f32_e32 v44, v137, v105
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v137, v145, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v81, v141, v106
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v141, v243, v140
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v43, v137, v106
	.loc	1 498 21                        ; ragged.py:498:21
	v_dual_mul_f32 v137, v147, v138 :: v_dual_mul_f32 v12, v12, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v11, v11, v140 :: v_dual_fmac_f32 v80, v141, v107
	v_dual_mul_f32 v141, v244, v140 :: v_dual_fmac_f32 v42, v137, v107
	v_mul_f32_e32 v137, v150, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v41, v137, v108
	.loc	1 493 40                        ; ragged.py:493:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v137, 16, v139
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v115, v115, v137
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v79, v141, v108
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v141, v175, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v28, v115, v105 :: v_dual_mul_f32 v115, v212, v140
	v_fmac_f32_e32 v66, v141, v105
	.loc	1 498 21                        ; ragged.py:498:21
	v_dual_mul_f32 v105, v118, v137 :: v_dual_mul_f32 v118, v127, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v27, v105, v106
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v119, v137
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v26, v105, v107 :: v_dual_mul_f32 v105, v120, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, v105, v108
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v245, v140
	.loc	1 506 17                        ; ragged.py:506:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v78, v105, v111 :: v_dual_mul_f32 v105, v246, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v105, v112
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v247, v140
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v76, v105, v113 :: v_dual_mul_f32 v105, v248, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v105, v114
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v183, v135
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v57, v105, v111
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v184, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v55, v105, v112
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v195, v135
	v_dual_mul_f32 v141, v176, v135 :: v_dual_fmac_f32 v54, v105, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v65, v141, v106
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v141, v181, v135
	v_mul_f32_e32 v105, v196, v135
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v64, v141, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v105, v114
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v152, v138
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v40, v105, v111
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v153, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v39, v105, v112
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v154, v138
	v_dual_mul_f32 v141, v182, v135 :: v_dual_fmac_f32 v38, v105, v113
	v_mul_f32_e32 v105, v159, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v59, v141, v108
	v_fmac_f32_e32 v37, v105, v114
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v121, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v24, v105, v111 :: v_dual_mul_f32 v105, v122, v137
	v_fmac_f32_e32 v23, v105, v112
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v123, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v22, v105, v113
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v124, v137
	v_mul_f32_e32 v119, v131, v137
	v_mul_f32_e32 v120, v132, v137
	v_mul_f32_e32 v121, v133, v137
	v_dual_mul_f32 v122, v134, v137 :: v_dual_fmac_f32 v21, v105, v114
	.loc	1 505 21                        ; ragged.py:505:21
	ds_load_b128 v[105:108], v104 offset:512
	ds_load_b128 v[111:114], v104 offset:528
	.loc	1 506 17                        ; ragged.py:506:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v74, v115, v105 :: v_dual_mul_f32 v115, v205, v140
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v70, v11, v111 :: v_dual_fmac_f32 v69, v12, v112
	v_dual_fmac_f32 v32, v109, v111 :: v_dual_fmac_f32 v31, v110, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v115, v106
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v115, v204, v140
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v29, v118, v114 :: v_dual_fmac_f32 v16, v119, v111
	v_dual_fmac_f32 v15, v120, v112 :: v_dual_fmac_f32 v14, v121, v113
	v_fmac_f32_e32 v72, v115, v107
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v115, v203, v140
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v13, v122, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v115, v108
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v115, v166, v135
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v52, v115, v105
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v115, v163, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v51, v115, v106
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v115, v162, v135
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v50, v115, v107
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v115, v161, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v49, v115, v108
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v115, v136, v138
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v36, v115, v105 :: v_dual_mul_f32 v115, v142, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v115, v106
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v115, v143, v138
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v34, v115, v107 :: v_dual_mul_f32 v115, v160, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v115, v108
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v115, v126, v137
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v20, v115, v105
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v128, v137
	v_mul_f32_e32 v115, v155, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v19, v105, v106
	.loc	1 498 21                        ; ragged.py:498:21
	v_dual_mul_f32 v105, v129, v137 :: v_dual_mul_f32 v106, v202, v140
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v46, v115, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v18, v105, v107 :: v_dual_mul_f32 v105, v130, v137
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v107, v116, v135
	v_dual_mul_f32 v116, v156, v135 :: v_dual_fmac_f32 v67, v106, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v17, v105, v108
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v105, v201, v140
	v_mul_f32_e32 v108, v117, v135
	v_dual_mul_f32 v117, v125, v138 :: v_dual_fmac_f32 v48, v107, v111
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v45, v116, v114 :: v_dual_fmac_f32 v68, v105, v113
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v47, v108, v112 :: v_dual_fmac_f32 v30, v117, v113
	.loc	1 464 19                        ; ragged.py:464:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 509 9                         ; ragged.py:509:9
	v_bfe_u32 v7, v56, 16, 1
	v_bfe_u32 v8, v81, 16, 1
	v_cmp_o_f32_e64 s5, v56, v56
	v_cmp_o_f32_e64 s6, v81, v81
	v_bfe_u32 v9, v80, 16, 1
	v_add3_u32 v7, v56, v7, 0x7fff
	v_add3_u32 v8, v81, v8, 0x7fff
	v_bfe_u32 v10, v79, 16, 1
	v_cmp_o_f32_e64 s7, v80, v80
	v_add3_u32 v9, v80, v9, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v78, 16, 1
	v_bfe_u32 v11, v77, 16, 1
	v_add3_u32 v10, v79, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v79, v79
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s7
	v_add3_u32 v8, v78, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v78, v78
	v_add3_u32 v11, v77, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v77, v77
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s5
	v_bfe_u32 v10, v76, 16, 1
	v_bfe_u32 v12, v75, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s7
	v_bfe_u32 v11, v74, 16, 1
	v_add3_u32 v10, v76, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v76, v76
	v_add3_u32 v12, v75, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v75, v75
	v_bfe_u32 v56, v73, 16, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v6, v58, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_add3_u32 v11, v74, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v74, v74
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s6
	v_bfe_u32 v12, v72, 16, 1
	v_bfe_u32 v58, v71, 16, 1
	v_add3_u32 v56, v73, v56, 0x7fff
	v_cmp_o_f32_e64 s5, v73, v73
	.loc	1 414 36                        ; ragged.py:414:36
	v_lshrrev_b32_e32 v2, 1, v60
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s7
	v_add3_u32 v12, v72, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v72, v72
	v_add3_u32 v58, v71, v58, 0x7fff
	v_cmp_o_f32_e64 s7, v71, v71
	v_cndmask_b16 v11.h, 0x7fff, v56.h, s5
	v_bfe_u32 v56, v70, 16, 1
	v_bfe_u32 v60, v69, 16, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v5, v61, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_cndmask_b16 v12.h, 0x7fff, v58.h, s7
	v_bfe_u32 v58, v68, 16, 1
	v_add3_u32 v56, v70, v56, 0x7fff
	v_cmp_o_f32_e64 s5, v70, v70
	v_add3_u32 v60, v69, v60, 0x7fff
	v_cmp_o_f32_e64 s6, v69, v69
	v_bfe_u32 v61, v67, 16, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v4, v62, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_add3_u32 v58, v68, v58, 0x7fff
	v_cmp_o_f32_e64 s7, v68, v68
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s5
	v_cndmask_b16 v56.h, 0x7fff, v60.h, s6
	v_bfe_u32 v60, v66, 16, 1
	v_bfe_u32 v62, v65, 16, 1
	v_add3_u32 v61, v67, v61, 0x7fff
	v_cmp_o_f32_e64 s5, v67, v67
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s7
	v_add3_u32 v60, v66, v60, 0x7fff
	v_cmp_o_f32_e64 s6, v66, v66
	v_add3_u32 v62, v65, v62, 0x7fff
	v_cmp_o_f32_e64 s7, v65, v65
	v_cndmask_b16 v58.h, 0x7fff, v61.h, s5
	v_bfe_u32 v61, v64, 16, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v1, v63, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_bfe_u32 v63, v59, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s6
	v_cndmask_b16 v60.h, 0x7fff, v62.h, s7
	v_bfe_u32 v62, v57, 16, 1
	v_add3_u32 v61, v64, v61, 0x7fff
	v_cmp_o_f32_e64 s5, v64, v64
	v_add3_u32 v63, v59, v63, 0x7fff
	v_cmp_o_f32_e64 s6, v59, v59
	v_add3_u32 v59, v57, v62, 0x7fff
	v_cmp_o_f32_e64 s7, v57, v57
	v_cndmask_b16 v57.l, 0x7fff, v61.h, s5
	v_bfe_u32 v61, v55, 16, 1
	v_bfe_u32 v62, v54, 16, 1
	v_cndmask_b16 v57.h, 0x7fff, v63.h, s6
	v_bfe_u32 v63, v53, 16, 1
	v_cmp_o_f32_e64 s5, v55, v55
	v_add3_u32 v61, v55, v61, 0x7fff
	v_add3_u32 v55, v54, v62, 0x7fff
	v_cmp_o_f32_e64 s6, v54, v54
	v_add3_u32 v54, v53, v63, 0x7fff
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s7
	v_cmp_o_f32_e64 s7, v53, v53
	v_bfe_u32 v53, v52, 16, 1
	v_cndmask_b16 v54.l, 0x7fff, v55.h, s6
	v_bfe_u32 v55, v51, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v61.h, s5
	v_bfe_u32 v61, v50, 16, 1
	v_add3_u32 v53, v52, v53, 0x7fff
	v_cmp_o_f32_e64 s5, v52, v52
	v_add3_u32 v52, v51, v55, 0x7fff
	v_cmp_o_f32_e64 s6, v51, v51
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s7
	v_add3_u32 v51, v50, v61, 0x7fff
	v_cmp_o_f32_e64 s7, v50, v50
	v_cndmask_b16 v50.l, 0x7fff, v53.h, s5
	v_bfe_u32 v53, v49, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s6
	v_bfe_u32 v52, v48, 16, 1
	v_bfe_u32 v55, v47, 16, 1
	v_cmp_o_f32_e64 s5, v49, v49
	v_add3_u32 v53, v49, v53, 0x7fff
	v_cmp_o_f32_e64 s6, v48, v48
	v_add3_u32 v49, v48, v52, 0x7fff
	v_add3_u32 v48, v47, v55, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s7
	v_cmp_o_f32_e64 s7, v47, v47
	v_bfe_u32 v47, v46, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s6
	v_bfe_u32 v49, v45, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s5
	v_bfe_u32 v52, v44, 16, 1
	v_add3_u32 v47, v46, v47, 0x7fff
	v_cmp_o_f32_e64 s5, v46, v46
	v_add3_u32 v46, v45, v49, 0x7fff
	v_cmp_o_f32_e64 s6, v45, v45
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s7
	v_add3_u32 v45, v44, v52, 0x7fff
	v_cmp_o_f32_e64 s7, v44, v44
	v_cndmask_b16 v44.l, 0x7fff, v47.h, s5
	v_bfe_u32 v47, v43, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s6
	v_bfe_u32 v46, v42, 16, 1
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e64 s5, v43, v43
	v_add3_u32 v47, v43, v47, 0x7fff
	v_cmp_o_f32_e64 s6, v42, v42
	v_add3_u32 v43, v42, v46, 0x7fff
	v_add3_u32 v42, v41, v49, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s7
	v_cmp_o_f32_e64 s7, v41, v41
	v_bfe_u32 v41, v40, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v43.h, s6
	v_bfe_u32 v43, v39, 16, 1
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s5
	v_bfe_u32 v46, v38, 16, 1
	v_add3_u32 v41, v40, v41, 0x7fff
	v_cmp_o_f32_e64 s5, v40, v40
	v_add3_u32 v40, v39, v43, 0x7fff
	v_cmp_o_f32_e64 s6, v39, v39
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s7
	v_add3_u32 v39, v38, v46, 0x7fff
	v_cmp_o_f32_e64 s7, v38, v38
	v_cndmask_b16 v38.l, 0x7fff, v41.h, s5
	v_bfe_u32 v41, v37, 16, 1
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s6
	v_bfe_u32 v40, v36, 16, 1
	v_bfe_u32 v43, v35, 16, 1
	v_cmp_o_f32_e64 s5, v37, v37
	v_add3_u32 v41, v37, v41, 0x7fff
	v_cmp_o_f32_e64 s6, v36, v36
	v_add3_u32 v37, v36, v40, 0x7fff
	v_add3_u32 v36, v35, v43, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s7
	v_cmp_o_f32_e64 s7, v35, v35
	v_bfe_u32 v35, v34, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s6
	v_bfe_u32 v37, v33, 16, 1
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s5
	v_bfe_u32 v40, v32, 16, 1
	v_add3_u32 v35, v34, v35, 0x7fff
	v_cmp_o_f32_e64 s5, v34, v34
	v_add3_u32 v34, v33, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v33, v33
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s7
	v_add3_u32 v33, v32, v40, 0x7fff
	v_cmp_o_f32_e64 s7, v32, v32
	v_cndmask_b16 v32.l, 0x7fff, v35.h, s5
	v_bfe_u32 v35, v31, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s6
	v_bfe_u32 v34, v30, 16, 1
	v_bfe_u32 v37, v29, 16, 1
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v35, v31, v35, 0x7fff
	v_cmp_o_f32_e64 s6, v30, v30
	v_add3_u32 v31, v30, v34, 0x7fff
	v_add3_u32 v30, v29, v37, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s7
	v_cmp_o_f32_e64 s7, v29, v29
	v_bfe_u32 v29, v28, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v31.h, s6
	v_bfe_u32 v31, v27, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s5
	v_bfe_u32 v34, v26, 16, 1
	v_add3_u32 v29, v28, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v28, v27, v31, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s7
	v_add3_u32 v27, v26, v34, 0x7fff
	v_cmp_o_f32_e64 s7, v26, v26
	v_cndmask_b16 v26.l, 0x7fff, v29.h, s5
	v_bfe_u32 v29, v25, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s6
	v_bfe_u32 v28, v24, 16, 1
	v_bfe_u32 v31, v23, 16, 1
	v_cmp_o_f32_e64 s5, v25, v25
	v_add3_u32 v29, v25, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_add3_u32 v25, v24, v28, 0x7fff
	v_add3_u32 v24, v23, v31, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s7
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v22, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s6
	v_bfe_u32 v25, v21, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s5
	v_bfe_u32 v28, v20, 16, 1
	v_add3_u32 v23, v22, v23, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v22, v21, v25, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s7
	v_add3_u32 v21, v20, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v20.l, 0x7fff, v23.h, s5
	v_bfe_u32 v23, v19, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s6
	v_bfe_u32 v22, v18, 16, 1
	v_bfe_u32 v25, v17, 16, 1
	v_cmp_o_f32_e64 s5, v19, v19
	v_add3_u32 v23, v19, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v18, v18
	v_add3_u32 v19, v18, v22, 0x7fff
	v_add3_u32 v18, v17, v25, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s7
	v_cmp_o_f32_e64 s7, v17, v17
	v_bfe_u32 v17, v16, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s6
	v_bfe_u32 v19, v15, 16, 1
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s5
	v_bfe_u32 v22, v14, 16, 1
	v_add3_u32 v17, v16, v17, 0x7fff
	v_cmp_o_f32_e64 s5, v16, v16
	v_add3_u32 v16, v15, v19, 0x7fff
	v_bfe_u32 v19, v13, 16, 1
	v_cmp_o_f32_e64 s6, v15, v15
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s7
	v_add3_u32 v15, v14, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v14, v14
	v_add3_u32 v14, v13, v19, 0x7fff
	v_cmp_o_f32_e64 s8, v13, v13
	v_cndmask_b16 v13.l, 0x7fff, v17.h, s5
	v_cmp_eq_u32_e64 s5, 0, v0
	v_cndmask_b16 v13.h, 0x7fff, v16.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v15.h, s7
	v_cndmask_b16 v0.h, 0x7fff, v14.h, s8
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v14, v8, v7, s5
	v_cndmask_b32_e64 v7, v7, v8, s5
	v_cndmask_b32_e64 v31, v38, v45, s5
	v_cndmask_b32_e64 v34, v45, v38, s5
	v_cndmask_b32_e64 v38, v33, v36, s5
	v_cndmask_b32_e64 v33, v36, v33, s5
	v_cndmask_b32_e64 v36, v30, v32, s5
	v_cndmask_b32_e64 v30, v32, v30, s5
	v_cndmask_b32_e64 v32, v24, v26, s5
	v_cndmask_b32_e64 v24, v26, v24, s5
	v_cndmask_b32_e64 v40, v13, v21, s5
	v_cndmask_b32_e64 v13, v21, v13, s5
	v_mov_b32_e32 v21, 0x5410
	v_mov_b32_e32 v26, 0x7632
	v_cndmask_b32_e64 v8, v9, v10, s5
	v_cndmask_b32_e64 v41, v0, v18, s5
	v_cndmask_b32_e64 v0, v18, v0, s5
	v_permlanex16_b32 v18, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x1054, v21, s5
	v_cndmask_b32_e64 v21, 0x3276, v26, s5
	v_permlanex16_b32 v26, v8, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v15, v10, v9, s5
	v_cndmask_b32_e64 v16, v56, v11, s5
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v21, 8, v21
	v_cndmask_b32_e64 v9, v11, v56, s5
	v_cndmask_b32_e64 v17, v58, v12, s5
	v_cndmask_b32_e64 v10, v12, v58, s5
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_cndmask_b32_e64 v11, v60, v59, s5
	v_cndmask_b32_e64 v12, v57, v54, s5
	v_cndmask_b32_e64 v29, v51, v44, s5
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v2, s35, v2
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v19, v59, v60, s5
	v_cndmask_b32_e64 v22, v54, v57, s5
	v_cndmask_b32_e64 v25, v50, v48, s5
	v_cndmask_b32_e64 v28, v44, v51, s5
	v_cndmask_b32_e64 v35, v39, v42, s5
	v_cndmask_b32_e64 v37, v42, v39, s5
	v_cndmask_b32_e64 v39, v20, v27, s5
	v_cndmask_b32_e64 v20, v27, v20, s5
	v_permlanex16_b32 v27, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v12, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s6, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v45, 0x5040504, v7
	v_and_b32_e32 v46, 0x7060706, v8
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v3, 0x80, v2
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v23, v48, v50, s5
	v_permlanex16_b32 v25, v25, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v37, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v13, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v18, v14, v45
	v_perm_b32 v8, v18, v14, v46
	v_perm_b32 v9, v26, v15, v45
	v_perm_b32 v10, v26, v15, v46
	v_perm_b32 v11, v27, v16, v45
	v_perm_b32 v12, v27, v16, v46
	v_perm_b32 v13, v42, v17, v45
	v_perm_b32 v14, v42, v17, v46
	v_perm_b32 v15, v21, v19, v45
	v_perm_b32 v16, v21, v19, v46
	v_perm_b32 v17, v43, v22, v45
	v_perm_b32 v18, v43, v22, v46
	v_perm_b32 v21, v29, v28, v45
	v_perm_b32 v22, v29, v28, v46
	v_perm_b32 v27, v33, v38, v45
	v_perm_b32 v28, v33, v38, v46
	v_add_lshl_u32 v38, v2, v6, 1
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s0, s33, v3
	.loc	1 509 9                         ; ragged.py:509:9
	v_permlanex16_b32 v34, v34, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v20, s6, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v6, v3, v6, 1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s5, s1, s4
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v19, v25, v23, v45
	v_perm_b32 v20, v25, v23, v46
	v_perm_b32 v25, v37, v35, v45
	v_perm_b32 v26, v37, v35, v46
	v_perm_b32 v29, v30, v36, v45
	v_perm_b32 v30, v30, v36, v46
	v_perm_b32 v35, v48, v40, v45
	v_perm_b32 v36, v48, v40, v46
	v_perm_b32 v37, v0, v41, v45
	v_cndmask_b32_e64 v40, 0x80000000, v38, s5
	v_perm_b32 v38, v0, v41, v46
	v_add_lshl_u32 v0, v3, v5, 1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s4, s0, s4
	.loc	1 509 9                         ; ragged.py:509:9
	v_permlanex16_b32 v44, v24, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v23, v34, v31, v45
	v_perm_b32 v24, v34, v31, v46
	v_perm_b32 v33, v47, v39, v45
	v_perm_b32 v34, v47, v39, v46
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
	v_perm_b32 v31, v44, v32, v45
	v_perm_b32 v32, v44, v32, v46
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 249
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 249
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10488
; TotalNumSgprs: 42
; NumVgprs: 249
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 249
; Occupancy: 5
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     249
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
