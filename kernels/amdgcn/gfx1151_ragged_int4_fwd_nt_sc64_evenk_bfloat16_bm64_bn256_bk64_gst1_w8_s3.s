	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 374 0                         ; ragged.py:374:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[26:27], s[0:1], 0x54
.Ltmp0:
	.loc	1 402 25 prologue_end           ; ragged.py:402:25
	s_abs_i32 s7, s2
	.loc	1 413 18                        ; ragged.py:413:18
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v56, 16, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:400:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:400:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 402 25 is_stmt 1              ; ragged.py:402:25
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
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 404 33                        ; ragged.py:404:33
	s_sub_i32 s4, s27, s8
	.loc	1 405 24                        ; ragged.py:405:24
	s_mul_i32 s3, s8, s3
	.loc	1 404 22                        ; ragged.py:404:22
	s_min_i32 s9, s4, 1
	.loc	1 405 24                        ; ragged.py:405:24
	s_sub_i32 s2, s2, s3
	.loc	1 407 17                        ; ragged.py:407:17
	s_abs_i32 s10, s9
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
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
	s_xor_b32 s4, s2, s9
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s28, s4, 31
	s_sub_i32 s11, s5, s6
	s_add_i32 s12, s3, 1
	s_sub_i32 s13, s11, s10
	s_cmp_ge_u32 s11, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s12, s3
	s_cselect_b32 s11, s13, s11
	s_add_i32 s12, s3, 1
	s_cmp_ge_u32 s11, s10
	s_cselect_b32 s3, s12, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s29, s3, s28
	s_sub_i32 s10, s29, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 406 34                        ; ragged.py:406:34
	s_mul_i32 s3, s10, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 406 20 is_stmt 0              ; ragged.py:406:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 409 20 is_stmt 1              ; ragged.py:409:20
	s_ashr_i32 s3, s2, 31
	.loc	1 410 23                        ; ragged.py:410:23
	s_lshl_b64 s[16:17], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s16
	s_addc_u32 s3, s5, s17
	s_load_b64 s[18:19], s[2:3], 0x0
	.loc	1 411 24                        ; ragged.py:411:24
	s_add_u32 s2, s6, s16
	s_addc_u32 s3, s7, s17
	.loc	1 412 22                        ; ragged.py:412:22
	s_add_u32 s4, s8, s16
	s_addc_u32 s5, s9, s17
	.loc	1 411 24                        ; ragged.py:411:24
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 412 22                        ; ragged.py:412:22
	s_load_b64 s[22:23], s[4:5], 0x0
	.loc	1 413 18                        ; ragged.py:413:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s18, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s19, 0, s2
	.loc	1 494 25                        ; ragged.py:494:25
	v_add_nc_u32_e32 v38, s18, v1
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
	v_cmp_le_i64_e32 vcc_lo, s[20:21], v[2:3]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s2, s[22:23], v[2:3]
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s3, s[20:21], v[4:5]
	v_cmp_le_i64_e64 s6, s[20:21], v[6:7]
	v_cmp_le_i64_e64 s7, s[20:21], v[8:9]
	.loc	1 415 48                        ; ragged.py:415:48
	v_cmp_gt_i64_e64 s4, s[22:23], v[4:5]
	v_cmp_gt_i64_e64 s8, s[22:23], v[6:7]
	v_cmp_gt_i64_e64 s9, s[22:23], v[8:9]
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 464 19 is_stmt 1              ; ragged.py:464:19
	s_cmp_gt_i32 s26, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 509 9                         ; ragged.py:509:9
	v_and_b32_e32 v4, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; ragged.py:0:9
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr4
.LBB0_3:                                ; %Flow116
	s_load_b64 s[24:25], s[0:1], 0x40
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v47, 0xf0, v0
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v43, 16, v38
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v44, 32, v38
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v45, 48, v38
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v60, 0
	v_mov_b32_e32 v83, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s27, s10, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b64 s[30:31], s[0:1], 0x20
	.loc	1 414 36 is_stmt 1              ; ragged.py:414:36
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 413 32                        ; ragged.py:413:32
	v_lshrrev_b32_e32 v5, 2, v0
	s_clause 0x1
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s35, s[0:1], 0x50
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v7, s27, v0
	.loc	1 413 18                        ; ragged.py:413:18
	v_mov_b32_e32 v60, 0
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v6, s27, v4
	.loc	1 413 18                        ; ragged.py:413:18
	v_add_co_u32 v2, s0, s18, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s19, 0, s0
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v9, 0x80, v6
	v_dual_mov_b32 v83, 0 :: v_dual_and_b32 v8, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s6, s[20:21], v[2:3]
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v7
	v_cmp_gt_i32_e64 s0, s33, v6
	v_cmp_gt_i32_e64 s1, s33, v9
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v6, 3, v0
	.loc	1 409 20                        ; ragged.py:409:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s16, s30, s16
	s_addc_u32 s17, s31, s17
	.loc	1 464 19                        ; ragged.py:464:19
	s_lshl_b32 s20, s29, 8
	.loc	1 501 25                        ; ragged.py:501:25
	s_load_b32 s17, s[16:17], 0x0
	v_lshlrev_b32_e32 v7, 1, v0
	v_bfe_u32 v9, v0, 4, 1
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v11, 24, v4
	.loc	1 415 48                        ; ragged.py:415:48
	v_cmp_gt_i64_e64 s7, s[22:23], v[2:3]
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v2, 4, v8
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v12, 2, v47
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v8, 5, v8
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v10, 24, v7
	.loc	1 464 19                        ; ragged.py:464:19
	v_mul_lo_u32 v13, s26, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v8, 0, v12, v8
	v_mul_lo_u32 v12, s26, v45
	v_mul_lo_u32 v14, s26, v43
	v_mul_lo_u32 v15, s26, v38
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v3, 24, v6
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s17, s33, s17
	v_and_or_b32 v9, v7, 30, v9
	s_mul_i32 s19, s17, s26
	v_add3_u32 v4, s17, s20, v4
	v_add3_u32 v0, s19, s20, v0
	s_lshl_b32 s19, s28, 8
	v_lshl_or_b32 v1, v1, 5, v10
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v5, s18, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v0, s19, v0
	v_xor_b32_e32 v6, v6, v11
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v7, 28, v7
	v_dual_mov_b32 v80, 0 :: v_dual_lshlrev_b32 v85, 2, v9
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v87, 1, v0
	v_subrev_nc_u32_e32 v0, s19, v4
	v_xor_b32_e32 v9, 8, v1
	v_xor_b32_e32 v10, 16, v1
	v_xor_b32_e32 v11, 24, v1
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v16, 1, v47
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v4, 0x80, v0
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v88, 1, v12
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v89, 1, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[12:13], null, v5, s35, v[3:4]
	s_mov_b32 s16, 0
	v_dual_mov_b32 v67, 0 :: v_dual_lshlrev_b32 v90, 1, v14
	v_mad_u64_u32 v[13:14], null, s35, v4, v[2:3]
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v91, 1, v15
	v_mad_u64_u32 v[14:15], null, s35, v0, v[2:3]
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v92, 0, v6
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v93, 0, v1
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v97, v8, v7
	v_dual_mov_b32 v0, s16 :: v_dual_mov_b32 v5, s21
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s6, s6, s7
	v_xor_b32_e32 v86, 4, v85
	v_cmp_eq_u32_e64 s7, 0, v56
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v94, 0, v9
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v95, 0, v10
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v96, 0, v11
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v98, 0, v16
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v1, s17
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v3, s19
	v_dual_mov_b32 v2, s18 :: v_dual_mov_b32 v7, s23
	v_mov_b32_e32 v4, s20
	v_mov_b32_e32 v6, s22
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 464 19                        ; ragged.py:464:19
	s_lshl_b32 s34, s33, 1
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s30
	s_mov_b32 s11, s31
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_cndmask_b32_e64 v8, 0x80000000, v14, s0
	v_cndmask_b32_e64 v100, 0x80000000, v12, s6
	v_cndmask_b32_e64 v99, 0x80000000, v13, s1
	.loc	1 464 19                        ; ragged.py:464:19
	s_add_i32 s26, s26, -1
	.loc	1 479 34 is_stmt 1              ; ragged.py:479:34
	buffer_load_b128 v[8:11], v8, s[8:11], 0 offen
	.loc	1 478 34                        ; ragged.py:478:34
	buffer_load_b64 v[103:104], v100, s[28:31], 0 offen
	.loc	1 479 34                        ; ragged.py:479:34
	buffer_load_b128 v[99:102], v99, s[8:11], 0 offen
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 464 19                        ; ragged.py:464:19
	s_cmp_lg_u32 s26, 0
	v_add_nc_u32_e32 v12, 32, v12
	v_add_nc_u32_e32 v13, 32, v13
	.loc	1 479 34                        ; ragged.py:479:34
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v105, v85, v8
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt vmcnt(1)
	ds_store_b64 v92, v[103:104]
	.loc	1 479 34                        ; ragged.py:479:34
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v103, v85, v99
	ds_bpermute_b32 v99, v86, v99
	ds_bpermute_b32 v104, v85, v100
	ds_bpermute_b32 v100, v86, v100
	ds_bpermute_b32 v106, v85, v9
	ds_bpermute_b32 v107, v85, v10
	ds_bpermute_b32 v108, v85, v11
	ds_bpermute_b32 v109, v86, v8
	ds_bpermute_b32 v110, v86, v9
	ds_bpermute_b32 v111, v86, v10
	ds_bpermute_b32 v112, v86, v11
	ds_bpermute_b32 v113, v85, v101
	ds_bpermute_b32 v101, v86, v101
	ds_bpermute_b32 v114, v85, v102
	ds_bpermute_b32 v102, v86, v102
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[8:11], v93 offset1:1
	ds_load_2addr_stride64_b64 v[131:134], v94 offset1:1
	ds_load_2addr_stride64_b64 v[135:138], v93 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[139:142], v95 offset1:1
	ds_load_2addr_stride64_b64 v[143:146], v96 offset1:1
	.loc	1 479 34                        ; ragged.py:479:34
	v_cndmask_b32_e64 v155, v99, v103, s7
	v_cndmask_b32_e64 v157, v103, v99, s7
	v_cndmask_b32_e64 v156, v100, v104, s7
	v_cndmask_b32_e64 v158, v104, v100, s7
	v_cndmask_b32_e64 v147, v109, v105, s7
	v_cndmask_b32_e64 v149, v105, v109, s7
	v_cndmask_b32_e64 v148, v110, v106, s7
	v_cndmask_b32_e64 v150, v106, v110, s7
	v_cndmask_b32_e64 v151, v111, v107, s7
	v_cndmask_b32_e64 v153, v107, v111, s7
	v_cndmask_b32_e64 v152, v112, v108, s7
	v_cndmask_b32_e64 v154, v108, v112, s7
	v_cndmask_b32_e64 v159, v101, v113, s7
	v_cndmask_b32_e64 v161, v113, v101, s7
	v_cndmask_b32_e64 v160, v102, v114, s7
	v_cndmask_b32_e64 v162, v114, v102, s7
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[155:156], v[8:9], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[147:148], v[8:9], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[147:148], v[10:11], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[155:156], v[10:11], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[159:160], v[131:132], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[151:152], v[131:132], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[151:152], v[133:134], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[159:160], v[133:134], v[123:130] neg_lo:[1,1,0]
	.loc	1 478 34                        ; ragged.py:478:34
	ds_load_2addr_stride64_b64 v[8:11], v94 offset0:2 offset1:3
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[157:158], v[139:140], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[149:150], v[139:140], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[149:150], v[141:142], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[157:158], v[141:142], v[123:130] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[161:162], v[143:144], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[153:154], v[143:144], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[153:154], v[145:146], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[123:130], v[161:162], v[145:146], v[123:130] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v143, v107
	v_cvt_f32_i32_e32 v144, v108
	v_cvt_f32_i32_e32 v145, v109
	v_cvt_f32_i32_e32 v146, v110
	.loc	1 478 34                        ; ragged.py:478:34
	ds_load_2addr_stride64_b64 v[107:110], v95 offset0:2 offset1:3
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v163, v111
	v_cvt_f32_i32_e32 v164, v112
	v_cvt_f32_i32_e32 v165, v113
	v_cvt_f32_i32_e32 v166, v114
	.loc	1 478 34                        ; ragged.py:478:34
	ds_load_2addr_stride64_b64 v[111:114], v96 offset0:2 offset1:3
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v131, v99
	v_cvt_f32_i32_e32 v132, v100
	v_cvt_f32_i32_e32 v133, v101
	v_cvt_f32_i32_e32 v134, v102
	v_cvt_f32_i32_e32 v139, v103
	v_cvt_f32_i32_e32 v140, v104
	v_cvt_f32_i32_e32 v141, v105
	v_cvt_f32_i32_e32 v142, v106
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[99:106], v[147:148], v[135:136], v[0:7] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v170, v126
	v_cvt_f32_i32_e32 v127, v127
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[151:152], v[8:9], v[99:106] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[149:150], v[107:108], v[99:106] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v167, v123
	v_cvt_f32_i32_e32 v120, v120
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[153:154], v[111:112], v[99:106] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v168, v124
	v_cvt_f32_i32_e32 v169, v125
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v171, v99
	v_cvt_f32_i32_e32 v172, v100
	v_cvt_f32_i32_e32 v173, v101
	v_cvt_f32_i32_e32 v174, v102
	v_cvt_f32_i32_e32 v175, v103
	v_cvt_f32_i32_e32 v176, v104
	v_cvt_f32_i32_e32 v177, v105
	v_cvt_f32_i32_e32 v178, v106
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[99:106], v[155:156], v[135:136], v[0:7] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v130, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[99:106], v[159:160], v[8:9], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[157:158], v[107:108], v[99:106] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[161:162], v[111:112], v[99:106] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v8, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v9, v100
	v_cvt_f32_i32_e32 v179, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v180, v102
	v_cvt_f32_i32_e32 v181, v103
	v_cvt_f32_i32_e32 v182, v104
	v_cvt_f32_i32_e32 v183, v105
	v_cvt_f32_i32_e32 v184, v106
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[99:106], v[147:148], v[137:138], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[151:152], v[10:11], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[149:150], v[109:110], v[99:106] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[153:154], v[113:114], v[99:106] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v148, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v154, v100
	v_cvt_f32_i32_e32 v185, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v186, v102
	v_cvt_f32_i32_e32 v187, v103
	v_cvt_f32_i32_e32 v188, v104
	v_cvt_f32_i32_e32 v189, v105
	v_cvt_f32_i32_e32 v190, v106
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[99:106], v[155:156], v[137:138], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[159:160], v[10:11], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[99:106], v[157:158], v[109:110], v[99:106] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[99:106], v[161:162], v[113:114], v[99:106] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v11, v100
	.loc	1 493 40                        ; ragged.py:493:40
	v_cndmask_b32_e64 v100, 0x80000000, v91, s5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v156, v101
	.loc	1 493 40                        ; ragged.py:493:40
	v_cndmask_b32_e64 v101, 0x80000000, v90, s4
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v10, v99
	v_cvt_f32_i32_e32 v157, v102
	.loc	1 493 40                        ; ragged.py:493:40
	buffer_load_u16 v100, v100, s[36:39], 0 offen
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v158, v103
	.loc	1 493 40                        ; ragged.py:493:40
	buffer_load_u16 v107, v101, s[36:39], 0 offen
	v_cndmask_b32_e64 v101, 0x80000000, v89, s3
	.loc	1 500 40                        ; ragged.py:500:40
	v_cndmask_b32_e32 v99, 0x80000000, v87, vcc_lo
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v159, v104
	v_cvt_f32_i32_e32 v160, v105
	v_cvt_f32_i32_e32 v161, v106
	.loc	1 493 40                        ; ragged.py:493:40
	buffer_load_u16 v135, v101, s[36:39], 0 offen
	v_cndmask_b32_e64 v101, 0x80000000, v88, s2
	.loc	1 464 19                        ; ragged.py:464:19
	v_add_nc_u32_e32 v87, s34, v87
	v_add_nc_u32_e32 v89, 2, v89
	v_add_nc_u32_e32 v91, 2, v91
	v_add_nc_u32_e32 v88, 2, v88
	.loc	1 493 40                        ; ragged.py:493:40
	buffer_load_u16 v153, v101, s[36:39], 0 offen
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v102, 16, v100
	.loc	1 500 40                        ; ragged.py:500:40
	buffer_load_u16 v99, v99, s[12:15], 0 offen
	.loc	1 493 40                        ; ragged.py:493:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v110, 16, v107
	.loc	1 505 21                        ; ragged.py:505:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v191, v132, v102
	v_mul_f32_e32 v193, v134, v102
	v_mul_f32_e32 v126, v122, v110
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v111, v139, v102 :: v_dual_lshlrev_b32 v122, 16, v135
	v_mul_f32_e32 v107, v127, v110
	v_mul_f32_e32 v162, v131, v102
	v_mul_f32_e32 v124, v120, v110
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v127, v8, v122 :: v_dual_lshlrev_b32 v8, 16, v153
	v_mul_f32_e32 v192, v133, v102
	v_mul_f32_e32 v112, v140, v102
	v_mul_f32_e32 v113, v141, v102
	v_mul_f32_e32 v114, v142, v102
	v_mul_f32_e32 v103, v143, v102
	v_mul_f32_e32 v104, v144, v102
	v_dual_mul_f32 v105, v145, v102 :: v_dual_mul_f32 v144, v188, v8
	v_dual_mul_f32 v106, v146, v102 :: v_dual_mul_f32 v141, v156, v8
	v_dual_mul_f32 v100, v164, v102 :: v_dual_mul_f32 v139, v10, v8
	v_dual_mul_f32 v101, v165, v102 :: v_dual_mul_f32 v140, v11, v8
	v_dual_mul_f32 v164, v116, v110 :: v_dual_mul_f32 v131, v158, v8
	v_dual_mul_f32 v165, v117, v110 :: v_dual_mul_f32 v132, v159, v8
	v_dual_mul_f32 v147, v118, v110 :: v_dual_mul_f32 v134, v161, v8
	v_mul_f32_e32 v153, v148, v8
	v_mul_f32_e32 v154, v154, v8
	v_mul_f32_e32 v155, v185, v8
	v_mul_f32_e32 v148, v186, v8
	v_mul_f32_e32 v143, v187, v8
	v_mul_f32_e32 v145, v189, v8
	v_mul_f32_e32 v146, v190, v8
	v_mul_f32_e32 v142, v157, v8
	v_mul_f32_e32 v133, v160, v8
	v_mul_f32_e32 v116, v168, v110
	v_mul_f32_e32 v117, v169, v110
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v118, v170, v110 :: v_dual_lshlrev_b32 v99, 16, v99
	.loc	1 505 21                        ; ragged.py:505:21
	ds_store_b32 v97, v99
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v99, v163, v102
	v_mul_f32_e32 v102, v166, v102
	v_mul_f32_e32 v163, v115, v110
	v_mul_f32_e32 v108, v128, v110
	v_mul_f32_e32 v128, v9, v122
	.loc	1 505 21                        ; ragged.py:505:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v98
	ds_load_b128 v[156:159], v98 offset:16
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v123, v119, v110
	v_mul_f32_e32 v150, v171, v122
	v_mul_f32_e32 v151, v172, v122
	v_mul_f32_e32 v125, v121, v110
	v_mul_f32_e32 v115, v167, v110
	v_mul_f32_e32 v109, v129, v110
	v_mul_f32_e32 v110, v130, v110
	v_mul_f32_e32 v136, v176, v122
	v_mul_f32_e32 v137, v177, v122
	v_mul_f32_e32 v129, v179, v122
	v_mul_f32_e32 v130, v180, v122
	v_mul_f32_e32 v119, v181, v122
	v_mul_f32_e32 v121, v183, v122
	.loc	1 506 17                        ; ragged.py:506:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v66, v147, v11 :: v_dual_mul_f32 v149, v174, v122
	v_fmac_f32_e32 v50, v151, v9
	v_dual_fmac_f32 v29, v154, v9 :: v_dual_mul_f32 v152, v173, v122
	v_fmac_f32_e32 v51, v150, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 498 21                        ; ragged.py:498:21
	v_dual_mul_f32 v135, v175, v122 :: v_dual_fmac_f32 v48, v149, v11
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v60, v162, v8
	.loc	1 498 21                        ; ragged.py:498:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v138, v178, v122 :: v_dual_fmac_f32 v65, v123, v156
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v69, v163, v8
	v_fmac_f32_e32 v49, v152, v10
	.loc	1 505 21                        ; ragged.py:505:21
	ds_load_b128 v[160:163], v98 offset:512
	ds_load_b128 v[149:152], v98 offset:528
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v120, v182, v122
	v_mul_f32_e32 v122, v184, v122
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v84, v191, v9 :: v_dual_fmac_f32 v83, v192, v10
	v_fmac_f32_e32 v46, v135, v156
	.loc	1 464 19                        ; ragged.py:464:19
	v_add_nc_u32_e32 v90, 2, v90
	v_add_nc_u32_e32 v14, 32, v14
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v82, v193, v11
	v_fmac_f32_e32 v68, v164, v9
	v_dual_fmac_f32 v30, v153, v8 :: v_dual_fmac_f32 v27, v148, v11
	v_fmac_f32_e32 v81, v111, v156
	v_dual_fmac_f32 v67, v165, v10 :: v_dual_fmac_f32 v42, v136, v157
	v_dual_fmac_f32 v80, v112, v157 :: v_dual_fmac_f32 v79, v113, v158
	v_fmac_f32_e32 v26, v143, v156
	v_fmac_f32_e32 v78, v114, v159
	v_dual_fmac_f32 v64, v124, v157 :: v_dual_fmac_f32 v63, v125, v158
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v76, v104, v161
	v_dual_fmac_f32 v62, v126, v159 :: v_dual_fmac_f32 v41, v137, v158
	v_fmac_f32_e32 v74, v106, v163
	v_dual_fmac_f32 v40, v138, v159 :: v_dual_fmac_f32 v25, v144, v157
	v_dual_fmac_f32 v28, v155, v10 :: v_dual_fmac_f32 v37, v128, v161
	v_dual_fmac_f32 v24, v145, v158 :: v_dual_fmac_f32 v39, v127, v160
	v_fmac_f32_e32 v23, v146, v159
	v_fmac_f32_e32 v77, v103, v160
	v_dual_fmac_f32 v75, v105, v162 :: v_dual_fmac_f32 v22, v139, v160
	v_fmac_f32_e32 v61, v115, v160
	v_dual_fmac_f32 v59, v116, v161 :: v_dual_fmac_f32 v58, v117, v162
	v_fmac_f32_e32 v35, v130, v163
	v_dual_fmac_f32 v57, v118, v163 :: v_dual_fmac_f32 v36, v129, v162
	v_dual_fmac_f32 v21, v140, v161 :: v_dual_fmac_f32 v20, v141, v162
	v_fmac_f32_e32 v19, v142, v163
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v73, v99, v149 :: v_dual_fmac_f32 v72, v100, v150
	v_dual_fmac_f32 v71, v101, v151 :: v_dual_fmac_f32 v70, v102, v152
	v_dual_fmac_f32 v55, v107, v149 :: v_dual_fmac_f32 v54, v108, v150
	v_dual_fmac_f32 v53, v109, v151 :: v_dual_fmac_f32 v52, v110, v152
	v_dual_fmac_f32 v34, v119, v149 :: v_dual_fmac_f32 v33, v120, v150
	v_dual_fmac_f32 v32, v121, v151 :: v_dual_fmac_f32 v31, v122, v152
	v_dual_fmac_f32 v18, v131, v149 :: v_dual_fmac_f32 v17, v132, v150
	v_dual_fmac_f32 v16, v133, v151 :: v_dual_fmac_f32 v15, v134, v152
	.loc	1 464 19                        ; ragged.py:464:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_mov_b32_e32 v4, v56
.LBB0_7:                                ; %._crit_edge
	.loc	1 509 9 is_stmt 1               ; ragged.py:509:9
	v_bfe_u32 v7, v60, 16, 1
	v_bfe_u32 v8, v84, 16, 1
	v_bfe_u32 v10, v82, 16, 1
	v_bfe_u32 v9, v83, 16, 1
	v_cmp_o_f32_e64 s1, v60, v60
	v_add3_u32 v7, v60, v7, 0x7fff
	v_add3_u32 v8, v84, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v84, v84
	v_add3_u32 v10, v82, v10, 0x7fff
	v_cmp_o_f32_e64 s8, v82, v82
	v_bfe_u32 v11, v81, 16, 1
	v_add3_u32 v9, v83, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v83, v83
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s8
	v_add3_u32 v10, v81, v11, 0x7fff
	v_bfe_u32 v11, v79, 16, 1
	v_bfe_u32 v12, v78, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s7
	v_bfe_u32 v9, v80, 16, 1
	v_cmp_o_f32_e64 s1, v81, v81
	v_add3_u32 v11, v79, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v79, v79
	v_add3_u32 v12, v78, v12, 0x7fff
	v_cmp_o_f32_e64 s8, v78, v78
	v_add3_u32 v9, v80, v9, 0x7fff
	v_cmp_o_f32_e64 s6, v80, v80
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v77, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s7
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s8
	v_bfe_u32 v12, v76, 16, 1
	v_bfe_u32 v14, v74, 16, 1
	v_bfe_u32 v13, v75, 16, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v6, v38, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v10, v77, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v77, v77
	v_add3_u32 v12, v76, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v76, v76
	v_add3_u32 v14, v74, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v74, v74
	v_bfe_u32 v38, v73, 16, 1
	v_add3_u32 v13, v75, v13, 0x7fff
	v_cmp_o_f32_e64 s7, v75, v75
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v5, v43, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s6
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s8
	v_add3_u32 v14, v73, v38, 0x7fff
	v_bfe_u32 v38, v71, 16, 1
	v_bfe_u32 v43, v70, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s7
	v_bfe_u32 v13, v72, 16, 1
	v_cmp_o_f32_e64 s1, v73, v73
	v_add3_u32 v38, v71, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v71, v71
	v_add3_u32 v43, v70, v43, 0x7fff
	v_cmp_o_f32_e64 s8, v70, v70
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v3, v44, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_add3_u32 v13, v72, v13, 0x7fff
	v_bfe_u32 v44, v67, 16, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v0, v45, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_cmp_o_f32_e64 s6, v72, v72
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s1
	v_bfe_u32 v14, v69, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s7
	v_cndmask_b16 v38.h, 0x7fff, v43.h, s8
	v_bfe_u32 v43, v68, 16, 1
	v_bfe_u32 v45, v66, 16, 1
	v_add3_u32 v44, v67, v44, 0x7fff
	v_cmp_o_f32_e64 s7, v67, v67
	.loc	1 414 36                        ; ragged.py:414:36
	v_lshrrev_b32_e32 v1, 1, v47
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s6
	v_add3_u32 v14, v69, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v69, v69
	v_add3_u32 v43, v68, v43, 0x7fff
	v_cmp_o_f32_e64 s6, v68, v68
	v_add3_u32 v45, v66, v45, 0x7fff
	v_cmp_o_f32_e64 s8, v66, v66
	v_bfe_u32 v47, v65, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s7
	v_bfe_u32 v44, v64, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_cndmask_b16 v14.h, 0x7fff, v43.h, s6
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s8
	v_add3_u32 v45, v65, v47, 0x7fff
	v_bfe_u32 v47, v63, 16, 1
	v_cmp_o_f32_e64 s1, v65, v65
	v_bfe_u32 v56, v62, 16, 1
	v_add3_u32 v44, v64, v44, 0x7fff
	v_cmp_o_f32_e64 s7, v63, v63
	v_add3_u32 v47, v63, v47, 0x7fff
	v_cmp_o_f32_e64 s8, v62, v62
	v_add3_u32 v56, v62, v56, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s1
	v_bfe_u32 v45, v61, 16, 1
	v_cmp_o_f32_e64 s6, v64, v64
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s7
	v_cndmask_b16 v47.h, 0x7fff, v56.h, s8
	v_bfe_u32 v56, v59, 16, 1
	v_add3_u32 v45, v61, v45, 0x7fff
	v_bfe_u32 v60, v58, 16, 1
	v_cmp_o_f32_e64 s1, v61, v61
	v_bfe_u32 v61, v57, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s6
	v_add3_u32 v56, v59, v56, 0x7fff
	v_cmp_o_f32_e64 s6, v59, v59
	v_add3_u32 v59, v58, v60, 0x7fff
	v_cmp_o_f32_e64 s7, v58, v58
	v_add3_u32 v58, v57, v61, 0x7fff
	v_cmp_o_f32_e64 s8, v57, v57
	v_bfe_u32 v57, v55, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s1
	v_cndmask_b16 v45.h, 0x7fff, v56.h, s6
	v_cndmask_b16 v56.l, 0x7fff, v59.h, s7
	v_cndmask_b16 v56.h, 0x7fff, v58.h, s8
	v_bfe_u32 v58, v54, 16, 1
	v_bfe_u32 v59, v53, 16, 1
	v_add3_u32 v57, v55, v57, 0x7fff
	v_cmp_o_f32_e64 s1, v55, v55
	v_bfe_u32 v55, v52, 16, 1
	v_add3_u32 v58, v54, v58, 0x7fff
	v_cmp_o_f32_e64 s6, v54, v54
	v_add3_u32 v54, v53, v59, 0x7fff
	v_cmp_o_f32_e64 s7, v53, v53
	v_add3_u32 v53, v52, v55, 0x7fff
	v_bfe_u32 v55, v51, 16, 1
	v_cmp_o_f32_e64 s8, v52, v52
	v_cndmask_b16 v52.l, 0x7fff, v57.h, s1
	v_cndmask_b16 v53.l, 0x7fff, v54.h, s7
	v_bfe_u32 v54, v50, 16, 1
	v_bfe_u32 v57, v49, 16, 1
	v_add3_u32 v55, v51, v55, 0x7fff
	v_cmp_o_f32_e64 s1, v51, v51
	v_bfe_u32 v51, v48, 16, 1
	v_cndmask_b16 v52.h, 0x7fff, v58.h, s6
	v_add3_u32 v54, v50, v54, 0x7fff
	v_cmp_o_f32_e64 s6, v50, v50
	v_add3_u32 v50, v49, v57, 0x7fff
	v_cmp_o_f32_e64 s7, v49, v49
	v_add3_u32 v49, v48, v51, 0x7fff
	v_bfe_u32 v51, v46, 16, 1
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s8
	v_cmp_o_f32_e64 s8, v48, v48
	v_cndmask_b16 v48.h, 0x7fff, v54.h, s6
	v_cndmask_b16 v49.l, 0x7fff, v50.h, s7
	v_bfe_u32 v50, v42, 16, 1
	v_bfe_u32 v54, v41, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v55.h, s1
	v_add3_u32 v51, v46, v51, 0x7fff
	v_cmp_o_f32_e64 s1, v46, v46
	v_bfe_u32 v46, v40, 16, 1
	v_add3_u32 v50, v42, v50, 0x7fff
	v_cmp_o_f32_e64 s6, v42, v42
	v_add3_u32 v42, v41, v54, 0x7fff
	v_cmp_o_f32_e64 s7, v41, v41
	v_add3_u32 v41, v40, v46, 0x7fff
	v_bfe_u32 v46, v39, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s8
	v_cmp_o_f32_e64 s8, v40, v40
	v_cndmask_b16 v40.h, 0x7fff, v50.h, s6
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s7
	v_bfe_u32 v42, v37, 16, 1
	v_bfe_u32 v50, v36, 16, 1
	v_cndmask_b16 v40.l, 0x7fff, v51.h, s1
	v_add3_u32 v46, v39, v46, 0x7fff
	v_cmp_o_f32_e64 s1, v39, v39
	v_bfe_u32 v39, v35, 16, 1
	v_add3_u32 v42, v37, v42, 0x7fff
	v_cmp_o_f32_e64 s6, v37, v37
	v_add3_u32 v37, v36, v50, 0x7fff
	v_cmp_o_f32_e64 s7, v36, v36
	v_add3_u32 v36, v35, v39, 0x7fff
	v_bfe_u32 v39, v34, 16, 1
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s8
	v_cmp_o_f32_e64 s8, v35, v35
	v_cndmask_b16 v35.h, 0x7fff, v42.h, s6
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s7
	v_bfe_u32 v37, v33, 16, 1
	v_bfe_u32 v42, v32, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v46.h, s1
	v_add3_u32 v39, v34, v39, 0x7fff
	v_cmp_o_f32_e64 s1, v34, v34
	v_bfe_u32 v34, v31, 16, 1
	v_add3_u32 v37, v33, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v33, v33
	v_add3_u32 v33, v32, v42, 0x7fff
	v_cmp_o_f32_e64 s7, v32, v32
	v_add3_u32 v32, v31, v34, 0x7fff
	v_bfe_u32 v34, v30, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s8
	v_cmp_o_f32_e64 s8, v31, v31
	v_cndmask_b16 v31.h, 0x7fff, v37.h, s6
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s7
	v_bfe_u32 v33, v29, 16, 1
	v_bfe_u32 v37, v28, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v39.h, s1
	v_add3_u32 v34, v30, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v30, v30
	v_bfe_u32 v30, v27, 16, 1
	v_add3_u32 v33, v29, v33, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_add3_u32 v29, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s7, v28, v28
	v_add3_u32 v28, v27, v30, 0x7fff
	v_bfe_u32 v30, v26, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s8
	v_cmp_o_f32_e64 s8, v27, v27
	v_cndmask_b16 v27.h, 0x7fff, v33.h, s6
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v25, 16, 1
	v_bfe_u32 v33, v24, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v34.h, s1
	v_add3_u32 v30, v26, v30, 0x7fff
	v_cmp_o_f32_e64 s1, v26, v26
	v_bfe_u32 v26, v23, 16, 1
	v_add3_u32 v29, v25, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v25, v24, v33, 0x7fff
	v_cmp_o_f32_e64 s7, v24, v24
	v_add3_u32 v24, v23, v26, 0x7fff
	v_bfe_u32 v26, v22, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s8
	v_cmp_o_f32_e64 s8, v23, v23
	v_cndmask_b16 v23.h, 0x7fff, v29.h, s6
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s7
	v_bfe_u32 v25, v21, 16, 1
	v_bfe_u32 v29, v20, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v30.h, s1
	v_add3_u32 v26, v22, v26, 0x7fff
	v_cmp_o_f32_e64 s1, v22, v22
	v_bfe_u32 v22, v19, 16, 1
	v_add3_u32 v25, v21, v25, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_add3_u32 v21, v20, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_add3_u32 v20, v19, v22, 0x7fff
	v_bfe_u32 v22, v18, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s8
	v_cmp_o_f32_e64 s8, v19, v19
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s7
	v_bfe_u32 v21, v17, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v26.h, s1
	v_cndmask_b16 v19.h, 0x7fff, v25.h, s6
	v_add3_u32 v22, v18, v22, 0x7fff
	v_bfe_u32 v25, v16, 16, 1
	v_cmp_o_f32_e64 s1, v18, v18
	v_bfe_u32 v18, v15, 16, 1
	v_add3_u32 v21, v17, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s8
	v_add3_u32 v17, v16, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v16, v15, v18, 0x7fff
	v_cmp_o_f32_e64 s8, v15, v15
	v_cndmask_b16 v15.l, 0x7fff, v22.h, s1
	v_cmp_eq_u32_e64 s1, 0, v4
	v_cndmask_b16 v15.h, 0x7fff, v21.h, s6
	v_cndmask_b16 v4.l, 0x7fff, v17.h, s7
	v_cndmask_b16 v4.h, 0x7fff, v16.h, s8
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v16, v9, v7, s1
	v_cndmask_b32_e64 v7, v7, v9, s1
	v_cndmask_b32_e64 v18, v13, v10, s1
	v_cndmask_b32_e64 v9, v10, v13, s1
	v_cndmask_b32_e64 v21, v38, v12, s1
	v_cndmask_b32_e64 v10, v12, v38, s1
	v_cndmask_b32_e64 v30, v40, v48, s1
	v_cndmask_b32_e64 v33, v48, v40, s1
	v_cndmask_b32_e64 v38, v31, v35, s1
	v_cndmask_b32_e64 v31, v35, v31, s1
	v_cndmask_b32_e64 v35, v32, v36, s1
	v_cndmask_b32_e64 v32, v36, v32, s1
	v_cndmask_b32_e64 v36, v23, v27, s1
	v_cndmask_b32_e64 v23, v27, v23, s1
	v_cndmask_b32_e64 v40, v15, v19, s1
	v_cndmask_b32_e64 v15, v19, v15, s1
	v_mov_b32_e32 v19, 0x5410
	v_mov_b32_e32 v27, 0x7632
	v_cndmask_b32_e64 v17, v11, v8, s1
	v_cndmask_b32_e64 v8, v8, v11, s1
	v_cndmask_b32_e64 v34, v41, v49, s1
	v_cndmask_b32_e64 v37, v49, v41, s1
	v_cndmask_b32_e64 v41, v4, v20, s1
	v_cndmask_b32_e64 v4, v20, v4, s1
	v_permlanex16_b32 v20, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x1054, v19, s1
	v_cndmask_b32_e64 v19, 0x3276, v27, s1
	v_permlanex16_b32 v27, v8, s6, 0xfedcba98 op_sel:[1,0]
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v1, s27, v1
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v11, v14, v44, s1
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v19, 8, v19
	v_cndmask_b32_e64 v12, v43, v47, s1
	v_cndmask_b32_e64 v13, v45, v52, s1
	v_cndmask_b32_e64 v39, v24, v28, s1
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_cndmask_b32_e64 v24, v28, v24, s1
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v2, 0x80, v1
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v22, v44, v14, s1
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_cndmask_b32_e64 v25, v47, v43, s1
	v_cndmask_b32_e64 v14, v56, v53, s1
	v_permlanex16_b32 v28, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s6, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v47, 0x5040504, v7
	v_and_b32_e32 v48, 0x7060706, v8
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v26, v52, v45, s1
	v_permlanex16_b32 v19, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v12, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v13, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v37, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v24, s6, 0xfedcba98 op_sel:[1,0]
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v2
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v29, v53, v56, s1
	v_permlanex16_b32 v42, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v14, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v23, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v15, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v27, v17, v47
	v_perm_b32 v10, v27, v17, v48
	v_perm_b32 v11, v28, v18, v47
	v_perm_b32 v12, v28, v18, v48
	v_perm_b32 v27, v31, v38, v47
	v_perm_b32 v28, v31, v38, v48
	v_add_lshl_u32 v38, v1, v6, 1
	v_permlanex16_b32 v4, v4, s6, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v6, v2, v6, 1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, s0, s5
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v7, v20, v16, v47
	v_perm_b32 v8, v20, v16, v48
	v_perm_b32 v15, v19, v22, v47
	v_perm_b32 v16, v19, v22, v48
	v_perm_b32 v17, v43, v25, v47
	v_perm_b32 v18, v43, v25, v48
	v_perm_b32 v19, v44, v26, v47
	v_perm_b32 v20, v44, v26, v48
	v_perm_b32 v23, v33, v30, v47
	v_perm_b32 v24, v33, v30, v48
	v_perm_b32 v25, v37, v34, v47
	v_perm_b32 v26, v37, v34, v48
	v_perm_b32 v33, v49, v39, v47
	v_perm_b32 v34, v49, v39, v48
	v_add_lshl_u32 v39, v1, v5, 1
	v_perm_b32 v13, v42, v21, v47
	v_perm_b32 v14, v42, v21, v48
	v_perm_b32 v21, v45, v29, v47
	v_perm_b32 v22, v45, v29, v48
	v_perm_b32 v29, v32, v35, v47
	v_perm_b32 v30, v32, v35, v48
	v_perm_b32 v31, v46, v36, v47
	v_perm_b32 v32, v46, v36, v48
	v_perm_b32 v35, v50, v40, v47
	v_perm_b32 v36, v50, v40, v48
	v_cndmask_b32_e64 v40, 0x80000000, v38, s1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, vcc_lo, s5
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v37, v4, v41, v47
	v_perm_b32 v38, v4, v41, v48
	v_add_lshl_u32 v4, v2, v5, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, s0, s4
	.loc	1 509 9                         ; ragged.py:509:9
	v_add_lshl_u32 v5, v1, v3, 1
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, vcc_lo, s4
	.loc	1 509 9                         ; ragged.py:509:9
	v_add_lshl_u32 v3, v2, v3, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, s0, s3
	.loc	1 509 9                         ; ragged.py:509:9
	v_add_lshl_u32 v1, v1, v0, 1
	v_add_lshl_u32 v0, v2, v0, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, vcc_lo, s3
	s_and_b32 s0, s0, s2
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v2, 0x80000000, v3, s1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 509 9                         ; ragged.py:509:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x7
	buffer_store_b128 v[7:10], v40, s[24:27], 0 offen
	buffer_store_b128 v[11:14], v6, s[24:27], 0 offen
	buffer_store_b128 v[15:18], v39, s[24:27], 0 offen
	buffer_store_b128 v[19:22], v4, s[24:27], 0 offen
	buffer_store_b128 v[23:26], v5, s[24:27], 0 offen
	buffer_store_b128 v[27:30], v2, s[24:27], 0 offen
	buffer_store_b128 v[31:34], v1, s[24:27], 0 offen
	buffer_store_b128 v[35:38], v0, s[24:27], 0 offen
	.loc	1 374 5                         ; ragged.py:374:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 194
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
		.amdhsa_inst_pref_size 57
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 194
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7276
; TotalNumSgprs: 42
; NumVgprs: 194
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 194
; Occupancy: 7
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     194
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
