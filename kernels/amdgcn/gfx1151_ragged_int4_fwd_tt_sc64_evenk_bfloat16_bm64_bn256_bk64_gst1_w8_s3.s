	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 374 0                         ; ragged.py:374:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[22:23], s[0:1], 0x54
.Ltmp0:
	.loc	1 402 25 prologue_end           ; ragged.py:402:25
	s_abs_i32 s7, s2
	.loc	1 413 18                        ; ragged.py:413:18
	v_dual_mov_b32 v27, 0 :: v_dual_and_b32 v64, 16, v0
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
	s_sub_i32 s4, s23, s8
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
	s_ashr_i32 s11, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s11
	s_sub_i32 s12, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 406 34                        ; ragged.py:406:34
	s_mul_i32 s3, s12, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 406 20 is_stmt 0              ; ragged.py:406:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 409 20 is_stmt 1              ; ragged.py:409:20
	s_ashr_i32 s3, s2, 31
	.loc	1 410 23                        ; ragged.py:410:23
	s_lshl_b64 s[24:25], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s24
	s_addc_u32 s3, s5, s25
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 411 24                        ; ragged.py:411:24
	s_add_u32 s2, s6, s24
	s_addc_u32 s3, s7, s25
	.loc	1 412 22                        ; ragged.py:412:22
	s_add_u32 s4, s8, s24
	s_addc_u32 s5, s9, s25
	.loc	1 411 24                        ; ragged.py:411:24
	s_load_b64 s[28:29], s[2:3], 0x0
	.loc	1 412 22                        ; ragged.py:412:22
	s_load_b64 s[30:31], s[4:5], 0x0
	.loc	1 413 18                        ; ragged.py:413:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s10, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s11, 0, s2
	.loc	1 494 25                        ; ragged.py:494:25
	v_add_nc_u32_e32 v46, s10, v1
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
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[2:3]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s2, s[30:31], v[2:3]
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s3, s[28:29], v[4:5]
	v_cmp_le_i64_e64 s6, s[28:29], v[6:7]
	v_cmp_le_i64_e64 s7, s[28:29], v[8:9]
	.loc	1 415 48                        ; ragged.py:415:48
	v_cmp_gt_i64_e64 s4, s[30:31], v[4:5]
	v_cmp_gt_i64_e64 s8, s[30:31], v[6:7]
	v_cmp_gt_i64_e64 s9, s[30:31], v[8:9]
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 464 19 is_stmt 1              ; ragged.py:464:19
	s_cmp_gt_i32 s22, 0
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
.LBB0_3:                                ; %Flow211
	s_load_b64 s[20:21], s[0:1], 0x40
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v55, 0xf0, v0
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v52, 16, v46
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v53, 32, v46
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v54, 48, v46
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v97, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s23, s12, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s9, s[0:1], 0x50
	s_load_b32 s34, s[0:1], 0x48
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v4, 63, v0
	.loc	1 414 36 is_stmt 1              ; ragged.py:414:36
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 413 18                        ; ragged.py:413:18
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v7, 3, v0
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v6, 1, v0
	v_lshrrev_b32_e32 v8, 2, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v5, s23, v5
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v10, 1, v0
	v_dual_mov_b32 v96, 0 :: v_dual_lshlrev_b32 v103, 4, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v111, 0x78, v7, v8
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v8, 2, v55
	.loc	1 409 20                        ; ragged.py:409:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s24
	s_addc_u32 s1, s7, s25
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v6, 5, v6
	.loc	1 501 25                        ; ragged.py:501:25
	s_load_b32 s8, s[0:1], 0x0
	.loc	1 413 18                        ; ragged.py:413:18
	v_add_co_u32 v2, s0, s10, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s11, 0, s0
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v9, 0x80, v5
	.loc	1 475 39                        ; ragged.py:475:39
	s_mul_i32 s11, s9, s33
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v112, 0, v1
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s6, s[28:29], v[2:3]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s7, s[30:31], v[2:3]
	v_or_b32_e32 v2, 0x300, v0
	v_or_b32_e32 v3, 0x700, v0
	v_or_b32_e32 v1, 0x3f0, v0
	v_or_b32_e32 v7, 0x7f0, v0
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v10, 28, v10
	v_add3_u32 v6, 0, v8, v6
	.loc	1 461 28 is_stmt 1              ; ragged.py:461:28
	v_lshrrev_b32_e32 v98, 6, v0
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v8, 1, v55
	.loc	1 475 39                        ; ragged.py:475:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s24, s11, s8
	s_and_b32 s13, s13, 0xffff
	.loc	1 501 25                        ; ragged.py:501:25
	s_mul_i32 s35, s22, s8
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s8, 0
	v_mad_u64_u32 v[25:26], null, v5, s9, s[24:25]
	.loc	1 494 25                        ; ragged.py:494:25
	v_mul_lo_u32 v99, v46, s22
	v_mul_lo_u32 v100, v52, s22
	v_mul_lo_u32 v101, v53, s22
	v_mul_lo_u32 v102, v54, s22
	v_mad_u64_u32 v[26:27], null, s9, v9, s[24:25]
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v24, s10, v4
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s28, s14
	s_mov_b32 s29, s15
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v94, s23, v0
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s0, s33, v5
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v114, 0, v0
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v115, 0, v2
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v116, 0, v3
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v117, 0, v1
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v118, 0, v7
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v119, v6, v10
	v_mov_b32_e32 v0, s8
	.loc	1 461 28                        ; ragged.py:461:28
	v_or_b32_e32 v104, 4, v98
	v_or_b32_e32 v105, 8, v98
	v_or_b32_e32 v106, 12, v98
	v_or_b32_e32 v107, 16, v98
	v_or_b32_e32 v108, 20, v98
	v_or_b32_e32 v109, 24, v98
	v_or_b32_e32 v110, 28, v98
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s1, s33, v9
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s6, s6, s7
	v_xor_b32_e32 v113, 4, v111
	v_cmp_eq_u32_e64 s7, 0, v64
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v120, 0, v8
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v1, s9
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v3, s11
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v5, s13
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v7, s15
	v_mov_b32_e32 v2, s10
	v_mov_b32_e32 v4, s12
	v_mov_b32_e32 v6, s14
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s36, s16
	s_mov_b32 s37, s17
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v94
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 466 28                        ; ragged.py:466:28
	s_lshl_b32 s9, s8, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v8, s9, v98
	v_or_b32_e32 v10, s9, v104
	v_or_b32_e32 v11, s9, v105
	v_or_b32_e32 v12, s9, v106
	v_or_b32_e32 v13, s9, v107
	v_or_b32_e32 v15, s9, v103
	v_or_b32_e32 v14, s9, v108
	v_mad_u64_u32 v[8:9], null, v8, s34, v[24:25]
	v_or_b32_e32 v16, s9, v109
	v_mad_u64_u32 v[9:10], null, v10, s34, v[24:25]
	v_or_b32_e32 v17, s9, v110
	v_mad_u64_u32 v[10:11], null, v11, s34, v[24:25]
	v_mad_u64_u32 v[11:12], null, v12, s34, v[24:25]
	v_mad_u64_u32 v[12:13], null, v13, s34, v[24:25]
	v_mad_u64_u32 v[13:14], null, v14, s34, v[24:25]
	v_add_nc_u32_e32 v18, v25, v15
	v_add_nc_u32_e32 v19, v26, v15
	v_mad_u64_u32 v[14:15], null, v16, s34, v[24:25]
	v_mad_u64_u32 v[15:16], null, v17, s34, v[24:25]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v16, 0x80000000, v18, s0
	v_cndmask_b32_e64 v17, 0x80000000, v19, s1
	v_cndmask_b32_e64 v18, 0x80000000, v8, s6
	v_cndmask_b32_e64 v19, 0x80000000, v9, s6
	v_cndmask_b32_e64 v20, 0x80000000, v10, s6
	v_cndmask_b32_e64 v21, 0x80000000, v11, s6
	v_cndmask_b32_e64 v22, 0x80000000, v12, s6
	v_cndmask_b32_e64 v23, 0x80000000, v13, s6
	v_cndmask_b32_e64 v121, 0x80000000, v14, s6
	v_cndmask_b32_e64 v122, 0x80000000, v15, s6
	.loc	1 479 34                        ; ragged.py:479:34
	s_clause 0x1
	buffer_load_b128 v[8:11], v16, s[28:31], 0 offen
	buffer_load_b128 v[12:15], v17, s[28:31], 0 offen
	.loc	1 478 34                        ; ragged.py:478:34
	s_clause 0x7
	buffer_load_u8 v16, v18, s[24:27], 0 offen
	buffer_load_u8 v17, v19, s[24:27], 0 offen
	buffer_load_u8 v18, v20, s[24:27], 0 offen
	buffer_load_u8 v19, v21, s[24:27], 0 offen
	buffer_load_u8 v20, v22, s[24:27], 0 offen
	buffer_load_u8 v21, v23, s[24:27], 0 offen
	buffer_load_u8 v22, v121, s[24:27], 0 offen
	buffer_load_u8 v23, v122, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 501 25                        ; ragged.py:501:25
	s_add_i32 s9, s8, s35
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt vmcnt(7)
	ds_store_b8 v114, v16
	s_waitcnt vmcnt(6)
	ds_store_b8 v114, v17 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v114, v18 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v115, v19
	s_waitcnt vmcnt(3)
	ds_store_b8 v114, v20 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b8 v114, v21 offset:1280
	s_waitcnt vmcnt(1)
	ds_store_b8 v114, v22 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v116, v23
	.loc	1 479 34                        ; ragged.py:479:34
	ds_bpermute_b32 v121, v111, v8
	ds_bpermute_b32 v122, v111, v9
	ds_bpermute_b32 v123, v111, v10
	ds_bpermute_b32 v124, v111, v11
	ds_bpermute_b32 v8, v113, v8
	ds_bpermute_b32 v9, v113, v9
	ds_bpermute_b32 v10, v113, v10
	ds_bpermute_b32 v11, v113, v11
	ds_bpermute_b32 v125, v111, v12
	ds_bpermute_b32 v126, v111, v13
	ds_bpermute_b32 v127, v111, v14
	ds_bpermute_b32 v128, v111, v15
	ds_bpermute_b32 v12, v113, v12
	ds_bpermute_b32 v13, v113, v13
	ds_bpermute_b32 v129, v113, v14
	ds_bpermute_b32 v130, v113, v15
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 480 31                        ; ragged.py:480:31
	ds_load_u8 v131, v112 offset:320
	ds_load_u8 v132, v112 offset:256
	ds_load_u8 v133, v112 offset:448
	ds_load_u8 v134, v112 offset:384
	ds_load_u8 v135, v112 offset:64
	ds_load_u8 v136, v112
	ds_load_u8 v137, v112 offset:16
	ds_load_u8 v138, v112 offset:192
	ds_load_u8 v139, v112 offset:128
	ds_load_u8 v140, v112 offset:832
	ds_load_u8 v141, v112 offset:768
	ds_load_u8 v142, v112 offset:960
	ds_load_u8 v143, v112 offset:896
	ds_load_u8 v144, v112 offset:576
	ds_load_u8 v145, v112 offset:512
	ds_load_u8 v146, v112 offset:704
	ds_load_u8 v147, v112 offset:640
	ds_load_u8 v148, v112 offset:1344
	ds_load_u8 v149, v112 offset:1280
	ds_load_u8 v150, v112 offset:1472
	ds_load_u8 v151, v112 offset:1408
	ds_load_u8 v152, v112 offset:1088
	ds_load_u8 v153, v112 offset:1024
	ds_load_u8 v154, v112 offset:1216
	ds_load_u8 v155, v112 offset:1152
	ds_load_u8 v156, v112 offset:1856
	ds_load_u8 v157, v112 offset:1792
	ds_load_u8 v158, v112 offset:1984
	ds_load_u8 v159, v112 offset:1920
	ds_load_u8 v160, v112 offset:1600
	ds_load_u8 v161, v112 offset:1536
	ds_load_u8 v162, v112 offset:1728
	ds_load_u8 v163, v112 offset:1664
	ds_load_u8 v164, v112 offset:336
	ds_load_u8 v165, v112 offset:272
	ds_load_u8 v166, v112 offset:464
	ds_load_u8 v167, v112 offset:400
	.loc	1 501 25                        ; ragged.py:501:25
	s_mul_i32 s9, s9, s33
	.loc	1 479 34                        ; ragged.py:479:34
	v_cndmask_b32_e64 v18, v8, v121, s7
	v_cndmask_b32_e64 v16, v121, v8, s7
	v_cndmask_b32_e64 v19, v9, v122, s7
	v_cndmask_b32_e64 v17, v122, v9, s7
	v_cndmask_b32_e64 v22, v10, v123, s7
	v_cndmask_b32_e64 v20, v123, v10, s7
	v_cndmask_b32_e64 v23, v11, v124, s7
	v_cndmask_b32_e64 v21, v124, v11, s7
	v_cndmask_b32_e64 v10, v12, v125, s7
	v_cndmask_b32_e64 v8, v125, v12, s7
	v_cndmask_b32_e64 v11, v13, v126, s7
	v_cndmask_b32_e64 v9, v126, v13, s7
	v_cndmask_b32_e64 v14, v129, v127, s7
	v_cndmask_b32_e64 v12, v127, v129, s7
	v_cndmask_b32_e64 v15, v130, v128, s7
	v_cndmask_b32_e64 v13, v128, v130, s7
	.loc	1 480 31                        ; ragged.py:480:31
	ds_load_u8 v121, v112 offset:80
	ds_load_u8 v122, v112 offset:208
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v123, v132, v131, 0xc0c0004
	ds_load_u8 v124, v112 offset:144
	ds_load_u8 v126, v112 offset:848
	ds_load_u8 v132, v112 offset:912
	ds_load_u8 v128, v112 offset:784
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v125, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v127, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v129, v139, v138, 0xc0c0004
	ds_load_u8 v130, v112 offset:976
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v131, v141, v140, 0xc0c0004
	ds_load_u8 v134, v112 offset:592
	ds_load_u8 v138, v112 offset:720
	ds_load_u8 v140, v112 offset:656
	ds_load_u8 v136, v112 offset:528
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v133, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v135, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v139, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v141, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v142, v151, v150, 0xc0c0004
	ds_load_u8 v143, v112 offset:1360
	ds_load_u8 v149, v112 offset:1424
	ds_load_u8 v145, v112 offset:1296
	ds_load_u8 v151, v112 offset:1104
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v144, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v146, v155, v154, 0xc0c0004
	ds_load_u8 v147, v112 offset:1488
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v148, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v150, v159, v158, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v152, v161, v160, 0xc0c0004
	ds_load_u8 v155, v112 offset:1232
	ds_load_u8 v157, v112 offset:1168
	ds_load_u8 v153, v112 offset:1040
	ds_load_u8 v159, v112 offset:1872
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v121, v137, v121, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v122, v124, v122, 0xc0c0004
	ds_load_u8 v124, v112 offset:2000
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v126, v128, v126, 0xc0c0004
	ds_load_u8 v128, v112 offset:1936
	ds_load_u8 v137, v112 offset:1808
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v130, v132, v130, 0xc0c0004
	ds_load_u8 v132, v112 offset:1616
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v134, v136, v134, 0xc0c0004
	v_perm_b32 v160, v140, v138, 0xc0c0004
	ds_load_u8 v138, v112 offset:1744
	ds_load_u8 v140, v112 offset:1680
	ds_load_u8 v136, v112 offset:1552
	v_perm_b32 v156, v165, v164, 0xc0c0004
	v_perm_b32 v158, v167, v166, 0xc0c0004
	v_perm_b32 v154, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v161, v145, v143, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v149, v149, v147, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v151, v153, v151, 0xc0c0004
	v_perm_b32 v153, v157, v155, 0xc0c0004
	v_lshl_or_b32 v142, v142, 16, v141
	v_lshl_or_b32 v141, v146, 16, v144
	v_lshl_or_b32 v146, v158, 16, v156
	v_lshl_or_b32 v145, v122, 16, v121
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v124, v128, v124, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v155, v137, v159, 0xc0c0004
	v_lshl_or_b32 v137, v129, 16, v127
	v_lshl_or_b32 v139, v139, 16, v135
	v_lshl_or_b32 v144, v150, 16, v148
	v_lshl_or_b32 v143, v154, 16, v152
	v_lshl_or_b32 v148, v130, 16, v126
	v_lshl_or_b32 v147, v160, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v136, v132, 0xc0c0004
	v_perm_b32 v132, v140, v138, 0xc0c0004
	v_lshl_or_b32 v138, v125, 16, v123
	v_lshl_or_b32 v140, v133, 16, v131
	v_lshl_or_b32 v150, v149, 16, v161
	v_lshl_or_b32 v149, v153, 16, v151
	v_lshl_or_b32 v152, v124, 16, v155
	v_lshl_or_b32 v151, v132, 16, v128
	v_wmma_i32_16x16x16_iu4 v[121:128], v[18:19], v[137:138], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[18:19], v[145:146], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[10:11], v[137:138], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[22:23], v[139:140], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[22:23], v[147:148], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[161:168], v[10:11], v[145:146], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[14:15], v[139:140], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[16:17], v[141:142], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[153:160], v[16:17], v[149:150], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[161:168], v[14:15], v[147:148], v[161:168] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[8:9], v[141:142], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[20:21], v[143:144], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[153:160], v[20:21], v[151:152], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[161:168], v[8:9], v[149:150], v[161:168] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[12:13], v[143:144], v[129:136] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v137, v121
	v_cvt_f32_i32_e32 v138, v122
	v_cvt_f32_i32_e32 v139, v123
	v_cvt_f32_i32_e32 v140, v124
	v_cvt_f32_i32_e32 v141, v125
	v_cvt_f32_i32_e32 v142, v126
	v_cvt_f32_i32_e32 v143, v127
	v_cvt_f32_i32_e32 v121, v153
	v_cvt_f32_i32_e32 v122, v154
	v_cvt_f32_i32_e32 v123, v155
	v_cvt_f32_i32_e32 v124, v156
	v_cvt_f32_i32_e32 v125, v157
	v_cvt_f32_i32_e32 v126, v158
	v_cvt_f32_i32_e32 v127, v159
	.loc	1 480 31                        ; ragged.py:480:31
	ds_load_u8 v154, v112 offset:352
	ds_load_u8 v156, v112 offset:288
	ds_load_u8 v153, v112 offset:480
	ds_load_u8 v155, v112 offset:416
	ds_load_u8 v157, v112 offset:32
	ds_load_u8 v158, v112 offset:96
	ds_load_u8 v159, v112 offset:224
	v_wmma_i32_16x16x16_iu4 v[161:168], v[12:13], v[151:152], v[161:168] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v144, v128
	v_cvt_f32_i32_e32 v145, v129
	v_cvt_f32_i32_e32 v146, v130
	v_cvt_f32_i32_e32 v147, v131
	v_cvt_f32_i32_e32 v148, v132
	v_cvt_f32_i32_e32 v149, v133
	v_cvt_f32_i32_e32 v150, v134
	v_cvt_f32_i32_e32 v151, v135
	v_cvt_f32_i32_e32 v152, v136
	v_cvt_f32_i32_e32 v128, v160
	v_cvt_f32_i32_e32 v129, v161
	v_cvt_f32_i32_e32 v130, v162
	v_cvt_f32_i32_e32 v131, v163
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v154, v156, v154, 0xc0c0004
	ds_load_u8 v156, v112 offset:160
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	ds_load_u8 v155, v112 offset:864
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v157, v157, v158, 0xc0c0004
	ds_load_u8 v158, v112 offset:800
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v132, v164
	.loc	1 480 31                        ; ragged.py:480:31
	v_lshl_or_b32 v170, v153, 16, v154
	ds_load_u8 v153, v112 offset:928
	ds_load_u8 v154, v112 offset:608
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v133, v165
	v_cvt_f32_i32_e32 v134, v166
	v_cvt_f32_i32_e32 v135, v167
	v_cvt_f32_i32_e32 v136, v168
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v156, v156, v159, 0xc0c0004
	ds_load_u8 v159, v112 offset:992
	v_lshl_or_b32 v169, v156, 16, v157
	ds_load_u8 v156, v112 offset:544
	ds_load_u8 v157, v112 offset:736
	v_wmma_i32_16x16x16_iu4 v[161:168], v[10:11], v[169:170], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v153, v153, v159, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v154, v156, v154, 0xc0c0004
	ds_load_u8 v156, v112 offset:672
	v_perm_b32 v155, v158, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v153, 16, v155
	ds_load_u8 v155, v112 offset:1440
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v156, v156, v157, 0xc0c0004
	ds_load_u8 v157, v112 offset:1376
	v_lshl_or_b32 v171, v156, 16, v154
	ds_load_u8 v153, v112 offset:1312
	ds_load_u8 v154, v112 offset:1504
	v_wmma_i32_16x16x16_iu4 v[161:168], v[14:15], v[171:172], v[161:168] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v153, v153, v157, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v112 offset:1120
	ds_load_u8 v156, v112 offset:1056
	v_lshl_or_b32 v174, v154, 16, v153
	ds_load_u8 v153, v112 offset:1888
	ds_load_u8 v154, v112 offset:1824
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v112 offset:1248
	ds_load_u8 v157, v112 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v156, 16, v155
	ds_load_u8 v154, v112 offset:2016
	ds_load_u8 v155, v112 offset:1952
	v_wmma_i32_16x16x16_iu4 v[161:168], v[8:9], v[173:174], v[161:168] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v112 offset:1632
	ds_load_u8 v156, v112 offset:1568
	v_lshl_or_b32 v176, v154, 16, v153
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v112 offset:1760
	ds_load_u8 v157, v112 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v156, 16, v155
	v_wmma_i32_16x16x16_iu4 v[153:160], v[18:19], v[169:170], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v169, v112 offset:368
	ds_load_u8 v170, v112 offset:304
	v_wmma_i32_16x16x16_iu4 v[161:168], v[12:13], v[175:176], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[22:23], v[171:172], v[153:160] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v163, v163
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[153:160], v[16:17], v[173:174], v[153:160] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[153:160], v[20:21], v[175:176], v[153:160] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v168, v168
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v159, v159
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v112 offset:496
	ds_load_u8 v171, v112 offset:432
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v157, v157
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v112 offset:48
	ds_load_u8 v172, v112 offset:112
	v_lshl_or_b32 v178, v170, 16, v169
	ds_load_u8 v169, v112 offset:624
	ds_load_u8 v170, v112 offset:560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v171, v171, v172, 0xc0c0004
	ds_load_u8 v172, v112 offset:240
	ds_load_u8 v173, v112 offset:176
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v172, 16, v171
	ds_load_u8 v170, v112 offset:752
	ds_load_u8 v171, v112 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v112 offset:880
	ds_load_u8 v172, v112 offset:816
	v_lshl_or_b32 v179, v170, 16, v169
	ds_load_u8 v169, v112 offset:1392
	ds_load_u8 v170, v112 offset:1328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v117
	ds_load_u8 v173, v112 offset:944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v172, 16, v171
	ds_load_u8 v170, v112 offset:1520
	ds_load_u8 v171, v112 offset:1456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v112 offset:1136
	ds_load_u8 v172, v112 offset:1072
	v_lshl_or_b32 v182, v170, 16, v169
	ds_load_u8 v169, v112 offset:1648
	ds_load_u8 v170, v112 offset:1584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v112 offset:1264
	ds_load_u8 v173, v112 offset:1200
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v172, 16, v171
	ds_load_u8 v170, v112 offset:1776
	ds_load_u8 v171, v112 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v112 offset:1904
	ds_load_u8 v172, v112 offset:1840
	v_lshl_or_b32 v183, v170, 16, v169
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v118
	ds_load_u8 v173, v112 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v184, v172, 16, v171
	v_wmma_i32_16x16x16_iu4 v[169:176], v[18:19], v[177:178], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[169:176], v[22:23], v[179:180], v[169:176] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[169:176], v[16:17], v[181:182], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[169:176], v[20:21], v[183:184], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[10:11], v[177:178], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v188, v172
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[16:23], v[14:15], v[179:180], v[16:23] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v185, v169
	v_cvt_f32_i32_e32 v186, v170
	v_cvt_f32_i32_e32 v187, v171
	v_cvt_f32_i32_e32 v173, v173
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[16:23], v[8:9], v[181:182], v[16:23] neg_lo:[1,1,0]
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[16:23], v[12:13], v[183:184], v[16:23] neg_lo:[1,1,0]
	.loc	1 493 40                        ; ragged.py:493:40
	v_add_lshl_u32 v12, s8, v99, 1
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v178, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 493 40                        ; ragged.py:493:40
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v11, v19
	v_cvt_f32_i32_e32 v10, v18
	v_cvt_f32_i32_e32 v8, v16
	v_cvt_f32_i32_e32 v9, v17
	.loc	1 493 40                        ; ragged.py:493:40
	buffer_load_u16 v12, v12, s[36:39], 0 offen
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v177, v20
	v_cvt_f32_i32_e32 v179, v22
	v_cvt_f32_i32_e32 v180, v23
	.loc	1 493 40                        ; ragged.py:493:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v172, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v12, v137, v172
	.loc	1 493 40                        ; ragged.py:493:40
	v_add_lshl_u32 v137, s8, v100, 1
	v_cndmask_b32_e64 v137, 0x80000000, v137, s4
	buffer_load_u16 v137, v137, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v137, 16, v137
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v181, v121, v137
	v_dual_mul_f32 v21, v146, v172 :: v_dual_mul_f32 v192, v128, v137
	.loc	1 493 40                        ; ragged.py:493:40
	v_add_lshl_u32 v128, s8, v101, 1
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v19, v144, v172
	.loc	1 493 40                        ; ragged.py:493:40
	v_add_lshl_u32 v144, s8, v102, 1
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v18, v143, v172
	v_mul_f32_e32 v13, v138, v172
	.loc	1 493 40                        ; ragged.py:493:40
	v_cndmask_b32_e64 v128, 0x80000000, v128, s3
	.loc	1 507 17                        ; ragged.py:507:17
	s_add_i32 s8, s8, 1
	.loc	1 493 40                        ; ragged.py:493:40
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	.loc	1 464 19                        ; ragged.py:464:19
	s_cmp_lg_u32 s8, s22
	.loc	1 493 40                        ; ragged.py:493:40
	s_clause 0x1
	buffer_load_u16 v128, v128, s[36:39], 0 offen
	buffer_load_u16 v144, v144, s[36:39], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v143, 16, v128
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v128, v153, v143
	v_dual_mul_f32 v14, v139, v172 :: v_dual_mul_f32 v189, v125, v137
	v_dual_mul_f32 v15, v140, v172 :: v_dual_mul_f32 v182, v122, v137
	v_dual_mul_f32 v16, v141, v172 :: v_dual_mul_f32 v183, v123, v137
	v_dual_mul_f32 v17, v142, v172 :: v_dual_mul_f32 v184, v124, v137
	v_dual_mul_f32 v20, v145, v172 :: v_dual_mul_f32 v191, v127, v137
	v_dual_mul_f32 v22, v147, v172 :: v_dual_mul_f32 v121, v130, v137
	v_dual_mul_f32 v23, v148, v172 :: v_dual_mul_f32 v122, v131, v137
	v_mul_f32_e32 v169, v149, v172
	v_dual_mul_f32 v170, v150, v172 :: v_dual_mul_f32 v123, v132, v137
	v_dual_mul_f32 v171, v151, v172 :: v_dual_mul_f32 v124, v133, v137
	v_dual_mul_f32 v172, v152, v172 :: v_dual_mul_f32 v125, v134, v137
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v134, v159, v143 :: v_dual_lshlrev_b32 v159, 16, v144
	v_mul_f32_e32 v193, v129, v137
	v_mul_f32_e32 v190, v126, v137
	v_mul_f32_e32 v126, v135, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v152, v8, v159
	.loc	1 500 40                        ; ragged.py:500:40
	v_add_lshl_u32 v8, v94, s9, 1
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v144, v185, v159
	v_mul_f32_e32 v129, v154, v143
	v_dual_mul_f32 v127, v136, v137 :: v_dual_mul_f32 v130, v155, v143
	.loc	1 500 40                        ; ragged.py:500:40
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_mul_f32 v153, v9, v159
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v154, v10, v159
	v_mul_f32_e32 v155, v11, v159
	.loc	1 500 40                        ; ragged.py:500:40
	buffer_load_u16 v8, v8, s[16:19], 0 offen
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v131, v156, v143
	.loc	1 505 21                        ; ragged.py:505:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 500 40                        ; ragged.py:500:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 505 21                        ; ragged.py:505:21
	ds_store_b32 v119, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v120
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v133, v158, v143
	v_mul_f32_e32 v135, v160, v143
	v_mul_f32_e32 v138, v163, v143
	v_mul_f32_e32 v147, v188, v159
	v_mul_f32_e32 v149, v174, v159
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v150, v175, v159 :: v_dual_fmac_f32 v81, v181, v8
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v66, v12, v8 :: v_dual_fmac_f32 v97, v13, v9
	v_dual_fmac_f32 v96, v14, v10 :: v_dual_fmac_f32 v95, v15, v11
	v_fmac_f32_e32 v42, v144, v8
	.loc	1 505 21                        ; ragged.py:505:21
	ds_load_b128 v[12:15], v120 offset:16
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v132, v157, v143
	v_mul_f32_e32 v136, v161, v143
	v_mul_f32_e32 v137, v162, v143
	v_mul_f32_e32 v151, v176, v159
	v_mul_f32_e32 v156, v177, v159
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v80, v182, v9 :: v_dual_fmac_f32 v79, v183, v10
	v_dual_fmac_f32 v78, v184, v11 :: v_dual_fmac_f32 v61, v130, v10
	v_dual_fmac_f32 v63, v128, v8 :: v_dual_fmac_f32 v62, v129, v9
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v93, v16, v12 :: v_dual_fmac_f32 v92, v17, v13
	v_dual_fmac_f32 v91, v18, v14 :: v_dual_fmac_f32 v90, v19, v15
	.loc	1 505 21                        ; ragged.py:505:21
	ds_load_b128 v[16:19], v120 offset:512
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v139, v164, v143
	v_mul_f32_e32 v140, v165, v143
	v_mul_f32_e32 v142, v167, v143
	v_mul_f32_e32 v141, v166, v143
	v_mul_f32_e32 v157, v178, v159
	v_dual_mul_f32 v158, v179, v159 :: v_dual_fmac_f32 v77, v189, v12
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v76, v190, v13 :: v_dual_fmac_f32 v75, v191, v14
	v_dual_fmac_f32 v74, v192, v15 :: v_dual_fmac_f32 v57, v134, v14
	v_dual_fmac_f32 v60, v131, v11 :: v_dual_fmac_f32 v59, v132, v12
	v_fmac_f32_e32 v58, v133, v13
	v_dual_fmac_f32 v56, v135, v15 :: v_dual_fmac_f32 v37, v149, v13
	v_dual_fmac_f32 v36, v150, v14 :: v_dual_fmac_f32 v35, v151, v15
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v89, v20, v16 :: v_dual_fmac_f32 v88, v21, v17
	v_dual_fmac_f32 v87, v22, v18 :: v_dual_fmac_f32 v86, v23, v19
	.loc	1 505 21                        ; ragged.py:505:21
	ds_load_b128 v[20:23], v120 offset:528
	.loc	1 498 21                        ; ragged.py:498:21
	v_mul_f32_e32 v143, v168, v143
	v_mul_f32_e32 v145, v186, v159
	v_mul_f32_e32 v146, v187, v159
	v_mul_f32_e32 v148, v173, v159
	.loc	1 506 17                        ; ragged.py:506:17
	v_fmac_f32_e32 v73, v193, v16
	v_dual_fmac_f32 v72, v121, v17 :: v_dual_fmac_f32 v71, v122, v18
	v_dual_fmac_f32 v70, v123, v19 :: v_dual_fmac_f32 v51, v136, v16
	v_dual_fmac_f32 v50, v137, v17 :: v_dual_fmac_f32 v49, v138, v18
	v_fmac_f32_e32 v48, v139, v19
	v_dual_fmac_f32 v39, v147, v11 :: v_dual_fmac_f32 v34, v152, v16
	v_dual_fmac_f32 v32, v154, v18 :: v_dual_fmac_f32 v31, v155, v19
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v85, v169, v20
	.loc	1 498 21                        ; ragged.py:498:21
	v_dual_mul_f32 v159, v180, v159 :: v_dual_fmac_f32 v40, v146, v10
	.loc	1 506 17                        ; ragged.py:506:17
	v_dual_fmac_f32 v84, v170, v21 :: v_dual_fmac_f32 v83, v171, v22
	v_dual_fmac_f32 v82, v172, v23 :: v_dual_fmac_f32 v67, v126, v22
	v_dual_fmac_f32 v69, v124, v20 :: v_dual_fmac_f32 v68, v125, v21
	v_dual_fmac_f32 v65, v127, v23 :: v_dual_fmac_f32 v38, v148, v12
	v_fmac_f32_e32 v47, v140, v20
	v_dual_fmac_f32 v45, v141, v21 :: v_dual_fmac_f32 v44, v142, v22
	v_fmac_f32_e32 v43, v143, v23
	v_dual_fmac_f32 v41, v145, v9 :: v_dual_fmac_f32 v30, v156, v20
	v_fmac_f32_e32 v33, v153, v17
	v_dual_fmac_f32 v29, v157, v21 :: v_dual_fmac_f32 v28, v158, v22
	v_fmac_f32_e32 v27, v159, v23
	.loc	1 464 19                        ; ragged.py:464:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_mov_b32_e32 v4, v64
.LBB0_7:                                ; %._crit_edge
	.loc	1 509 9 is_stmt 1               ; ragged.py:509:9
	v_bfe_u32 v7, v66, 16, 1
	v_bfe_u32 v8, v97, 16, 1
	v_bfe_u32 v10, v95, 16, 1
	v_bfe_u32 v9, v96, 16, 1
	v_cmp_o_f32_e64 s1, v66, v66
	v_add3_u32 v7, v66, v7, 0x7fff
	v_add3_u32 v8, v97, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v97, v97
	v_add3_u32 v10, v95, v10, 0x7fff
	v_cmp_o_f32_e64 s8, v95, v95
	v_bfe_u32 v11, v93, 16, 1
	v_add3_u32 v9, v96, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v96, v96
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s8
	v_add3_u32 v10, v93, v11, 0x7fff
	v_bfe_u32 v11, v91, 16, 1
	v_bfe_u32 v12, v90, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s7
	v_bfe_u32 v9, v92, 16, 1
	v_cmp_o_f32_e64 s1, v93, v93
	v_add3_u32 v11, v91, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v91, v91
	v_add3_u32 v12, v90, v12, 0x7fff
	v_cmp_o_f32_e64 s8, v90, v90
	v_add3_u32 v9, v92, v9, 0x7fff
	v_cmp_o_f32_e64 s6, v92, v92
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v89, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s7
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s8
	v_bfe_u32 v12, v88, 16, 1
	v_bfe_u32 v14, v86, 16, 1
	v_bfe_u32 v13, v87, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v10, v89, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v89, v89
	v_add3_u32 v12, v88, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v88, v88
	v_add3_u32 v14, v86, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v86, v86
	v_bfe_u32 v15, v85, 16, 1
	v_add3_u32 v13, v87, v13, 0x7fff
	v_cmp_o_f32_e64 s7, v87, v87
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s6
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s8
	v_add3_u32 v14, v85, v15, 0x7fff
	v_bfe_u32 v15, v83, 16, 1
	v_bfe_u32 v16, v82, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s7
	v_bfe_u32 v13, v84, 16, 1
	v_cmp_o_f32_e64 s1, v85, v85
	v_add3_u32 v15, v83, v15, 0x7fff
	v_cmp_o_f32_e64 s7, v83, v83
	v_add3_u32 v16, v82, v16, 0x7fff
	v_cmp_o_f32_e64 s8, v82, v82
	v_add3_u32 v13, v84, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v84, v84
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s1
	v_bfe_u32 v14, v81, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s7
	v_cndmask_b16 v15.h, 0x7fff, v16.h, s8
	v_bfe_u32 v16, v80, 16, 1
	v_bfe_u32 v18, v78, 16, 1
	v_bfe_u32 v17, v79, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s6
	v_add3_u32 v14, v81, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v81, v81
	v_add3_u32 v16, v80, v16, 0x7fff
	v_cmp_o_f32_e64 s6, v80, v80
	v_add3_u32 v18, v78, v18, 0x7fff
	v_cmp_o_f32_e64 s8, v78, v78
	v_bfe_u32 v19, v77, 16, 1
	v_add3_u32 v17, v79, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v79, v79
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s6
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s8
	v_add3_u32 v18, v77, v19, 0x7fff
	v_bfe_u32 v19, v75, 16, 1
	v_bfe_u32 v20, v74, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s7
	v_bfe_u32 v17, v76, 16, 1
	v_cmp_o_f32_e64 s1, v77, v77
	v_add3_u32 v19, v75, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v75, v75
	v_add3_u32 v20, v74, v20, 0x7fff
	v_cmp_o_f32_e64 s8, v74, v74
	v_add3_u32 v17, v76, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v76, v76
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s1
	v_bfe_u32 v18, v73, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s8
	v_bfe_u32 v20, v72, 16, 1
	v_bfe_u32 v22, v70, 16, 1
	v_bfe_u32 v21, v71, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_add3_u32 v18, v73, v18, 0x7fff
	v_cmp_o_f32_e64 s1, v73, v73
	v_add3_u32 v20, v72, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v72, v72
	v_add3_u32 v22, v70, v22, 0x7fff
	v_cmp_o_f32_e64 s8, v70, v70
	v_bfe_u32 v23, v69, 16, 1
	v_add3_u32 v21, v71, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v71, v71
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s1
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s6
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s8
	v_add3_u32 v22, v69, v23, 0x7fff
	v_bfe_u32 v23, v67, 16, 1
	v_bfe_u32 v24, v65, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s7
	v_bfe_u32 v21, v68, 16, 1
	v_cmp_o_f32_e64 s1, v69, v69
	v_add3_u32 v23, v67, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v67, v67
	v_add3_u32 v24, v65, v24, 0x7fff
	v_cmp_o_f32_e64 s8, v65, v65
	v_add3_u32 v21, v68, v21, 0x7fff
	v_bfe_u32 v25, v61, 16, 1
	v_cmp_o_f32_e64 s6, v68, v68
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s1
	v_bfe_u32 v22, v63, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s7
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s8
	v_bfe_u32 v24, v62, 16, 1
	v_bfe_u32 v26, v60, 16, 1
	v_add3_u32 v25, v61, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v61, v61
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v6, v46, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s6
	v_add3_u32 v22, v63, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_add3_u32 v24, v62, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v62, v62
	v_add3_u32 v26, v60, v26, 0x7fff
	v_cmp_o_f32_e64 s8, v60, v60
	v_bfe_u32 v46, v59, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s7
	v_bfe_u32 v25, v58, 16, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v5, v52, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s1
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s6
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s8
	v_add3_u32 v26, v59, v46, 0x7fff
	v_bfe_u32 v46, v57, 16, 1
	v_cmp_o_f32_e64 s1, v59, v59
	v_bfe_u32 v52, v56, 16, 1
	v_add3_u32 v25, v58, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v57, v57
	v_add3_u32 v46, v57, v46, 0x7fff
	v_cmp_o_f32_e64 s8, v56, v56
	v_add3_u32 v52, v56, v52, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s1
	v_bfe_u32 v26, v51, 16, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v3, v53, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_cmp_o_f32_e64 s6, v58, v58
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s7
	v_cndmask_b16 v46.h, 0x7fff, v52.h, s8
	v_bfe_u32 v52, v50, 16, 1
	v_add3_u32 v26, v51, v26, 0x7fff
	v_bfe_u32 v53, v49, 16, 1
	v_cmp_o_f32_e64 s1, v51, v51
	v_bfe_u32 v51, v48, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_add3_u32 v52, v50, v52, 0x7fff
	v_cmp_o_f32_e64 s6, v50, v50
	v_add3_u32 v50, v49, v53, 0x7fff
	v_cmp_o_f32_e64 s7, v49, v49
	v_add3_u32 v49, v48, v51, 0x7fff
	v_cmp_o_f32_e64 s8, v48, v48
	v_bfe_u32 v48, v47, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s1
	v_cndmask_b16 v49.l, 0x7fff, v50.h, s7
	v_bfe_u32 v50, v45, 16, 1
	v_bfe_u32 v51, v44, 16, 1
	v_add3_u32 v48, v47, v48, 0x7fff
	v_cmp_o_f32_e64 s1, v47, v47
	v_bfe_u32 v47, v43, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v52.h, s6
	v_add3_u32 v50, v45, v50, 0x7fff
	v_cmp_o_f32_e64 s6, v45, v45
	v_add3_u32 v45, v44, v51, 0x7fff
	v_cmp_o_f32_e64 s7, v44, v44
	v_add3_u32 v44, v43, v47, 0x7fff
	v_bfe_u32 v47, v42, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s8
	v_cmp_o_f32_e64 s8, v43, v43
	v_cndmask_b16 v43.l, 0x7fff, v48.h, s1
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s7
	v_bfe_u32 v45, v41, 16, 1
	v_add3_u32 v47, v42, v47, 0x7fff
	v_bfe_u32 v48, v40, 16, 1
	v_cmp_o_f32_e64 s1, v42, v42
	v_bfe_u32 v42, v39, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v50.h, s6
	v_add3_u32 v45, v41, v45, 0x7fff
	v_cmp_o_f32_e64 s6, v41, v41
	v_add3_u32 v41, v40, v48, 0x7fff
	v_cmp_o_f32_e64 s7, v40, v40
	v_add3_u32 v40, v39, v42, 0x7fff
	v_bfe_u32 v42, v38, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s8
	v_cmp_o_f32_e64 s8, v39, v39
	v_cndmask_b16 v39.l, 0x7fff, v47.h, s1
	v_cndmask_b16 v39.h, 0x7fff, v45.h, s6
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s7
	v_bfe_u32 v41, v37, 16, 1
	v_add3_u32 v42, v38, v42, 0x7fff
	v_bfe_u32 v45, v36, 16, 1
	v_cmp_o_f32_e64 s1, v38, v38
	v_bfe_u32 v38, v35, 16, 1
	v_add3_u32 v41, v37, v41, 0x7fff
	v_cmp_o_f32_e64 s6, v37, v37
	v_add3_u32 v37, v36, v45, 0x7fff
	v_cmp_o_f32_e64 s7, v36, v36
	v_add3_u32 v36, v35, v38, 0x7fff
	v_bfe_u32 v38, v34, 16, 1
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s8
	v_cmp_o_f32_e64 s8, v35, v35
	v_cndmask_b16 v35.l, 0x7fff, v42.h, s1
	v_cndmask_b16 v35.h, 0x7fff, v41.h, s6
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s7
	v_bfe_u32 v37, v33, 16, 1
	v_add3_u32 v38, v34, v38, 0x7fff
	v_bfe_u32 v41, v32, 16, 1
	v_cmp_o_f32_e64 s1, v34, v34
	v_bfe_u32 v34, v31, 16, 1
	v_add3_u32 v37, v33, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v33, v33
	v_add3_u32 v33, v32, v41, 0x7fff
	v_cmp_o_f32_e64 s7, v32, v32
	v_add3_u32 v32, v31, v34, 0x7fff
	v_bfe_u32 v34, v30, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s8
	v_cmp_o_f32_e64 s8, v31, v31
	v_cndmask_b16 v31.l, 0x7fff, v38.h, s1
	v_cndmask_b16 v31.h, 0x7fff, v37.h, s6
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s7
	v_bfe_u32 v33, v29, 16, 1
	v_add3_u32 v34, v30, v34, 0x7fff
	v_bfe_u32 v37, v28, 16, 1
	v_cmp_o_f32_e64 s1, v30, v30
	v_bfe_u32 v30, v27, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s8
	v_add3_u32 v33, v29, v33, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_add3_u32 v29, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s7, v28, v28
	v_add3_u32 v28, v27, v30, 0x7fff
	v_cmp_o_f32_e64 s8, v27, v27
	v_cndmask_b16 v27.l, 0x7fff, v34.h, s1
	v_cmp_eq_u32_e64 s1, 0, v4
	v_cndmask_b16 v27.h, 0x7fff, v33.h, s6
	v_cndmask_b16 v4.l, 0x7fff, v29.h, s7
	v_cndmask_b16 v4.h, 0x7fff, v28.h, s8
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v28, v9, v7, s1
	v_cndmask_b32_e64 v7, v7, v9, s1
	v_cndmask_b32_e64 v29, v11, v8, s1
	v_cndmask_b32_e64 v8, v8, v11, s1
	v_cndmask_b32_e64 v30, v13, v10, s1
	v_cndmask_b32_e64 v9, v10, v13, s1
	v_cndmask_b32_e64 v33, v15, v12, s1
	v_cndmask_b32_e64 v10, v12, v15, s1
	v_cndmask_b32_e64 v34, v17, v14, s1
	v_cndmask_b32_e64 v11, v14, v17, s1
	v_cndmask_b32_e64 v41, v23, v20, s1
	v_cndmask_b32_e64 v14, v20, v23, s1
	v_cndmask_b32_e64 v42, v25, v22, s1
	v_cndmask_b32_e64 v15, v22, v25, s1
	v_mov_b32_e32 v22, 0x5410
	v_mov_b32_e32 v23, 0x7632
	v_cndmask_b32_e64 v37, v19, v16, s1
	v_cndmask_b32_e64 v12, v16, v19, s1
	v_cndmask_b32_e64 v45, v46, v24, s1
	v_cndmask_b32_e64 v16, v24, v46, s1
	v_permlanex16_b32 v24, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x1054, v22, s1
	v_cndmask_b32_e64 v22, 0x3276, v23, s1
	v_permlanex16_b32 v23, v8, s6, 0xfedcba98 op_sel:[1,0]
	.loc	1 414 36                        ; ragged.py:414:36
	v_lshrrev_b32_e32 v1, 1, v55
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v13, v18, v21, s1
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	v_cndmask_b32_e64 v38, v21, v18, s1
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v1, s23, v1
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v46, v43, v26, s1
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_cndmask_b32_e64 v17, v26, v43, s1
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v2, 0x80, v1
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v43, v44, v49, s1
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_cndmask_b32_e64 v18, v49, v44, s1
	v_cndmask_b32_e64 v44, v35, v39, s1
	v_cndmask_b32_e64 v19, v39, v35, s1
	v_cndmask_b32_e64 v35, v36, v40, s1
	v_cndmask_b32_e64 v20, v40, v36, s1
	v_cndmask_b32_e64 v36, v27, v31, s1
	v_cndmask_b32_e64 v21, v31, v27, s1
	v_permlanex16_b32 v31, v13, s6, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v51, 0x5040504, v7
	v_and_b32_e32 v52, 0x7060706, v8
	v_cndmask_b32_e64 v39, v4, v32, s1
	v_cndmask_b32_e64 v4, v32, v4, s1
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 509 9                         ; ragged.py:509:9
	v_permlanex16_b32 v40, v15, s6, 0xfedcba98 op_sel:[1,0]
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v2
	.loc	1 509 9                         ; ragged.py:509:9
	v_permlanex16_b32 v22, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v14, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v19, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v53, v20, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v19, v31, v38, v51
	v_perm_b32 v20, v31, v38, v52
	v_add_lshl_u32 v38, v1, v6, 1
	v_permlanex16_b32 v27, v12, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s6, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v6, v2, v6, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v0, v54, s33
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, s0, s5
	.loc	1 509 9                         ; ragged.py:509:9
	v_permlanex16_b32 v25, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v24, v28, v51
	v_perm_b32 v8, v24, v28, v52
	v_perm_b32 v9, v23, v29, v51
	v_perm_b32 v10, v23, v29, v52
	v_perm_b32 v23, v40, v42, v51
	v_perm_b32 v24, v40, v42, v52
	v_add_lshl_u32 v40, v1, v5, 1
	v_permlanex16_b32 v47, v16, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v54, v21, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v22, v34, v51
	v_perm_b32 v16, v22, v34, v52
	v_perm_b32 v21, v32, v41, v51
	v_perm_b32 v22, v32, v41, v52
	v_cndmask_b32_e64 v41, 0x80000000, v38, s1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, vcc_lo, s5
	.loc	1 509 9                         ; ragged.py:509:9
	v_permlanex16_b32 v48, v17, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v18, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v17, v27, v37, v51
	v_perm_b32 v18, v27, v37, v52
	v_perm_b32 v37, v4, v39, v51
	v_perm_b32 v38, v4, v39, v52
	v_add_lshl_u32 v4, v2, v5, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, s0, s4
	.loc	1 509 9                         ; ragged.py:509:9
	v_add_lshl_u32 v5, v1, v3, 1
	v_cndmask_b32_e64 v40, 0x80000000, v40, s1
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
	v_perm_b32 v11, v25, v30, v51
	v_perm_b32 v12, v25, v30, v52
	v_perm_b32 v13, v26, v33, v51
	v_perm_b32 v14, v26, v33, v52
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, vcc_lo, s3
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v25, v47, v45, v51
	v_perm_b32 v26, v47, v45, v52
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s0, s0, s2
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v27, v48, v46, v51
	v_perm_b32 v28, v48, v46, v52
	v_perm_b32 v29, v49, v43, v51
	v_perm_b32 v30, v49, v43, v52
	v_cndmask_b32_e64 v2, 0x80000000, v3, s1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v31, v50, v44, v51
	v_perm_b32 v32, v50, v44, v52
	v_perm_b32 v33, v53, v35, v51
	v_perm_b32 v34, v53, v35, v52
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_perm_b32 v35, v54, v36, v51
	v_perm_b32 v36, v54, v36, v52
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x7
	buffer_store_b128 v[7:10], v41, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v6, s[20:23], 0 offen
	buffer_store_b128 v[15:18], v40, s[20:23], 0 offen
	buffer_store_b128 v[19:22], v4, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v5, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v2, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v1, s[20:23], 0 offen
	buffer_store_b128 v[35:38], v0, s[20:23], 0 offen
	.loc	1 374 5                         ; ragged.py:374:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 194
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9832
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
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
