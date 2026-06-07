	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 374 0                         ; ragged.py:374:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[28:29], s[0:1], 0x54
.Ltmp0:
	.loc	1 402 25 prologue_end           ; ragged.py:402:25
	s_abs_i32 s7, s2
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v9, 15, v0
	.loc	1 413 18                        ; ragged.py:413:18
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v48, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:400:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v67, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:400:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v31, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v91, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
.Ltmp2:
	.loc	1 402 25 is_stmt 1              ; ragged.py:402:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v123, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v127, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v129, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v131, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v133, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v135, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v137, 0
	s_cselect_b32 s4, s8, s5
	.loc	1 414 36                        ; ragged.py:414:36
	v_and_b32_e32 v14, 0xf0, v0
	.loc	1 402 25                        ; ragged.py:402:25
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s12, s4, s6
	.loc	1 404 33                        ; ragged.py:404:33
	s_sub_i32 s4, s29, s12
	.loc	1 405 24                        ; ragged.py:405:24
	s_mul_i32 s3, s12, s3
	.loc	1 404 22                        ; ragged.py:404:22
	s_min_i32 s13, s4, 1
	.loc	1 405 24                        ; ragged.py:405:24
	s_sub_i32 s2, s2, s3
	.loc	1 407 17                        ; ragged.py:407:17
	s_abs_i32 s14, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s14
	s_sub_i32 s5, 0, s14
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s4
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s14, s3, s15
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
	s_lshl_b64 s[20:21], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s20
	s_addc_u32 s3, s5, s21
	s_load_b64 s[24:25], s[2:3], 0x0
	.loc	1 411 24                        ; ragged.py:411:24
	s_add_u32 s2, s6, s20
	s_addc_u32 s3, s7, s21
	.loc	1 412 22                        ; ragged.py:412:22
	s_add_u32 s4, s8, s20
	s_addc_u32 s5, s9, s21
	.loc	1 411 24                        ; ragged.py:411:24
	s_load_b64 s[26:27], s[2:3], 0x0
	.loc	1 412 22                        ; ragged.py:412:22
	s_load_b64 s[30:31], s[4:5], 0x0
	.loc	1 414 18                        ; ragged.py:414:18
	s_lshl_b32 s29, s14, 8
	.loc	1 413 18                        ; ragged.py:413:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s24, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s25, 0, s2
	.loc	1 494 25                        ; ragged.py:494:25
	v_add_nc_u32_e32 v10, s24, v9
	.loc	1 413 18                        ; ragged.py:413:18
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	v_mov_b32_e32 v136, 0
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e32 vcc_lo, s[26:27], v[1:2]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s2, s[30:31], v[1:2]
	.loc	1 494 25 is_stmt 1              ; ragged.py:494:25
	v_add_nc_u32_e32 v1, 16, v10
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s3, s[26:27], v[3:4]
	v_cmp_le_i64_e64 s5, s[26:27], v[5:6]
	v_cmp_le_i64_e64 s6, s[26:27], v[7:8]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s7, s[30:31], v[3:4]
	.loc	1 415 21                        ; ragged.py:415:21
	scratch_store_b32 off, v1, off offset:88 ; 4-byte Folded Spill
	.loc	1 494 25 is_stmt 1              ; ragged.py:494:25
	v_add_nc_u32_e32 v1, 32, v10
	.loc	1 415 48                        ; ragged.py:415:48
	v_cmp_gt_i64_e64 s8, s[30:31], v[5:6]
	v_cmp_gt_i64_e64 s9, s[30:31], v[7:8]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:92
	scratch_store_b32 off, v10, off offset:84
	.loc	1 494 25                        ; ragged.py:494:25
	v_add_nc_u32_e32 v1, 48, v10
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 464 19                        ; ragged.py:464:19
	s_cmp_lt_i32 s28, 1
	s_mov_b32 s7, 0
	.loc	1 415 20                        ; ragged.py:415:20
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	.loc	1 464 19                        ; ragged.py:464:19
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3
	s_load_b64 s[34:35], s[0:1], 0x20
	s_load_b32 s9, s[0:1], 0x50
	s_load_b32 s8, s[0:1], 0x48
	s_load_b256 s[12:19], s[0:1], 0x0
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v4, 63, v0
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v10, 5, v0
	v_lshrrev_b32_e32 v6, 1, v0
	v_dual_mov_b32 v136, 0 :: v_dual_lshlrev_b32 v11, 2, v14
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v12, 1, v0
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v142, 0, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v6, 0x70, v6
	.loc	1 414 18 is_stmt 1              ; ragged.py:414:18
	v_lshl_or_b32 v1, v9, 4, s29
	.loc	1 413 18                        ; ragged.py:413:18
	v_dual_mov_b32 v138, 0 :: v_dual_lshlrev_b32 v9, 4, v0
	.loc	1 409 20                        ; ragged.py:409:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s34, s20
	s_addc_u32 s1, s35, s21
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v15, s29, v0
	.loc	1 501 25                        ; ragged.py:501:25
	s_load_b32 s34, s[0:1], 0x0
	.loc	1 413 18                        ; ragged.py:413:18
	v_add_co_u32 v2, s0, s24, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v3, null, s25, 0, s0
	.loc	1 461 28                        ; ragged.py:461:28
	v_lshrrev_b32_e32 v141, 6, v0
	v_or_b32_e32 v13, 0x300, v0
	v_mov_b32_e32 v127, 0
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s5, s[26:27], v[2:3]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s6, s[30:31], v[2:3]
	v_and_b32_e32 v2, 32, v10
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v3, 28, v12
	v_or_b32_e32 v5, 0x700, v0
	v_or_b32_e32 v7, 0x3f0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, 0, v11, v2
	v_or_b32_e32 v8, 0x7f0, v0
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v143, v142, v6
	.loc	1 477 39 is_stmt 1              ; ragged.py:477:39
	s_mul_i32 s9, s9, s33
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v6, 1, v14
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v144, 0, v0
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v0, v2, v3
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[66:67], null, s9, s34, v[1:2]
	.loc	1 461 28                        ; ragged.py:461:28
	v_lshrrev_b32_e32 v140, 4, v14
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s0, s33, v1
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v15, off offset:100
	scratch_store_b32 off, v14, off offset:116
	scratch_store_b32 off, v0, off offset:104
	v_cmp_gt_i32_e64 s1, s33, v15
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v65, s24, v4
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v145, 0, v13
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v146, 0, v5
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v147, 0, v7
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v148, 0, v8
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v149, 0, v9
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v0, 0, v6
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v42, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s20, s16
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s5, s5, s6
	s_and_b32 s21, s17, 0xffff
	s_and_b32 s17, s19, 0xffff
	.loc	1 501 25                        ; ragged.py:501:25
	s_mul_i32 s6, s28, s34
	s_mov_b32 s16, s18
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_clause 0x14                           ; 84-byte Folded Spill
	scratch_store_b32 off, v31, off offset:80
	scratch_store_b32 off, v30, off offset:76
	scratch_store_b32 off, v68, off offset:72
	scratch_store_b32 off, v67, off offset:68
	scratch_store_b32 off, v32, off offset:64
	scratch_store_b32 off, v48, off offset:60
	scratch_store_b32 off, v34, off offset:56
	scratch_store_b32 off, v33, off offset:52
	scratch_store_b32 off, v47, off offset:48
	scratch_store_b32 off, v46, off offset:44
	scratch_store_b32 off, v35, off offset:40
	scratch_store_b32 off, v45, off offset:36
	scratch_store_b32 off, v37, off offset:32
	scratch_store_b32 off, v36, off offset:28
	scratch_store_b32 off, v44, off offset:24
	scratch_store_b32 off, v43, off offset:20
	scratch_store_b32 off, v38, off offset:16
	scratch_store_b32 off, v39, off offset:12
	scratch_store_b32 off, v40, off offset:8
	scratch_store_b32 off, v42, off offset:4
	scratch_store_b32 off, v41, off
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v138
	v_mov_b32_e32 v3, v138
	v_dual_mov_b32 v4, v138 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v138
	v_dual_mov_b32 v6, v138 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v138
	v_dual_mov_b32 v8, v138 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v138 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v138
	v_dual_mov_b32 v12, v138 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v138
	v_dual_mov_b32 v14, v138 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v138
	v_dual_mov_b32 v16, v138 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v138
	v_mov_b32_e32 v19, v138
	v_mov_b32_e32 v20, v138
	v_mov_b32_e32 v21, v138
	v_mov_b32_e32 v22, v138
	v_mov_b32_e32 v23, v138
	v_mov_b32_e32 v24, v138
	v_mov_b32_e32 v26, v138
	v_mov_b32_e32 v27, v138
	v_mov_b32_e32 v28, v138
	v_mov_b32_e32 v29, v138
	v_mov_b32_e32 v30, v138
	v_mov_b32_e32 v31, v138
	v_mov_b32_e32 v32, v138
	v_mov_b32_e32 v34, v138
	v_mov_b32_e32 v35, v138
	v_mov_b32_e32 v36, v138
	v_mov_b32_e32 v37, v138
	v_mov_b32_e32 v38, v138
	v_mov_b32_e32 v39, v138
	v_mov_b32_e32 v40, v138
	v_mov_b32_e32 v42, v138
	v_mov_b32_e32 v43, v138
	v_mov_b32_e32 v44, v138
	v_mov_b32_e32 v45, v138
	v_mov_b32_e32 v46, v138
	v_mov_b32_e32 v47, v138
	v_mov_b32_e32 v48, v138
	v_mov_b32_e32 v50, v138
	v_mov_b32_e32 v51, v138
	v_mov_b32_e32 v52, v138
	v_mov_b32_e32 v53, v138
	v_mov_b32_e32 v54, v138
	v_mov_b32_e32 v55, v138
	v_mov_b32_e32 v56, v138
	v_mov_b32_e32 v58, v138
	v_mov_b32_e32 v59, v138
	v_mov_b32_e32 v60, v138
	v_mov_b32_e32 v61, v138
	v_mov_b32_e32 v62, v138
	v_mov_b32_e32 v63, v138
	v_mov_b32_e32 v64, v138
	.loc	1 466 28 is_stmt 1              ; ragged.py:466:28
	s_lshl_b32 s9, s7, 7
	s_mov_b32 s18, 0
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 469 26 is_stmt 1              ; ragged.py:469:26
	s_add_i32 s19, s18, s9
	v_or_b32_e32 v0, s19, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[67:68], null, v0, s8, v[65:66]
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v0, 0x80000000, v67, s5
	.loc	1 461 28 is_stmt 1              ; ragged.py:461:28
	v_or_b32_e32 v67, 4, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 469 26                        ; ragged.py:469:26
	v_or_b32_e32 v67, s19, v67
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[67:68], null, v67, s8, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v69, 0x80000000, v67, s5
	.loc	1 461 28 is_stmt 1              ; ragged.py:461:28
	v_or_b32_e32 v67, 8, v141
	.loc	1 469 26                        ; ragged.py:469:26
	v_or_b32_e32 v67, s19, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[67:68], null, v67, s8, v[65:66]
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v70, 0x80000000, v67, s5
	.loc	1 461 28 is_stmt 1              ; ragged.py:461:28
	v_or_b32_e32 v67, 12, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 469 26                        ; ragged.py:469:26
	v_or_b32_e32 v67, s19, v67
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[67:68], null, v67, s8, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v71, 0x80000000, v67, s5
	.loc	1 461 28 is_stmt 1              ; ragged.py:461:28
	v_or_b32_e32 v67, 16, v141
	.loc	1 469 26                        ; ragged.py:469:26
	v_or_b32_e32 v67, s19, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[67:68], null, v67, s8, v[65:66]
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v72, 0x80000000, v67, s5
	.loc	1 461 28 is_stmt 1              ; ragged.py:461:28
	v_or_b32_e32 v67, 20, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 469 26                        ; ragged.py:469:26
	v_or_b32_e32 v67, s19, v67
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[67:68], null, v67, s8, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v73, 0x80000000, v67, s5
	.loc	1 461 28 is_stmt 1              ; ragged.py:461:28
	v_or_b32_e32 v67, 24, v141
	.loc	1 469 26                        ; ragged.py:469:26
	v_or_b32_e32 v67, s19, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[67:68], null, v67, s8, v[65:66]
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v74, 0x80000000, v67, s5
	.loc	1 461 28 is_stmt 1              ; ragged.py:461:28
	v_or_b32_e32 v67, 28, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 469 26                        ; ragged.py:469:26
	v_or_b32_e32 v67, s19, v67
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[67:68], null, v67, s8, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v75, 0x80000000, v67, s5
	.loc	1 469 26 is_stmt 1              ; ragged.py:469:26
	v_or_b32_e32 v67, s19, v140
	.loc	1 479 42                        ; ragged.py:479:42
	v_mad_u64_u32 v[67:68], null, v67, s33, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 479 34 is_stmt 0              ; ragged.py:479:34
	v_cndmask_b32_e64 v76, 0x80000000, v67, s0
	.loc	1 461 28 is_stmt 1              ; ragged.py:461:28
	v_or_b32_e32 v67, 16, v140
	.loc	1 469 26                        ; ragged.py:469:26
	v_or_b32_e32 v67, s19, v67
	.loc	1 490 21                        ; ragged.py:490:21
	s_add_i32 s19, s18, 32
	.loc	1 468 23                        ; ragged.py:468:23
	s_cmpk_lt_u32 s18, 0x60
	s_mov_b32 s18, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 479 42                        ; ragged.py:479:42
	v_mad_u64_u32 v[67:68], null, v67, s33, v[66:67]
	.loc	1 479 34 is_stmt 0              ; ragged.py:479:34
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	.loc	1 478 34 is_stmt 1              ; ragged.py:478:34
	s_clause 0x7
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v68, v69, s[24:27], 0 offen
	buffer_load_u8 v69, v70, s[24:27], 0 offen
	buffer_load_u8 v115, v72, s[24:27], 0 offen
	buffer_load_u8 v116, v73, s[24:27], 0 offen
	buffer_load_u8 v117, v74, s[24:27], 0 offen
	buffer_load_u8 v118, v75, s[24:27], 0 offen
	buffer_load_u8 v119, v71, s[24:27], 0 offen
	.loc	1 479 34                        ; ragged.py:479:34
	s_clause 0x1
	buffer_load_b128 v[70:73], v76, s[12:15], 0 offen
	buffer_load_b128 v[74:77], v67, s[12:15], 0 offen
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b8 v144, v0
	s_waitcnt vmcnt(8)
	ds_store_b8 v144, v68 offset:256
	s_waitcnt vmcnt(7)
	ds_store_b8 v144, v69 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v144, v115 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b8 v144, v116 offset:1280
	s_waitcnt vmcnt(2)
	ds_store_b8 v145, v119
	ds_store_b8 v144, v117 offset:1536
	ds_store_b8 v146, v118
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 480 31                        ; ragged.py:480:31
	ds_load_u8 v67, v142 offset:192
	ds_load_u8 v68, v142 offset:128
	ds_load_u8 v151, v142 offset:208
	ds_load_u8 v69, v142 offset:144
	ds_load_u8 v241, v142 offset:224
	ds_load_u8 v243, v142 offset:160
	ds_load_u8 v248, v142 offset:240
	ds_load_u8 v249, v142 offset:176
	ds_load_u8 v78, v142 offset:448
	ds_load_u8 v79, v142 offset:384
	ds_load_u8 v80, v142 offset:464
	ds_load_u8 v81, v142 offset:400
	ds_load_u8 v254, v142 offset:480
	ds_load_u8 v116, v142 offset:416
	ds_load_u8 v252, v142 offset:496
	ds_load_u8 v253, v142 offset:432
	ds_load_u8 v82, v142 offset:320
	ds_load_u8 v83, v142 offset:256
	ds_load_u8 v84, v142 offset:336
	ds_load_u8 v85, v142 offset:272
	ds_load_u8 v119, v142 offset:352
	ds_load_u8 v139, v142 offset:288
	ds_load_u8 v255, v142 offset:368
	ds_load_u8 v117, v142 offset:304
	ds_load_u8 v86, v142 offset:64
	ds_load_u8 v87, v142 offset:80
	ds_load_u8 v150, v142 offset:96
	ds_load_u8 v0, v142 offset:112
	ds_load_u8 v88, v142
	ds_load_u8 v89, v142 offset:16
	ds_load_u8 v115, v142 offset:32
	ds_load_u8 v118, v142 offset:48
	ds_load_u8 v240, v142 offset:960
	ds_load_u8 v242, v142 offset:896
	ds_load_u8 v208, v142 offset:1024
	ds_load_u8 v215, v142 offset:976
	ds_load_u8 v218, v142 offset:912
	ds_load_u8 v211, v142 offset:992
	ds_load_u8 v213, v142 offset:928
	ds_load_u8 v209, v142 offset:944
	ds_load_u8 v244, v142 offset:832
	ds_load_u8 v245, v142 offset:768
	ds_load_u8 v223, v142 offset:848
	ds_load_u8 v225, v142 offset:784
	ds_load_u8 v220, v142 offset:864
	ds_load_u8 v221, v142 offset:800
	ds_load_u8 v214, v142 offset:880
	ds_load_u8 v216, v142 offset:816
	ds_load_u8 v246, v142 offset:704
	ds_load_u8 v247, v142 offset:640
	ds_load_u8 v229, v142 offset:720
	ds_load_u8 v230, v142 offset:656
	ds_load_u8 v226, v142 offset:736
	ds_load_u8 v228, v142 offset:672
	ds_load_u8 v222, v142 offset:752
	ds_load_u8 v224, v142 offset:688
	ds_load_u8 v250, v142 offset:576
	ds_load_u8 v251, v142 offset:512
	ds_load_u8 v237, v142 offset:592
	ds_load_u8 v238, v142 offset:528
	ds_load_u8 v234, v142 offset:608
	ds_load_u8 v235, v142 offset:544
	ds_load_u8 v231, v142 offset:624
	ds_load_u8 v232, v142 offset:560
	ds_load_u8 v210, v142 offset:1216
	ds_load_u8 v212, v142 offset:1280
	ds_load_u8 v182, v142 offset:1232
	ds_load_u8 v183, v142 offset:1168
	ds_load_u8 v179, v142 offset:1248
	ds_load_u8 v181, v142 offset:1184
	ds_load_u8 v177, v142 offset:1264
	ds_load_u8 v178, v142 offset:1200
	ds_load_u8 v217, v142 offset:1152
	ds_load_u8 v219, v142 offset:1088
	ds_load_u8 v190, v142 offset:1104
	ds_load_u8 v191, v142 offset:1040
	ds_load_u8 v187, v142 offset:1120
	ds_load_u8 v188, v142 offset:1056
	ds_load_u8 v184, v142 offset:1136
	ds_load_u8 v185, v142 offset:1072
	ds_load_u8 v227, v142 offset:1472
	ds_load_u8 v176, v142 offset:1536
	ds_load_u8 v198, v142 offset:1488
	ds_load_u8 v200, v142 offset:1424
	ds_load_u8 v195, v142 offset:1504
	ds_load_u8 v197, v142 offset:1440
	ds_load_u8 v192, v142 offset:1520
	ds_load_u8 v194, v142 offset:1456
	ds_load_u8 v233, v142 offset:1408
	ds_load_u8 v236, v142 offset:1344
	ds_load_u8 v206, v142 offset:1360
	ds_load_u8 v207, v142 offset:1296
	ds_load_u8 v204, v142 offset:1376
	ds_load_u8 v205, v142 offset:1312
	ds_load_u8 v201, v142 offset:1392
	ds_load_u8 v202, v142 offset:1328
	ds_load_u8 v180, v142 offset:1984
	ds_load_u8 v156, v142 offset:2000
	ds_load_u8 v158, v142 offset:1936
	ds_load_u8 v154, v142 offset:2016
	ds_load_u8 v155, v142 offset:1952
	ds_load_u8 v239, v147
	ds_load_u8 v152, v148
	ds_load_u8 v153, v142 offset:1968
	ds_load_u8 v186, v142 offset:1920
	ds_load_u8 v189, v142 offset:1856
	ds_load_u8 v163, v142 offset:1872
	ds_load_u8 v165, v142 offset:1808
	ds_load_u8 v160, v142 offset:1888
	ds_load_u8 v161, v142 offset:1824
	ds_load_u8 v157, v142 offset:1904
	ds_load_u8 v159, v142 offset:1840
	ds_load_u8 v193, v142 offset:1728
	ds_load_u8 v196, v142 offset:1792
	ds_load_u8 v168, v142 offset:1744
	ds_load_u8 v169, v142 offset:1680
	ds_load_u8 v166, v142 offset:1760
	ds_load_u8 v167, v142 offset:1696
	ds_load_u8 v162, v142 offset:1776
	ds_load_u8 v164, v142 offset:1712
	ds_load_u8 v199, v142 offset:1664
	ds_load_u8 v203, v142 offset:1600
	ds_load_u8 v174, v142 offset:1616
	ds_load_u8 v175, v142 offset:1552
	ds_load_u8 v172, v142 offset:1632
	ds_load_u8 v173, v142 offset:1568
	ds_load_u8 v170, v142 offset:1648
	ds_load_u8 v171, v142 offset:1584
	.loc	1 479 34                        ; ragged.py:479:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v149, v[70:73]
	s_waitcnt vmcnt(0)
	ds_store_b128 v149, v[74:77] offset:4096
	.loc	1 480 31                        ; ragged.py:480:31
	v_perm_b32 v70, v83, v82, 0xc0c0004
	v_perm_b32 v71, v79, v78, 0xc0c0004
	v_perm_b32 v72, v88, v86, 0xc0c0004
	v_perm_b32 v67, v68, v67, 0xc0c0004
	.loc	1 479 34                        ; ragged.py:479:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 480 31                        ; ragged.py:480:31
	v_lshl_or_b32 v68, v71, 16, v70
	v_perm_b32 v69, v69, v151, 0xc0c0004
	v_lshl_or_b32 v67, v67, 16, v72
	ds_load_u8 v70, v143 offset:1280
	ds_load_u8 v71, v143 offset:1024
	ds_load_u8 v72, v143 offset:1920
	ds_load_u8 v73, v143 offset:1664
	ds_load_u8 v74, v143 offset:1408
	ds_load_u8 v75, v143 offset:1152
	v_perm_b32 v0, v118, v0, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v143 offset:1792
	ds_load_u8 v76, v143 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v72, 16, v74
	v_perm_b32 v74, v85, v84, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v76, v71, 0xc0c0004
	ds_load_u8 v76, v143 offset:256
	ds_load_u8 v77, v143
	ds_load_u8 v78, v143 offset:896
	ds_load_u8 v79, v143 offset:640
	ds_load_u8 v82, v143 offset:384
	ds_load_u8 v83, v143 offset:128
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v143 offset:768
	ds_load_u8 v86, v143 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v86, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v70, v77, 16, v76
	v_perm_b32 v76, v79, v78, 0xc0c0004
	v_perm_b32 v78, v115, v150, 0xc0c0004
	v_perm_b32 v79, v243, v241, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[67:68], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v72, v76, 16, v75
	v_perm_b32 v75, v81, v80, 0xc0c0004
	v_perm_b32 v76, v89, v87, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[72:73], v[67:68], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v75, v75, 16, v74
	v_lshl_or_b32 v74, v69, 16, v76
	v_perm_b32 v69, v139, v119, 0xc0c0004
	v_perm_b32 v76, v116, v254, 0xc0c0004
	v_perm_b32 v67, v242, v240, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[74:75], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[72:73], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v76, 16, v69
	v_lshl_or_b32 v76, v79, 16, v78
	v_perm_b32 v69, v117, v255, 0xc0c0004
	v_perm_b32 v78, v253, v252, 0xc0c0004
	v_perm_b32 v79, v249, v248, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[76:77], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[72:73], v[76:77], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v116, v78, 16, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v115, v79, 16, v0
	v_perm_b32 v0, v245, v244, 0xc0c0004
	v_perm_b32 v69, v251, v250, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[115:116], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v70, v247, v246, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[72:73], v[115:116], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v67, 16, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v67, v70, 16, v69
	ds_load_u8 v0, v143 offset:3328
	ds_load_u8 v69, v143 offset:3072
	ds_load_u8 v71, v143 offset:3968
	ds_load_u8 v72, v143 offset:3712
	ds_load_u8 v73, v143 offset:3456
	ds_load_u8 v74, v143 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v143 offset:3840
	ds_load_u8 v70, v143 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v143 offset:2304
	ds_load_u8 v75, v143 offset:2048
	ds_load_u8 v76, v143 offset:2944
	ds_load_u8 v77, v143 offset:2688
	ds_load_u8 v78, v143 offset:2432
	ds_load_u8 v79, v143 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v75, v70, 0xc0c0004
	ds_load_u8 v70, v143 offset:2816
	ds_load_u8 v80, v143 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v80, v70, 0xc0c0004
	v_lshl_or_b32 v70, v69, 16, v0
	v_perm_b32 v0, v74, v73, 0xc0c0004
	v_perm_b32 v73, v79, v78, 0xc0c0004
	v_perm_b32 v74, v77, v76, 0xc0c0004
	v_lshl_or_b32 v69, v80, 16, v75
	v_perm_b32 v75, v238, v237, 0xc0c0004
	v_lshl_or_b32 v72, v71, 16, v0
	v_perm_b32 v0, v225, v223, 0xc0c0004
	v_lshl_or_b32 v71, v74, 16, v73
	v_perm_b32 v73, v218, v215, 0xc0c0004
	v_perm_b32 v76, v230, v229, 0xc0c0004
	v_perm_b32 v77, v235, v234, 0xc0c0004
	v_perm_b32 v78, v228, v226, 0xc0c0004
	v_perm_b32 v79, v209, v239, 0xc0c0004
	v_lshl_or_b32 v74, v73, 16, v0
	v_lshl_or_b32 v73, v76, 16, v75
	v_perm_b32 v0, v221, v220, 0xc0c0004
	v_perm_b32 v75, v213, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[67:68], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[67:68], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v67, v233, v227, 0xc0c0004
	v_lshl_or_b32 v76, v75, 16, v0
	v_lshl_or_b32 v75, v78, 16, v77
	v_perm_b32 v0, v232, v231, 0xc0c0004
	v_perm_b32 v77, v224, v222, 0xc0c0004
	v_perm_b32 v78, v216, v214, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[71:72], v[75:76], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v115, v77, 16, v0
	v_lshl_or_b32 v116, v79, 16, v78
	v_perm_b32 v0, v212, v236, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[115:116], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v69, v208, v219, 0xc0c0004
	v_perm_b32 v70, v217, v210, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[71:72], v[115:116], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v67, 16, v0
	v_lshl_or_b32 v67, v70, 16, v69
	ds_load_u8 v0, v143 offset:5376
	ds_load_u8 v69, v143 offset:5120
	ds_load_u8 v71, v143 offset:6016
	ds_load_u8 v72, v143 offset:5760
	ds_load_u8 v73, v143 offset:5504
	ds_load_u8 v74, v143 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v143 offset:5888
	ds_load_u8 v70, v143 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v143 offset:4352
	ds_load_u8 v75, v143 offset:4096
	ds_load_u8 v76, v143 offset:4992
	ds_load_u8 v77, v143 offset:4736
	ds_load_u8 v78, v143 offset:4480
	ds_load_u8 v79, v143 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v75, v70, 0xc0c0004
	ds_load_u8 v70, v143 offset:4864
	ds_load_u8 v80, v143 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v80, v70, 0xc0c0004
	v_lshl_or_b32 v70, v69, 16, v0
	v_perm_b32 v0, v74, v73, 0xc0c0004
	v_perm_b32 v73, v79, v78, 0xc0c0004
	v_perm_b32 v74, v77, v76, 0xc0c0004
	v_lshl_or_b32 v69, v80, 16, v75
	v_perm_b32 v75, v191, v190, 0xc0c0004
	v_lshl_or_b32 v72, v71, 16, v0
	v_perm_b32 v0, v207, v206, 0xc0c0004
	v_lshl_or_b32 v71, v74, 16, v73
	v_perm_b32 v73, v200, v198, 0xc0c0004
	v_perm_b32 v76, v183, v182, 0xc0c0004
	v_perm_b32 v77, v188, v187, 0xc0c0004
	v_perm_b32 v78, v181, v179, 0xc0c0004
	v_perm_b32 v79, v178, v177, 0xc0c0004
	v_lshl_or_b32 v74, v73, 16, v0
	v_lshl_or_b32 v73, v76, 16, v75
	v_perm_b32 v0, v205, v204, 0xc0c0004
	v_perm_b32 v75, v197, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[67:68], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[67:68], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v67, v186, v180, 0xc0c0004
	v_lshl_or_b32 v76, v75, 16, v0
	v_lshl_or_b32 v75, v78, 16, v77
	v_perm_b32 v0, v202, v201, 0xc0c0004
	v_perm_b32 v77, v194, v192, 0xc0c0004
	v_perm_b32 v78, v185, v184, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[71:72], v[75:76], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v116, v77, 16, v0
	v_lshl_or_b32 v115, v79, 16, v78
	v_perm_b32 v0, v196, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[115:116], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v69, v176, v203, 0xc0c0004
	v_perm_b32 v70, v199, v193, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[71:72], v[115:116], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v67, 16, v0
	v_lshl_or_b32 v67, v70, 16, v69
	ds_load_u8 v0, v143 offset:7424
	ds_load_u8 v69, v143 offset:7168
	ds_load_u8 v71, v143 offset:8064
	ds_load_u8 v72, v143 offset:7808
	ds_load_u8 v73, v143 offset:7552
	ds_load_u8 v74, v143 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v143 offset:7936
	ds_load_u8 v70, v143 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v143 offset:6400
	ds_load_u8 v75, v143 offset:6144
	ds_load_u8 v76, v143 offset:7040
	ds_load_u8 v77, v143 offset:6784
	ds_load_u8 v78, v143 offset:6528
	ds_load_u8 v79, v143 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v75, v70, 0xc0c0004
	ds_load_u8 v70, v143 offset:6912
	ds_load_u8 v80, v143 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v80, v70, 0xc0c0004
	v_lshl_or_b32 v70, v69, 16, v0
	v_perm_b32 v0, v74, v73, 0xc0c0004
	v_perm_b32 v73, v79, v78, 0xc0c0004
	v_perm_b32 v74, v77, v76, 0xc0c0004
	v_lshl_or_b32 v69, v80, 16, v75
	v_perm_b32 v75, v175, v174, 0xc0c0004
	v_lshl_or_b32 v72, v71, 16, v0
	v_perm_b32 v0, v165, v163, 0xc0c0004
	v_lshl_or_b32 v71, v74, 16, v73
	v_perm_b32 v73, v158, v156, 0xc0c0004
	v_perm_b32 v76, v169, v168, 0xc0c0004
	v_perm_b32 v77, v173, v172, 0xc0c0004
	v_perm_b32 v78, v167, v166, 0xc0c0004
	v_perm_b32 v79, v153, v152, 0xc0c0004
	v_lshl_or_b32 v74, v73, 16, v0
	v_lshl_or_b32 v73, v76, 16, v75
	v_perm_b32 v0, v161, v160, 0xc0c0004
	v_perm_b32 v75, v155, v154, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[67:68], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[71:72], v[67:68], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[73:74], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[73:74], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v76, v75, 16, v0
	v_lshl_or_b32 v75, v78, 16, v77
	v_perm_b32 v0, v171, v170, 0xc0c0004
	v_perm_b32 v77, v164, v162, 0xc0c0004
	v_perm_b32 v78, v159, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[71:72], v[75:76], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v115, v77, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v116, v79, 16, v78
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[115:116], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[71:72], v[115:116], v[57:64] neg_lo:[1,1,0]
	.loc	1 468 23                        ; ragged.py:468:23
	s_cbranch_scc1 .LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 494 25                        ; ragged.py:494:25
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:84
	scratch_load_b32 v67, off, off offset:88
	scratch_load_b32 v68, off, off offset:92
	scratch_load_b32 v69, off, off offset:96
	scratch_load_b32 v70, off, off offset:100
	.loc	1 501 25                        ; ragged.py:501:25
	s_add_i32 s9, s7, s6
	.loc	1 500 40                        ; ragged.py:500:40
	s_mov_b32 s18, s22
	.loc	1 501 25                        ; ragged.py:501:25
	s_mul_i32 s9, s9, s33
	.loc	1 500 40                        ; ragged.py:500:40
	s_mov_b32 s19, s23
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v71, v1
	v_cvt_f32_i32_e32 v72, v2
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v82, v12
	v_cvt_f32_i32_e32 v73, v3
	v_cvt_f32_i32_e32 v74, v4
	v_cvt_f32_i32_e32 v75, v5
	v_cvt_f32_i32_e32 v76, v6
	v_cvt_f32_i32_e32 v77, v7
	v_cvt_f32_i32_e32 v78, v8
	v_cvt_f32_i32_e32 v79, v9
	v_cvt_f32_i32_e32 v80, v10
	v_cvt_f32_i32_e32 v81, v11
	v_cvt_f32_i32_e32 v83, v13
	v_cvt_f32_i32_e32 v84, v14
	v_cvt_f32_i32_e32 v85, v15
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 494 25                        ; ragged.py:494:25
	s_waitcnt vmcnt(4)
	v_mul_lo_u32 v0, v0, s28
	s_waitcnt vmcnt(3)
	v_mul_lo_u32 v67, v67, s28
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v68, v68, s28
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v69, v69, s28
	.loc	1 500 40                        ; ragged.py:500:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v70, v70, s9, 1
	.loc	1 493 40                        ; ragged.py:493:40
	v_add_lshl_u32 v0, s7, v0, 1
	v_add_lshl_u32 v67, s7, v67, 1
	v_add_lshl_u32 v68, s7, v68, 1
	v_add_lshl_u32 v69, s7, v69, 1
	.loc	1 500 40                        ; ragged.py:500:40
	v_cndmask_b32_e64 v70, 0x80000000, v70, s1
	.loc	1 493 40                        ; ragged.py:493:40
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 500 40                        ; ragged.py:500:40
	buffer_load_u16 v70, v70, s[16:19], 0 offen
	.loc	1 493 40                        ; ragged.py:493:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[20:23], 0 offen
	buffer_load_u16 v67, v67, s[20:23], 0 offen
	buffer_load_u16 v68, v68, s[20:23], 0 offen
	buffer_load_u16 v69, v69, s[20:23], 0 offen
	.loc	1 505 21                        ; ragged.py:505:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 507 17                        ; ragged.py:507:17
	s_add_i32 s7, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 464 19                        ; ragged.py:464:19
	s_cmp_lg_u32 s7, s28
	.loc	1 493 40                        ; ragged.py:493:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 500 40                        ; ragged.py:500:40
	v_lshlrev_b32_e32 v1, 16, v70
	.loc	1 493 40                        ; ragged.py:493:40
	v_lshlrev_b32_e32 v70, 16, v0
	.loc	1 505 21                        ; ragged.py:505:21
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 493 40                        ; ragged.py:493:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 498 21                        ; ragged.py:498:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v74, v74, v70 :: v_dual_lshlrev_b32 v69, 16, v69
	v_mul_f32_e32 v72, v72, v70
	v_dual_mul_f32 v18, v18, v67 :: v_dual_mul_f32 v71, v71, v70
	v_dual_mul_f32 v83, v83, v70 :: v_dual_mul_f32 v30, v30, v67
	v_dual_mul_f32 v85, v85, v70 :: v_dual_mul_f32 v32, v32, v67
	v_dual_mul_f32 v31, v31, v67 :: v_dual_mul_f32 v36, v36, v68
	v_dual_mul_f32 v73, v73, v70 :: v_dual_mul_f32 v20, v20, v67
	v_dual_mul_f32 v75, v75, v70 :: v_dual_mul_f32 v22, v22, v67
	v_dual_mul_f32 v76, v76, v70 :: v_dual_mul_f32 v17, v17, v67
	v_dual_mul_f32 v77, v77, v70 :: v_dual_mul_f32 v24, v24, v67
	v_dual_mul_f32 v78, v78, v70 :: v_dual_mul_f32 v19, v19, v67
	v_dual_mul_f32 v79, v79, v70 :: v_dual_mul_f32 v26, v26, v67
	v_dual_mul_f32 v80, v80, v70 :: v_dual_mul_f32 v21, v21, v67
	v_dual_mul_f32 v81, v81, v70 :: v_dual_mul_f32 v28, v28, v67
	v_dual_mul_f32 v82, v82, v70 :: v_dual_mul_f32 v23, v23, v67
	v_dual_mul_f32 v84, v84, v70 :: v_dual_mul_f32 v25, v25, v67
	v_dual_mul_f32 v16, v16, v70 :: v_dual_mul_f32 v27, v27, v67
	v_dual_mul_f32 v29, v29, v67 :: v_dual_mul_f32 v34, v34, v68
	v_dual_mul_f32 v33, v33, v68 :: v_dual_mul_f32 v50, v50, v69
	v_dual_mul_f32 v35, v35, v68 :: v_dual_mul_f32 v52, v52, v69
	v_dual_mul_f32 v37, v37, v68 :: v_dual_mul_f32 v54, v54, v69
	v_dual_mul_f32 v38, v38, v68 :: v_dual_mul_f32 v49, v49, v69
	v_dual_mul_f32 v39, v39, v68 :: v_dual_mul_f32 v56, v56, v69
	v_dual_mul_f32 v40, v40, v68 :: v_dual_mul_f32 v51, v51, v69
	v_dual_mul_f32 v41, v41, v68 :: v_dual_mul_f32 v58, v58, v69
	v_dual_mul_f32 v42, v42, v68 :: v_dual_mul_f32 v53, v53, v69
	v_dual_mul_f32 v43, v43, v68 :: v_dual_mul_f32 v60, v60, v69
	v_dual_mul_f32 v44, v44, v68 :: v_dual_mul_f32 v55, v55, v69
	v_dual_mul_f32 v45, v45, v68 :: v_dual_mul_f32 v62, v62, v69
	v_dual_mul_f32 v46, v46, v68 :: v_dual_mul_f32 v57, v57, v69
	v_dual_mul_f32 v47, v47, v68 :: v_dual_mul_f32 v64, v64, v69
	v_dual_mul_f32 v48, v48, v68 :: v_dual_mul_f32 v59, v59, v69
	.loc	1 505 21                        ; ragged.py:505:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v12, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v61, v61, v69
	v_mul_f32_e32 v63, v63, v69
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:72
	scratch_load_b32 v67, off, off offset:68
	.loc	1 506 17                        ; ragged.py:506:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v100, v33, v0 :: v_dual_fmac_f32 v99, v34, v1
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v98, v35, v2 :: v_dual_fmac_f32 v103, v30, v13
	v_dual_fmac_f32 v102, v31, v14 :: v_dual_fmac_f32 v101, v32, v15
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v31, off, off offset:80
	scratch_load_b32 v30, off, off offset:76
	scratch_load_b32 v32, off, off offset:64
	v_fmac_f32_e32 v123, v85, v14
	v_dual_fmac_f32 v97, v36, v3 :: v_dual_fmac_f32 v96, v37, v4
	v_dual_fmac_f32 v95, v38, v5 :: v_dual_fmac_f32 v94, v39, v6
	v_dual_fmac_f32 v93, v40, v7 :: v_dual_fmac_f32 v92, v41, v8
	v_dual_fmac_f32 v91, v42, v9 :: v_dual_fmac_f32 v90, v43, v10
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v36, off, off offset:28
	scratch_load_b32 v43, off, off offset:20
	scratch_load_b32 v38, off, off offset:16
	scratch_load_b32 v39, off, off offset:12
	scratch_load_b32 v40, off, off offset:8
	scratch_load_b32 v42, off, off offset:4
	scratch_load_b32 v41, off, off
	scratch_load_b32 v34, off, off offset:56
	scratch_load_b32 v33, off, off offset:52
	scratch_load_b32 v35, off, off offset:40
	scratch_load_b32 v37, off, off offset:32
	v_dual_fmac_f32 v137, v71, v0 :: v_dual_fmac_f32 v136, v72, v1
	v_dual_fmac_f32 v135, v73, v2 :: v_dual_fmac_f32 v132, v76, v5
	v_dual_fmac_f32 v134, v74, v3 :: v_dual_fmac_f32 v133, v75, v4
	v_dual_fmac_f32 v128, v80, v9 :: v_dual_fmac_f32 v131, v77, v6
	v_fmac_f32_e32 v126, v82, v11
	v_dual_fmac_f32 v130, v78, v7 :: v_dual_fmac_f32 v129, v79, v8
	v_dual_fmac_f32 v124, v84, v13 :: v_dual_fmac_f32 v127, v81, v10
	v_dual_fmac_f32 v122, v16, v15 :: v_dual_fmac_f32 v125, v83, v12
	v_dual_fmac_f32 v120, v18, v1 :: v_dual_fmac_f32 v121, v17, v0
	v_dual_fmac_f32 v114, v19, v2 :: v_dual_fmac_f32 v113, v20, v3
	v_dual_fmac_f32 v112, v21, v4 :: v_dual_fmac_f32 v111, v22, v5
	v_dual_fmac_f32 v110, v23, v6 :: v_dual_fmac_f32 v109, v24, v7
	v_dual_fmac_f32 v108, v25, v8 :: v_dual_fmac_f32 v107, v26, v9
	v_dual_fmac_f32 v106, v27, v10 :: v_dual_fmac_f32 v105, v28, v11
	v_fmac_f32_e32 v104, v29, v12
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v68, v46, v13 :: v_dual_fmac_f32 v67, v47, v14
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:48
	scratch_load_b32 v46, off, off offset:44
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v31, v44, v11 :: v_dual_fmac_f32 v30, v45, v12
	s_waitcnt vmcnt(13)
	v_fmac_f32_e32 v32, v48, v15
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v48, off, off offset:60
	scratch_load_b32 v45, off, off offset:36
	scratch_load_b32 v44, off, off offset:24
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v36, v57, v8 :: v_dual_fmac_f32 v43, v59, v10
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v38, v60, v11 :: v_dual_fmac_f32 v39, v61, v12
	s_waitcnt vmcnt(11)
	v_fmac_f32_e32 v40, v62, v13
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v42, v63, v14 :: v_dual_fmac_f32 v41, v64, v15
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v34, v50, v1 :: v_dual_fmac_f32 v33, v51, v2
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v35, v54, v5
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v37, v56, v7
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v47, v52, v3 :: v_dual_fmac_f32 v46, v53, v4
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v48, v49, v0 :: v_dual_fmac_f32 v45, v55, v6
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v44, v58, v9
	.loc	1 464 19                        ; ragged.py:464:19
	s_cbranch_scc1 .LBB0_2
; %bb.5:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:112
	scratch_load_b32 v14, off, off offset:116
.LBB0_6:                                ; %._crit_edge
	.loc	1 510 13 is_stmt 1              ; ragged.py:510:13
	scratch_load_b32 v2, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 509 9                         ; ragged.py:509:9
	v_bfe_u32 v6, v137, 16, 1
	v_bfe_u32 v7, v136, 16, 1
	v_cmp_o_f32_e64 s5, v137, v137
	v_cmp_o_f32_e64 s6, v136, v136
	v_bfe_u32 v8, v135, 16, 1
	v_add3_u32 v6, v137, v6, 0x7fff
	v_add3_u32 v7, v136, v7, 0x7fff
	v_bfe_u32 v9, v134, 16, 1
	v_cmp_o_f32_e64 s7, v135, v135
	v_add3_u32 v8, v135, v8, 0x7fff
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s5
	v_cndmask_b16 v6.h, 0x7fff, v7.h, s6
	v_bfe_u32 v7, v133, 16, 1
	v_bfe_u32 v10, v132, 16, 1
	v_add3_u32 v9, v134, v9, 0x7fff
	v_cmp_o_f32_e64 s5, v134, v134
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s7
	v_add3_u32 v7, v133, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v133, v133
	v_add3_u32 v10, v132, v10, 0x7fff
	v_cmp_o_f32_e64 s7, v132, v132
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s5
	v_bfe_u32 v9, v131, 16, 1
	v_bfe_u32 v11, v130, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s6
	v_cndmask_b16 v7.h, 0x7fff, v10.h, s7
	v_bfe_u32 v10, v129, 16, 1
	v_add3_u32 v9, v131, v9, 0x7fff
	v_cmp_o_f32_e64 s5, v131, v131
	v_add3_u32 v11, v130, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v130, v130
	v_bfe_u32 v12, v128, 16, 1
	v_add3_u32 v10, v129, v10, 0x7fff
	v_cmp_o_f32_e64 s7, v129, v129
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s5
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v127, 16, 1
	v_bfe_u32 v13, v126, 16, 1
	v_add3_u32 v12, v128, v12, 0x7fff
	v_cmp_o_f32_e64 s5, v128, v128
	.loc	1 414 36                        ; ragged.py:414:36
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v1, 1, v14
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s7
	v_add3_u32 v11, v127, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v127, v127
	v_add3_u32 v13, v126, v13, 0x7fff
	v_cmp_o_f32_e64 s7, v126, v126
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s5
	v_bfe_u32 v12, v125, 16, 1
	v_bfe_u32 v14, v124, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s7
	v_bfe_u32 v13, v123, 16, 1
	v_add3_u32 v12, v125, v12, 0x7fff
	v_cmp_o_f32_e64 s5, v125, v125
	v_add3_u32 v14, v124, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v124, v124
	v_bfe_u32 v15, v122, 16, 1
	v_add3_u32 v13, v123, v13, 0x7fff
	v_cmp_o_f32_e64 s7, v123, v123
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s5
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v121, 16, 1
	v_bfe_u32 v16, v120, 16, 1
	v_add3_u32 v15, v122, v15, 0x7fff
	v_cmp_o_f32_e64 s5, v122, v122
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s7
	v_add3_u32 v14, v121, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v121, v121
	v_add3_u32 v16, v120, v16, 0x7fff
	v_cmp_o_f32_e64 s7, v120, v120
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s5
	v_bfe_u32 v15, v114, 16, 1
	v_bfe_u32 v17, v113, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s6
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s7
	v_bfe_u32 v16, v112, 16, 1
	v_add3_u32 v15, v114, v15, 0x7fff
	v_cmp_o_f32_e64 s5, v114, v114
	v_add3_u32 v17, v113, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v113, v113
	v_bfe_u32 v18, v111, 16, 1
	v_add3_u32 v16, v112, v16, 0x7fff
	v_cmp_o_f32_e64 s7, v112, v112
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s5
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s6
	v_bfe_u32 v17, v110, 16, 1
	v_bfe_u32 v19, v109, 16, 1
	v_add3_u32 v18, v111, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v111, v111
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s7
	v_add3_u32 v17, v110, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v110, v110
	v_add3_u32 v19, v109, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v109, v109
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s5
	v_bfe_u32 v18, v108, 16, 1
	v_bfe_u32 v20, v107, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s6
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v106, 16, 1
	v_add3_u32 v18, v108, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v108, v108
	v_add3_u32 v20, v107, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v107, v107
	v_bfe_u32 v21, v105, 16, 1
	v_add3_u32 v19, v106, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v106, v106
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s5
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s6
	v_bfe_u32 v20, v104, 16, 1
	v_bfe_u32 v22, v103, 16, 1
	v_add3_u32 v21, v105, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v105, v105
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_add3_u32 v20, v104, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v104, v104
	v_add3_u32 v22, v103, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v103, v103
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v102, 16, 1
	v_bfe_u32 v23, v101, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s6
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s7
	v_bfe_u32 v22, v100, 16, 1
	v_add3_u32 v21, v102, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v102, v102
	v_add3_u32 v23, v101, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v101, v101
	v_bfe_u32 v24, v99, 16, 1
	v_add3_u32 v22, v100, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v100, v100
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s5
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s6
	v_bfe_u32 v23, v98, 16, 1
	v_bfe_u32 v25, v97, 16, 1
	v_add3_u32 v24, v99, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v99, v99
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s7
	v_add3_u32 v23, v98, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v98, v98
	v_add3_u32 v25, v97, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v97, v97
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s5
	v_bfe_u32 v24, v96, 16, 1
	v_bfe_u32 v26, v95, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s6
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s7
	v_bfe_u32 v25, v94, 16, 1
	v_add3_u32 v24, v96, v24, 0x7fff
	v_cmp_o_f32_e64 s5, v96, v96
	v_add3_u32 v26, v95, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v95, v95
	v_add3_u32 v25, v94, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v94, v94
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s5
	v_bfe_u32 v27, v93, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s6
	v_bfe_u32 v26, v92, 16, 1
	v_bfe_u32 v28, v91, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s7
	v_add3_u32 v27, v93, v27, 0x7fff
	v_cmp_o_f32_e64 s5, v93, v93
	v_add3_u32 v26, v92, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v92, v92
	v_add3_u32 v28, v91, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v91, v91
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v90, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s6
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s7
	v_bfe_u32 v28, v30, 16, 1
	v_add3_u32 v27, v90, v27, 0x7fff
	v_cmp_o_f32_e64 s5, v90, v90
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v28, v30, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_bfe_u32 v30, v68, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s5
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v67, 16, 1
	v_bfe_u32 v31, v32, 16, 1
	v_add3_u32 v30, v68, v30, 0x7fff
	v_cmp_o_f32_e64 s5, v68, v68
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s7
	v_add3_u32 v29, v67, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v67, v67
	v_add3_u32 v31, v32, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v32, v32
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s5
	v_bfe_u32 v30, v48, 16, 1
	v_bfe_u32 v32, v34, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s6
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s7
	v_bfe_u32 v31, v33, 16, 1
	v_add3_u32 v30, v48, v30, 0x7fff
	v_cmp_o_f32_e64 s5, v48, v48
	v_add3_u32 v32, v34, v32, 0x7fff
	v_cmp_o_f32_e64 s6, v34, v34
	v_add3_u32 v31, v33, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v33, v33
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s5
	v_bfe_u32 v33, v47, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s6
	v_bfe_u32 v32, v46, 16, 1
	v_bfe_u32 v34, v35, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s7
	v_add3_u32 v33, v47, v33, 0x7fff
	v_cmp_o_f32_e64 s5, v47, v47
	v_add3_u32 v32, v46, v32, 0x7fff
	v_cmp_o_f32_e64 s6, v46, v46
	v_add3_u32 v34, v35, v34, 0x7fff
	v_cmp_o_f32_e64 s7, v35, v35
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s5
	v_bfe_u32 v33, v45, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s6
	v_bfe_u32 v35, v37, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s7
	v_bfe_u32 v34, v36, 16, 1
	v_add3_u32 v33, v45, v33, 0x7fff
	v_cmp_o_f32_e64 s5, v45, v45
	v_add3_u32 v35, v37, v35, 0x7fff
	v_cmp_o_f32_e64 s6, v37, v37
	v_add3_u32 v34, v36, v34, 0x7fff
	v_cmp_o_f32_e64 s7, v36, v36
	v_bfe_u32 v36, v44, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s5
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s6
	v_bfe_u32 v35, v43, 16, 1
	v_bfe_u32 v37, v38, 16, 1
	v_add3_u32 v36, v44, v36, 0x7fff
	v_cmp_o_f32_e64 s5, v44, v44
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s7
	v_add3_u32 v35, v43, v35, 0x7fff
	v_cmp_o_f32_e64 s6, v43, v43
	v_add3_u32 v37, v38, v37, 0x7fff
	v_cmp_o_f32_e64 s7, v38, v38
	v_bfe_u32 v38, v39, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s5
	v_bfe_u32 v36, v40, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s7
	v_add3_u32 v37, v39, v38, 0x7fff
	v_bfe_u32 v38, v42, 16, 1
	v_cmp_o_f32_e64 s5, v39, v39
	v_add3_u32 v36, v40, v36, 0x7fff
	v_bfe_u32 v39, v41, 16, 1
	v_cmp_o_f32_e64 s6, v40, v40
	v_and_b32_e32 v40, 16, v0
	v_add3_u32 v38, v42, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v42, v42
	v_add3_u32 v39, v41, v39, 0x7fff
	v_cmp_o_f32_e64 s8, v41, v41
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s5
	v_cmp_eq_u32_e64 s5, 0, v40
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s7
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s6
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s8
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v38, v7, v6, s5
	v_cndmask_b32_e64 v6, v6, v7, s5
	v_cndmask_b32_e64 v39, v9, v8, s5
	v_cndmask_b32_e64 v7, v8, v9, s5
	v_cndmask_b32_e64 v40, v12, v10, s5
	v_cndmask_b32_e64 v8, v10, v12, s5
	v_cndmask_b32_e64 v41, v13, v11, s5
	v_cndmask_b32_e64 v9, v11, v13, s5
	v_cndmask_b32_e64 v42, v16, v14, s5
	v_cndmask_b32_e64 v10, v14, v16, s5
	v_cndmask_b32_e64 v45, v21, v19, s5
	v_cndmask_b32_e64 v13, v19, v21, s5
	v_cndmask_b32_e64 v46, v24, v22, s5
	v_cndmask_b32_e64 v14, v22, v24, s5
	v_mov_b32_e32 v21, 0x5410
	v_mov_b32_e32 v22, 0x7632
	v_permlanex16_b32 v24, v6, s6, 0xfedcba98 op_sel:[1,0]
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v1, s29, v1
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v43, v17, v15, s5
	v_cndmask_b32_e64 v6, 0x1054, v21, s5
	v_cndmask_b32_e64 v21, 0x3276, v22, s5
	v_permlanex16_b32 v22, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v11, v15, v17, s5
	v_cndmask_b32_e64 v44, v20, v18, s5
	v_lshl_or_b32 v6, v6, 8, v6
	v_lshl_or_b32 v7, v21, 8, v21
	v_cndmask_b32_e64 v12, v18, v20, s5
	v_cndmask_b32_e64 v47, v25, v23, s5
	v_cndmask_b32_e64 v15, v23, v25, s5
	v_and_b32_e32 v6, 0x540054, v6
	v_and_b32_e32 v7, 0x760076, v7
	v_cndmask_b32_e64 v52, v36, v34, s5
	v_cndmask_b32_e64 v20, v34, v36, s5
	v_cndmask_b32_e64 v53, v37, v35, s5
	v_lshl_or_b32 v6, v6, 4, v6
	v_lshl_or_b32 v7, v7, 4, v7
	v_cndmask_b32_e64 v23, v35, v37, s5
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s1, s33, v1
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v48, v28, v26, s5
	v_and_b32_e32 v36, 0x5040504, v6
	v_and_b32_e32 v37, 0x7060706, v7
	v_cndmask_b32_e64 v16, v26, v28, s5
	v_permlanex16_b32 v25, v8, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v24, v38, v36
	v_perm_b32 v7, v24, v38, v37
	v_cndmask_b32_e64 v49, v29, v27, s5
	v_cndmask_b32_e64 v17, v27, v29, s5
	v_permlanex16_b32 v21, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v8, v22, v39, v36
	v_perm_b32 v9, v22, v39, v37
	v_cndmask_b32_e64 v50, v32, v30, s5
	v_cndmask_b32_e64 v18, v30, v32, s5
	v_cndmask_b32_e64 v51, v33, v31, s5
	v_cndmask_b32_e64 v19, v31, v33, s5
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s5, s1, s4
	.loc	1 509 9                         ; ragged.py:509:9
	v_permlanex16_b32 v28, v12, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v13, s6, 0xfedcba98 op_sel:[1,0]
	.loc	1 510 13                        ; ragged.py:510:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v5, v2, s33
	scratch_load_b32 v2, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v10, v25, v40, v36
	v_perm_b32 v11, v25, v40, v37
	v_perm_b32 v12, v26, v41, v36
	v_perm_b32 v13, v26, v41, v37
	v_permlanex16_b32 v30, v14, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v15, s6, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v38, v1, v5, 1
	v_permlanex16_b32 v32, v16, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v17, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v14, v21, v42, v36
	v_perm_b32 v15, v21, v42, v37
	v_cndmask_b32_e64 v38, 0x80000000, v38, s5
	v_perm_b32 v16, v27, v43, v36
	v_perm_b32 v17, v27, v43, v37
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s10
	v_permlanex16_b32 v34, v18, s6, 0xfedcba98 op_sel:[1,0]
	buffer_store_b128 v[6:9], v38, s[12:15], 0 offen
	v_permlanex16_b32 v35, v19, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v54, v20, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v55, v23, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v18, v28, v44, v36
	v_perm_b32 v19, v28, v44, v37
	v_perm_b32 v20, v29, v45, v36
	v_perm_b32 v21, v29, v45, v37
	v_perm_b32 v22, v30, v46, v36
	v_perm_b32 v23, v30, v46, v37
	v_perm_b32 v24, v31, v47, v36
	v_perm_b32 v25, v31, v47, v37
	v_perm_b32 v26, v32, v48, v36
	v_perm_b32 v27, v32, v48, v37
	v_perm_b32 v28, v33, v49, v36
	v_perm_b32 v29, v33, v49, v37
	v_perm_b32 v30, v34, v50, v36
	v_perm_b32 v31, v34, v50, v37
	v_perm_b32 v32, v35, v51, v36
	v_perm_b32 v33, v35, v51, v37
	v_perm_b32 v34, v54, v52, v36
	v_perm_b32 v35, v54, v52, v37
	v_perm_b32 v36, v55, v53, v36
	v_perm_b32 v37, v55, v53, v37
	.loc	1 510 13                        ; ragged.py:510:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v4, v2, s33
	scratch_load_b32 v2, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 509 9                         ; ragged.py:509:9
	v_add_lshl_u32 v39, v1, v4, 1
	.loc	1 510 13                        ; ragged.py:510:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v3, v2, s33
	scratch_load_b32 v2, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v56, v2, s33
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v2, 0x80, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s0, s33, v2
	.loc	1 509 9                         ; ragged.py:509:9
	v_add_lshl_u32 v5, v2, v5, 1
	v_add_lshl_u32 v4, v2, v4, 1
	v_add_lshl_u32 v0, v2, v56, 1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s4, s0, s4
	s_delay_alu instid0(VALU_DEP_3) | instid1(SALU_CYCLE_1)
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s4, s1, s3
	s_and_b32 s3, s0, s3
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v39, 0x80000000, v39, s4
	s_clause 0x1
	buffer_store_b128 v[10:13], v5, s[12:15], 0 offen
	buffer_store_b128 v[14:17], v39, s[12:15], 0 offen
	v_add_lshl_u32 v5, v1, v3, 1
	v_add_lshl_u32 v3, v2, v3, 1
	v_add_lshl_u32 v1, v1, v56, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, s1, vcc_lo
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[18:21], v4, s[12:15], 0 offen
	buffer_store_b128 v[22:25], v5, s[12:15], 0 offen
	buffer_store_b128 v[26:29], v2, s[12:15], 0 offen
	buffer_store_b128 v[30:33], v1, s[12:15], 0 offen
	buffer_store_b128 v[34:37], v0, s[12:15], 0 offen
	.loc	1 374 5                         ; ragged.py:374:5
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 124
		.amdhsa_kernarg_size 112
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
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 124
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11280
; TotalNumSgprs: 38
; NumVgprs: 256
; ScratchSize: 124
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 38
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 124
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 30
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
