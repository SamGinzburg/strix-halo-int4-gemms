	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 374 0                         ; ragged.py:374:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[10:11], s[0:1], 0x54
.Ltmp0:
	.loc	1 402 25 prologue_end           ; ragged.py:402:25
	s_abs_i32 s7, s2
	.loc	1 413 18                        ; ragged.py:413:18
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v116, 16, v0
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
	s_sub_i32 s4, s11, s8
	.loc	1 405 24                        ; ragged.py:405:24
	s_mul_i32 s3, s8, s3
	.loc	1 404 22                        ; ragged.py:404:22
	s_min_i32 s9, s4, 1
	.loc	1 405 24                        ; ragged.py:405:24
	s_sub_i32 s2, s2, s3
	.loc	1 407 17                        ; ragged.py:407:17
	s_abs_i32 s11, s9
	s_cvt_f32_u32 s4, s11
	s_sub_i32 s5, 0, s11
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
	s_mul_i32 s6, s3, s11
	s_ashr_i32 s12, s4, 31
	s_sub_i32 s13, s5, s6
	s_add_i32 s14, s3, 1
	s_sub_i32 s15, s13, s11
	s_cmp_ge_u32 s13, s11
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s14, s3
	s_cselect_b32 s13, s15, s13
	s_add_i32 s14, s3, 1
	s_cmp_ge_u32 s13, s11
	s_cselect_b32 s3, s14, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s12
	s_sub_i32 s11, s3, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 406 34                        ; ragged.py:406:34
	s_mul_i32 s3, s11, s9
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
	s_load_b64 s[22:23], s[2:3], 0x0
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
	v_add_co_u32 v2, s2, s22, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s23, 0, s2
	.loc	1 494 25                        ; ragged.py:494:25
	v_add_nc_u32_e32 v99, s22, v1
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
	s_cmp_gt_i32 s10, 0
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
.LBB0_3:                                ; %Flow276
	s_load_b64 s[20:21], s[0:1], 0x40
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v110, 0xf0, v0
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v104, 16, v99
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v105, 32, v99
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v106, 48, v99
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_mov_b32_e32 v149, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s9, s11, 8
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s35, s[0:1], 0x50
	s_load_b32 s11, s[0:1], 0x48
	.loc	1 414 36 is_stmt 1              ; ragged.py:414:36
	v_lshrrev_b32_e32 v5, 1, v0
	v_dual_mov_b32 v149, 0 :: v_dual_and_b32 v4, 63, v0
	.loc	1 413 18                        ; ragged.py:413:18
	v_dual_mov_b32 v146, 0 :: v_dual_lshlrev_b32 v7, 3, v0
	v_dual_mov_b32 v147, 0 :: v_dual_and_b32 v6, 1, v0
	v_lshrrev_b32_e32 v8, 2, v116
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v5, s9, v5
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v10, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v145, 0 :: v_dual_lshlrev_b32 v156, 4, v6
	v_and_or_b32 v164, 0x78, v7, v8
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v8, 2, v110
	.loc	1 409 20                        ; ragged.py:409:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s24
	s_addc_u32 s1, s7, s25
	v_dual_mov_b32 v139, 0 :: v_dual_lshlrev_b32 v6, 5, v6
	.loc	1 501 25                        ; ragged.py:501:25
	s_load_b32 s8, s[0:1], 0x0
	.loc	1 413 18                        ; ragged.py:413:18
	v_add_co_u32 v2, s0, s22, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s23, 0, s0
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v9, 0x80, v5
	.loc	1 475 39                        ; ragged.py:475:39
	s_mul_i32 s24, s35, s33
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v150, s9, v0
	.loc	1 461 28                        ; ragged.py:461:28
	v_lshrrev_b32_e32 v151, 6, v0
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[2:3]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s7, s[30:31], v[2:3]
	v_or_b32_e32 v2, 0x300, v0
	v_or_b32_e32 v3, 0x700, v0
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v165, 0, v1
	v_or_b32_e32 v1, 0x3f0, v0
	v_or_b32_e32 v7, 0x7f0, v0
	v_dual_mov_b32 v137, 0 :: v_dual_and_b32 v10, 28, v10
	v_add3_u32 v6, 0, v8, v6
	.loc	1 475 39 is_stmt 1              ; ragged.py:475:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s24, s24, s8
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v8, 1, v110
	v_mad_u64_u32 v[73:74], null, v5, s35, s[24:25]
	.loc	1 494 25                        ; ragged.py:494:25
	v_mul_lo_u32 v152, v99, s10
	v_mul_lo_u32 v153, v104, s10
	v_mul_lo_u32 v154, v105, s10
	v_mul_lo_u32 v155, v106, s10
	v_mad_u64_u32 v[74:75], null, s35, v9, s[24:25]
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s0, s33, v150
	.loc	1 461 28                        ; ragged.py:461:28
	v_or_b32_e32 v157, 4, v151
	v_or_b32_e32 v158, 8, v151
	v_or_b32_e32 v159, 12, v151
	v_or_b32_e32 v160, 16, v151
	v_or_b32_e32 v161, 20, v151
	v_or_b32_e32 v162, 24, v151
	v_or_b32_e32 v163, 28, v151
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s1, s33, v5
	v_cmp_gt_i32_e64 s6, s33, v9
	.loc	1 501 25                        ; ragged.py:501:25
	s_mul_i32 s23, s10, s8
	v_xor_b32_e32 v166, 4, v164
	v_cmp_eq_u32_e64 s8, 0, v116
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v72, s22, v4
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v167, 0, v0
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v168, 0, v2
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v169, 0, v3
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v170, 0, v1
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v171, 0, v7
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v172, v6, v10
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v173, 0, v8
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v80, 0
	s_mov_b32 s27, 0x31027000
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s7, vcc_lo, s7
	s_mov_b32 s34, 0
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v146
	v_mov_b32_e32 v2, v146
	v_dual_mov_b32 v3, v146 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v4, v146
	v_dual_mov_b32 v5, v146 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v6, v146
	v_dual_mov_b32 v7, v146 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v9, v146 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v10, v146
	v_dual_mov_b32 v11, v146 :: v_dual_mov_b32 v40, 0
	v_mov_b32_e32 v12, v146
	v_dual_mov_b32 v13, v146 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v14, v146
	v_dual_mov_b32 v15, v146 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v17, v146
	v_mov_b32_e32 v18, v146
	v_mov_b32_e32 v19, v146
	v_mov_b32_e32 v20, v146
	v_mov_b32_e32 v21, v146
	v_mov_b32_e32 v22, v146
	v_mov_b32_e32 v23, v146
	v_mov_b32_e32 v25, v146
	v_mov_b32_e32 v26, v146
	v_mov_b32_e32 v27, v146
	v_mov_b32_e32 v28, v146
	v_mov_b32_e32 v29, v146
	v_mov_b32_e32 v30, v146
	v_mov_b32_e32 v31, v146
	v_mov_b32_e32 v33, v146
	v_mov_b32_e32 v34, v146
	v_mov_b32_e32 v35, v146
	v_mov_b32_e32 v36, v146
	v_mov_b32_e32 v37, v146
	v_mov_b32_e32 v38, v146
	v_mov_b32_e32 v39, v146
	v_mov_b32_e32 v41, v146
	v_mov_b32_e32 v42, v146
	v_mov_b32_e32 v43, v146
	v_mov_b32_e32 v44, v146
	v_mov_b32_e32 v45, v146
	v_mov_b32_e32 v46, v146
	v_mov_b32_e32 v47, v146
	v_mov_b32_e32 v49, v146
	v_mov_b32_e32 v50, v146
	v_mov_b32_e32 v51, v146
	v_mov_b32_e32 v52, v146
	v_mov_b32_e32 v53, v146
	v_mov_b32_e32 v54, v146
	v_mov_b32_e32 v55, v146
	v_mov_b32_e32 v57, v146
	v_mov_b32_e32 v58, v146
	v_mov_b32_e32 v59, v146
	v_mov_b32_e32 v60, v146
	v_mov_b32_e32 v61, v146
	v_mov_b32_e32 v62, v146
	v_mov_b32_e32 v63, v146
	.loc	1 466 28 is_stmt 1              ; ragged.py:466:28
	s_lshl_b32 s22, s34, 6
	s_mov_b32 s35, -1
	s_mov_b32 s36, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 469 26 is_stmt 1              ; ragged.py:469:26
	s_or_b32 s36, s36, s22
	.loc	1 468 23                        ; ragged.py:468:23
	s_and_b32 vcc_lo, exec_lo, s35
	.loc	1 469 26                        ; ragged.py:469:26
	v_or_b32_e32 v64, s36, v151
	s_mov_b32 s35, 0
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[64:65], null, v64, s11, v[72:73]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v66, 0x80000000, v64, s7
	.loc	1 469 26 is_stmt 1              ; ragged.py:469:26
	v_or_b32_e32 v64, s36, v157
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[64:65], null, v64, s11, v[72:73]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v67, 0x80000000, v64, s7
	.loc	1 469 26 is_stmt 1              ; ragged.py:469:26
	v_or_b32_e32 v64, s36, v158
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[64:65], null, v64, s11, v[72:73]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v68, 0x80000000, v64, s7
	.loc	1 469 26 is_stmt 1              ; ragged.py:469:26
	v_or_b32_e32 v64, s36, v159
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[64:65], null, v64, s11, v[72:73]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v69, 0x80000000, v64, s7
	.loc	1 469 26 is_stmt 1              ; ragged.py:469:26
	v_or_b32_e32 v64, s36, v160
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[64:65], null, v64, s11, v[72:73]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v70, 0x80000000, v64, s7
	.loc	1 469 26 is_stmt 1              ; ragged.py:469:26
	v_or_b32_e32 v64, s36, v161
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[64:65], null, v64, s11, v[72:73]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v71, 0x80000000, v64, s7
	.loc	1 469 26 is_stmt 1              ; ragged.py:469:26
	v_or_b32_e32 v64, s36, v162
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[64:65], null, v64, s11, v[72:73]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 478 34 is_stmt 0              ; ragged.py:478:34
	v_cndmask_b32_e64 v75, 0x80000000, v64, s7
	.loc	1 469 26 is_stmt 1              ; ragged.py:469:26
	v_or_b32_e32 v64, s36, v163
	.loc	1 478 42                        ; ragged.py:478:42
	v_mad_u64_u32 v[64:65], null, v64, s11, v[72:73]
	.loc	1 469 26                        ; ragged.py:469:26
	v_or_b32_e32 v65, s36, v156
	s_mov_b32 s36, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 479 42                        ; ragged.py:479:42
	v_add_nc_u32_e32 v76, v73, v65
	v_add_nc_u32_e32 v65, v74, v65
	.loc	1 478 34                        ; ragged.py:478:34
	v_cndmask_b32_e64 v64, 0x80000000, v64, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 479 34                        ; ragged.py:479:34
	v_cndmask_b32_e64 v76, 0x80000000, v76, s1
	v_cndmask_b32_e64 v77, 0x80000000, v65, s6
	.loc	1 478 34                        ; ragged.py:478:34
	s_clause 0x7
	buffer_load_u8 v78, v66, s[24:27], 0 offen
	buffer_load_u8 v174, v67, s[24:27], 0 offen
	buffer_load_u8 v175, v68, s[24:27], 0 offen
	buffer_load_u8 v176, v69, s[24:27], 0 offen
	buffer_load_u8 v177, v70, s[24:27], 0 offen
	buffer_load_u8 v178, v71, s[24:27], 0 offen
	buffer_load_u8 v75, v75, s[24:27], 0 offen
	buffer_load_u8 v179, v64, s[24:27], 0 offen
	.loc	1 479 34                        ; ragged.py:479:34
	s_clause 0x1
	buffer_load_b128 v[64:67], v76, s[12:15], 0 offen
	buffer_load_b128 v[68:71], v77, s[12:15], 0 offen
	.loc	1 478 34                        ; ragged.py:478:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(9)
	ds_store_b8 v167, v78
	s_waitcnt vmcnt(8)
	ds_store_b8 v167, v174 offset:256
	s_waitcnt vmcnt(7)
	ds_store_b8 v167, v175 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v168, v176
	s_waitcnt vmcnt(5)
	ds_store_b8 v167, v177 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v167, v178 offset:1280
	s_waitcnt vmcnt(3)
	ds_store_b8 v167, v75 offset:1536
	s_waitcnt vmcnt(2)
	ds_store_b8 v169, v179
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 480 31                        ; ragged.py:480:31
	ds_load_u8 v75, v165 offset:320
	ds_load_u8 v76, v165 offset:256
	.loc	1 479 34                        ; ragged.py:479:34
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v181, v166, v65
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v182, v164, v68
	ds_bpermute_b32 v183, v164, v69
	ds_bpermute_b32 v184, v166, v68
	ds_bpermute_b32 v185, v166, v69
	ds_bpermute_b32 v186, v164, v70
	ds_bpermute_b32 v188, v166, v70
	ds_bpermute_b32 v187, v164, v71
	ds_bpermute_b32 v189, v166, v71
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v165 offset:448
	ds_load_u8 v77, v165 offset:384
	.loc	1 479 34                        ; ragged.py:479:34
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v68, v184, v182, s8
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v69, v185, v183, s8
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v165 offset:64
	ds_load_u8 v78, v165
	v_lshl_or_b32 v76, v76, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v165 offset:192
	ds_load_u8 v174, v165 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v174, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v78, 16, v77
	ds_load_u8 v77, v165 offset:336
	ds_load_u8 v78, v165 offset:272
	v_wmma_i32_16x16x16_iu4 v[8:15], v[68:69], v[75:76], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v165 offset:464
	ds_load_u8 v174, v165 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v174, v78, 0xc0c0004
	ds_load_u8 v174, v165 offset:16
	ds_load_u8 v175, v165 offset:80
	v_lshl_or_b32 v78, v78, 16, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v174, v175, 0xc0c0004
	ds_load_u8 v175, v165 offset:208
	ds_load_u8 v176, v165 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v175, 16, v174
	ds_load_u8 v174, v165 offset:352
	ds_load_u8 v175, v165 offset:288
	v_wmma_i32_16x16x16_iu4 v[24:31], v[68:69], v[77:78], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v165 offset:480
	ds_load_u8 v176, v165 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	ds_load_u8 v176, v165 offset:32
	ds_load_u8 v177, v165 offset:96
	v_lshl_or_b32 v175, v175, 16, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v176, v177, 0xc0c0004
	ds_load_u8 v177, v165 offset:224
	ds_load_u8 v178, v165 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v177, 16, v176
	ds_load_u8 v176, v165 offset:368
	ds_load_u8 v177, v165 offset:304
	v_wmma_i32_16x16x16_iu4 v[40:47], v[68:69], v[174:175], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	ds_load_u8 v177, v165 offset:496
	ds_load_u8 v178, v165 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	ds_load_u8 v178, v165 offset:48
	ds_load_u8 v179, v165 offset:112
	v_lshl_or_b32 v177, v177, 16, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v178, v179, 0xc0c0004
	ds_load_u8 v179, v165 offset:240
	ds_load_u8 v180, v165 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	.loc	1 479 34                        ; ragged.py:479:34
	ds_bpermute_b32 v180, v166, v64
	.loc	1 480 31                        ; ragged.py:480:31
	v_lshl_or_b32 v176, v179, 16, v178
	.loc	1 479 34                        ; ragged.py:479:34
	ds_bpermute_b32 v178, v164, v64
	ds_bpermute_b32 v179, v164, v65
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[56:63], v[68:69], v[176:177], v[56:63] neg_lo:[1,1,0]
	.loc	1 479 34                        ; ragged.py:479:34
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v64, v180, v178, s8
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v65, v181, v179, s8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[0:7], v[64:65], v[75:76], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[64:65], v[77:78], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[64:65], v[174:175], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[64:65], v[176:177], v[48:55] neg_lo:[1,1,0]
	ds_load_u8 v64, v165 offset:832
	ds_load_u8 v65, v165 offset:768
	.loc	1 479 34                        ; ragged.py:479:34
	ds_bpermute_b32 v174, v164, v66
	ds_bpermute_b32 v176, v166, v66
	ds_bpermute_b32 v175, v164, v67
	ds_bpermute_b32 v177, v166, v67
	v_cndmask_b32_e64 v78, v189, v187, s8
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v165 offset:960
	ds_load_u8 v66, v165 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v165 offset:576
	ds_load_u8 v67, v165 offset:512
	v_lshl_or_b32 v65, v65, 16, v64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v165 offset:704
	ds_load_u8 v68, v165 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v67, 16, v66
	ds_load_u8 v66, v165 offset:848
	ds_load_u8 v67, v165 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v165 offset:976
	ds_load_u8 v68, v165 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v165 offset:592
	ds_load_u8 v69, v165 offset:528
	v_lshl_or_b32 v67, v67, 16, v66
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v165 offset:720
	ds_load_u8 v70, v165 offset:656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v69, 16, v68
	ds_load_u8 v68, v165 offset:864
	ds_load_u8 v69, v165 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v165 offset:992
	ds_load_u8 v70, v165 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v165 offset:608
	ds_load_u8 v71, v165 offset:544
	v_lshl_or_b32 v69, v69, 16, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v165 offset:736
	ds_load_u8 v75, v165 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v71, 16, v70
	ds_load_u8 v70, v165 offset:624
	ds_load_u8 v71, v165 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v165 offset:752
	ds_load_u8 v75, v165 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v165 offset:880
	ds_load_u8 v76, v165 offset:816
	v_lshl_or_b32 v70, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v170
	ds_load_u8 v77, v165 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	.loc	1 479 34                        ; ragged.py:479:34
	v_cndmask_b32_e64 v77, v188, v186, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 480 31                        ; ragged.py:480:31
	v_lshl_or_b32 v71, v76, 16, v75
	.loc	1 479 34                        ; ragged.py:479:34
	v_cndmask_b32_e64 v75, v176, v174, s8
	v_cndmask_b32_e64 v76, v177, v175, s8
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[40:47], v[77:78], v[68:69], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[77:78], v[64:65], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[77:78], v[70:71], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[77:78], v[66:67], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[75:76], v[68:69], v[32:39] neg_lo:[1,1,0]
	ds_load_u8 v68, v165 offset:1344
	ds_load_u8 v69, v165 offset:1280
	v_wmma_i32_16x16x16_iu4 v[48:55], v[75:76], v[70:71], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[75:76], v[64:65], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[75:76], v[66:67], v[16:23] neg_lo:[1,1,0]
	.loc	1 479 34                        ; ragged.py:479:34
	v_cndmask_b32_e64 v64, v178, v180, s8
	v_cndmask_b32_e64 v65, v179, v181, s8
	v_cndmask_b32_e64 v66, v182, v184, s8
	v_cndmask_b32_e64 v67, v183, v185, s8
	.loc	1 480 31                        ; ragged.py:480:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v165 offset:1472
	ds_load_u8 v70, v165 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v165 offset:1088
	ds_load_u8 v71, v165 offset:1024
	v_lshl_or_b32 v69, v69, 16, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v165 offset:1216
	ds_load_u8 v75, v165 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v71, 16, v70
	ds_load_u8 v70, v165 offset:1360
	ds_load_u8 v71, v165 offset:1296
	v_wmma_i32_16x16x16_iu4 v[0:7], v[64:65], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[66:67], v[68:69], v[8:15] neg_lo:[1,1,0]
	ds_load_u8 v68, v165 offset:1856
	ds_load_u8 v69, v165 offset:1792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v165 offset:1488
	ds_load_u8 v75, v165 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v165 offset:1104
	ds_load_u8 v76, v165 offset:1040
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v165 offset:1232
	ds_load_u8 v77, v165 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v76, 16, v75
	ds_load_u8 v75, v165 offset:1376
	ds_load_u8 v76, v165 offset:1312
	v_wmma_i32_16x16x16_iu4 v[16:23], v[64:65], v[70:71], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[66:67], v[70:71], v[24:31] neg_lo:[1,1,0]
	ds_load_u8 v69, v165 offset:1984
	ds_load_u8 v70, v165 offset:1920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v165 offset:1504
	ds_load_u8 v77, v165 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v165 offset:1600
	ds_load_u8 v71, v165 offset:1536
	v_lshl_or_b32 v69, v69, 16, v68
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v165 offset:1120
	ds_load_u8 v78, v165 offset:1056
	v_lshl_or_b32 v76, v76, 16, v75
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v165 offset:1248
	ds_load_u8 v178, v165 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v178, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v78, 16, v77
	ds_load_u8 v77, v165 offset:1392
	ds_load_u8 v78, v165 offset:1328
	v_wmma_i32_16x16x16_iu4 v[32:39], v[64:65], v[75:76], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[66:67], v[75:76], v[40:47] neg_lo:[1,1,0]
	ds_load_u8 v71, v165 offset:1728
	ds_load_u8 v75, v165 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v165 offset:1520
	ds_load_u8 v178, v165 offset:1456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v71, 16, v70
	ds_load_u8 v70, v165 offset:1872
	ds_load_u8 v71, v165 offset:1808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v178, v78, 0xc0c0004
	ds_load_u8 v178, v165 offset:1136
	ds_load_u8 v179, v165 offset:1072
	v_lshl_or_b32 v78, v78, 16, v77
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v165 offset:2000
	ds_load_u8 v75, v165 offset:1936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	ds_load_u8 v179, v165 offset:1264
	ds_load_u8 v180, v165 offset:1200
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	ds_load_u8 v75, v165 offset:1616
	ds_load_u8 v76, v165 offset:1552
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v179, 16, v178
	v_wmma_i32_16x16x16_iu4 v[48:55], v[64:65], v[77:78], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[66:67], v[77:78], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v165 offset:1744
	ds_load_u8 v77, v165 offset:1680
	.loc	1 479 34                        ; ragged.py:479:34
	v_cndmask_b32_e64 v64, v174, v176, s8
	v_cndmask_b32_e64 v65, v175, v177, s8
	v_cndmask_b32_e64 v66, v186, v188, s8
	v_cndmask_b32_e64 v67, v187, v189, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 480 31                        ; ragged.py:480:31
	v_wmma_i32_16x16x16_iu4 v[0:7], v[64:65], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[66:67], v[68:69], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v76, 16, v75
	ds_load_u8 v75, v165 offset:1888
	ds_load_u8 v76, v165 offset:1824
	v_wmma_i32_16x16x16_iu4 v[16:23], v[64:65], v[70:71], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[66:67], v[70:71], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v165 offset:2016
	ds_load_u8 v77, v165 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v165 offset:1632
	ds_load_u8 v78, v165 offset:1568
	v_lshl_or_b32 v76, v76, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v165 offset:1760
	ds_load_u8 v174, v165 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v174, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v78, 16, v77
	ds_load_u8 v77, v165 offset:1648
	ds_load_u8 v78, v165 offset:1584
	v_wmma_i32_16x16x16_iu4 v[32:39], v[64:65], v[75:76], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[66:67], v[75:76], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v165 offset:1776
	ds_load_u8 v174, v165 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v174, v78, 0xc0c0004
	ds_load_u8 v174, v165 offset:1904
	ds_load_u8 v175, v165 offset:1840
	v_lshl_or_b32 v77, v78, 16, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v171
	ds_load_u8 v176, v165 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v175, 16, v174
	v_wmma_i32_16x16x16_iu4 v[48:55], v[64:65], v[77:78], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[66:67], v[77:78], v[56:63] neg_lo:[1,1,0]
	.loc	1 468 23                        ; ragged.py:468:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 493 40                        ; ragged.py:493:40
	v_add_lshl_u32 v64, s34, v152, 1
	.loc	1 501 25                        ; ragged.py:501:25
	s_add_i32 s22, s34, s23
	.loc	1 493 40                        ; ragged.py:493:40
	v_add_lshl_u32 v65, s34, v153, 1
	v_add_lshl_u32 v66, s34, v154, 1
	.loc	1 501 25                        ; ragged.py:501:25
	s_mul_i32 s22, s22, s33
	.loc	1 493 40                        ; ragged.py:493:40
	v_add_lshl_u32 v67, s34, v155, 1
	.loc	1 500 40                        ; ragged.py:500:40
	v_add_lshl_u32 v68, v150, s22, 1
	.loc	1 493 40                        ; ragged.py:493:40
	v_cndmask_b32_e64 v64, 0x80000000, v64, s5
	v_cndmask_b32_e64 v65, 0x80000000, v65, s4
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	.loc	1 500 40                        ; ragged.py:500:40
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	.loc	1 493 40                        ; ragged.py:493:40
	s_clause 0x3
	buffer_load_u16 v64, v64, s[28:31], 0 offen
	buffer_load_u16 v65, v65, s[28:31], 0 offen
	buffer_load_u16 v66, v66, s[28:31], 0 offen
	buffer_load_u16 v67, v67, s[28:31], 0 offen
	.loc	1 500 40                        ; ragged.py:500:40
	buffer_load_u16 v68, v68, s[16:19], 0 offen
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v18, v18
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
	.loc	1 505 21                        ; ragged.py:505:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 491 27                        ; ragged.py:491:27
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
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
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
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
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 507 17                        ; ragged.py:507:17
	s_add_i32 s34, s34, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 464 19                        ; ragged.py:464:19
	s_cmp_lg_u32 s34, s10
	.loc	1 493 40                        ; ragged.py:493:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 498 21                        ; ragged.py:498:21
	v_dual_mul_f32 v17, v17, v65 :: v_dual_lshlrev_b32 v64, 16, v64
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v70, v1, v64
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v19, v19, v65 :: v_dual_lshlrev_b32 v68, 16, v68
	v_dual_mul_f32 v69, v0, v64 :: v_dual_lshlrev_b32 v66, 16, v66
	v_dual_mul_f32 v76, v4, v64 :: v_dual_lshlrev_b32 v67, 16, v67
	v_dual_mul_f32 v71, v2, v64 :: v_dual_mul_f32 v16, v16, v65
	v_dual_mul_f32 v75, v3, v64 :: v_dual_mul_f32 v18, v18, v65
	v_dual_mul_f32 v77, v5, v64 :: v_dual_mul_f32 v20, v20, v65
	v_dual_mul_f32 v78, v6, v64 :: v_dual_mul_f32 v21, v21, v65
	v_dual_mul_f32 v174, v7, v64 :: v_dual_mul_f32 v25, v25, v65
	v_dual_mul_f32 v175, v8, v64 :: v_dual_mul_f32 v22, v22, v65
	v_dual_mul_f32 v176, v9, v64 :: v_dual_mul_f32 v23, v23, v65
	v_dual_mul_f32 v177, v10, v64 :: v_dual_mul_f32 v24, v24, v65
	v_dual_mul_f32 v178, v11, v64 :: v_dual_mul_f32 v29, v29, v65
	v_dual_mul_f32 v179, v12, v64 :: v_dual_mul_f32 v26, v26, v65
	v_dual_mul_f32 v180, v13, v64 :: v_dual_mul_f32 v27, v27, v65
	v_dual_mul_f32 v181, v14, v64 :: v_dual_mul_f32 v28, v28, v65
	v_dual_mul_f32 v64, v15, v64 :: v_dual_mul_f32 v33, v33, v66
	.loc	1 505 21                        ; ragged.py:505:21
	ds_store_b32 v172, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v173
	ds_load_b128 v[4:7], v173 offset:16
	ds_load_b128 v[8:11], v173 offset:512
	ds_load_b128 v[12:15], v173 offset:528
	.loc	1 498 21                        ; ragged.py:498:21
	v_dual_mul_f32 v30, v30, v65 :: v_dual_mul_f32 v35, v35, v66
	v_dual_mul_f32 v31, v31, v65 :: v_dual_mul_f32 v32, v32, v66
	v_dual_mul_f32 v34, v34, v66 :: v_dual_mul_f32 v49, v49, v67
	v_dual_mul_f32 v36, v36, v66 :: v_dual_mul_f32 v51, v51, v67
	v_dual_mul_f32 v37, v37, v66 :: v_dual_mul_f32 v48, v48, v67
	v_dual_mul_f32 v38, v38, v66 :: v_dual_mul_f32 v53, v53, v67
	v_dual_mul_f32 v39, v39, v66 :: v_dual_mul_f32 v50, v50, v67
	v_dual_mul_f32 v40, v40, v66 :: v_dual_mul_f32 v55, v55, v67
	v_dual_mul_f32 v41, v41, v66 :: v_dual_mul_f32 v52, v52, v67
	v_dual_mul_f32 v42, v42, v66 :: v_dual_mul_f32 v57, v57, v67
	v_dual_mul_f32 v43, v43, v66 :: v_dual_mul_f32 v54, v54, v67
	v_dual_mul_f32 v44, v44, v66 :: v_dual_mul_f32 v59, v59, v67
	v_dual_mul_f32 v45, v45, v66 :: v_dual_mul_f32 v56, v56, v67
	v_dual_mul_f32 v46, v46, v66 :: v_dual_mul_f32 v61, v61, v67
	v_dual_mul_f32 v47, v47, v66 :: v_dual_mul_f32 v58, v58, v67
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v60, v60, v67 :: v_dual_fmac_f32 v149, v69, v0
	v_dual_mul_f32 v62, v62, v67 :: v_dual_fmac_f32 v147, v71, v2
	v_dual_mul_f32 v63, v63, v67 :: v_dual_fmac_f32 v148, v70, v1
	.loc	1 506 17                        ; ragged.py:506:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v145, v75, v3 :: v_dual_fmac_f32 v144, v76, v4
	v_dual_fmac_f32 v143, v77, v5 :: v_dual_fmac_f32 v142, v78, v6
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v141, v174, v7 :: v_dual_fmac_f32 v140, v175, v8
	v_dual_fmac_f32 v139, v176, v9 :: v_dual_fmac_f32 v138, v177, v10
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v137, v178, v11 :: v_dual_fmac_f32 v136, v179, v12
	v_dual_fmac_f32 v135, v180, v13 :: v_dual_fmac_f32 v134, v181, v14
	v_dual_fmac_f32 v133, v64, v15 :: v_dual_fmac_f32 v130, v18, v2
	v_dual_fmac_f32 v132, v16, v0 :: v_dual_fmac_f32 v131, v17, v1
	v_dual_fmac_f32 v129, v19, v3 :: v_dual_fmac_f32 v128, v20, v4
	v_dual_fmac_f32 v127, v21, v5 :: v_dual_fmac_f32 v126, v22, v6
	v_dual_fmac_f32 v125, v23, v7 :: v_dual_fmac_f32 v124, v24, v8
	v_dual_fmac_f32 v123, v25, v9 :: v_dual_fmac_f32 v122, v26, v10
	v_dual_fmac_f32 v121, v27, v11 :: v_dual_fmac_f32 v120, v28, v12
	v_dual_fmac_f32 v119, v29, v13 :: v_dual_fmac_f32 v118, v30, v14
	v_dual_fmac_f32 v117, v31, v15 :: v_dual_fmac_f32 v114, v33, v1
	v_dual_fmac_f32 v115, v32, v0 :: v_dual_fmac_f32 v112, v35, v3
	v_dual_fmac_f32 v113, v34, v2 :: v_dual_fmac_f32 v102, v41, v9
	v_dual_fmac_f32 v111, v36, v4 :: v_dual_fmac_f32 v108, v38, v6
	v_dual_fmac_f32 v109, v37, v5 :: v_dual_fmac_f32 v100, v43, v11
	v_dual_fmac_f32 v107, v39, v7 :: v_dual_fmac_f32 v98, v44, v12
	v_dual_fmac_f32 v103, v40, v8 :: v_dual_fmac_f32 v96, v46, v14
	v_dual_fmac_f32 v101, v42, v10 :: v_dual_fmac_f32 v94, v48, v0
	v_dual_fmac_f32 v97, v45, v13 :: v_dual_fmac_f32 v92, v50, v2
	v_dual_fmac_f32 v95, v47, v15 :: v_dual_fmac_f32 v90, v52, v4
	v_dual_fmac_f32 v93, v49, v1 :: v_dual_fmac_f32 v88, v54, v6
	v_dual_fmac_f32 v91, v51, v3 :: v_dual_fmac_f32 v86, v56, v8
	v_dual_fmac_f32 v89, v53, v5 :: v_dual_fmac_f32 v84, v58, v10
	v_dual_fmac_f32 v87, v55, v7 :: v_dual_fmac_f32 v82, v60, v12
	v_dual_fmac_f32 v85, v57, v9 :: v_dual_fmac_f32 v80, v62, v14
	v_fmac_f32_e32 v83, v59, v11
	v_fmac_f32_e32 v81, v61, v13
	v_fmac_f32_e32 v79, v63, v15
	.loc	1 464 19                        ; ragged.py:464:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_mov_b32_e32 v4, v116
.LBB0_9:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 509 9 is_stmt 1               ; ragged.py:509:9
	v_bfe_u32 v7, v149, 16, 1
	v_bfe_u32 v8, v148, 16, 1
	v_bfe_u32 v10, v145, 16, 1
	v_bfe_u32 v9, v147, 16, 1
	v_cmp_o_f32_e64 s1, v149, v149
	v_add3_u32 v7, v149, v7, 0x7fff
	v_add3_u32 v8, v148, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v148, v148
	v_add3_u32 v10, v145, v10, 0x7fff
	v_cmp_o_f32_e64 s8, v145, v145
	v_bfe_u32 v11, v144, 16, 1
	v_add3_u32 v9, v147, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v147, v147
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s8
	v_add3_u32 v10, v144, v11, 0x7fff
	v_bfe_u32 v11, v142, 16, 1
	v_bfe_u32 v12, v141, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s7
	v_bfe_u32 v9, v143, 16, 1
	v_cmp_o_f32_e64 s1, v144, v144
	v_add3_u32 v11, v142, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v142, v142
	v_add3_u32 v12, v141, v12, 0x7fff
	v_cmp_o_f32_e64 s8, v141, v141
	v_add3_u32 v9, v143, v9, 0x7fff
	v_cmp_o_f32_e64 s6, v143, v143
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v140, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s7
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s8
	v_bfe_u32 v12, v139, 16, 1
	v_bfe_u32 v14, v137, 16, 1
	v_bfe_u32 v13, v138, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v10, v140, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v140, v140
	v_add3_u32 v12, v139, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v139, v139
	v_add3_u32 v14, v137, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v137, v137
	v_bfe_u32 v15, v136, 16, 1
	v_add3_u32 v13, v138, v13, 0x7fff
	v_cmp_o_f32_e64 s7, v138, v138
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s6
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s8
	v_add3_u32 v14, v136, v15, 0x7fff
	v_bfe_u32 v15, v134, 16, 1
	v_bfe_u32 v16, v133, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s7
	v_bfe_u32 v13, v135, 16, 1
	v_cmp_o_f32_e64 s1, v136, v136
	v_add3_u32 v15, v134, v15, 0x7fff
	v_cmp_o_f32_e64 s7, v134, v134
	v_add3_u32 v16, v133, v16, 0x7fff
	v_cmp_o_f32_e64 s8, v133, v133
	v_add3_u32 v13, v135, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v135, v135
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s1
	v_bfe_u32 v14, v132, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s7
	v_cndmask_b16 v15.h, 0x7fff, v16.h, s8
	v_bfe_u32 v16, v131, 16, 1
	v_bfe_u32 v18, v129, 16, 1
	v_bfe_u32 v17, v130, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s6
	v_add3_u32 v14, v132, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v132, v132
	v_add3_u32 v16, v131, v16, 0x7fff
	v_cmp_o_f32_e64 s6, v131, v131
	v_add3_u32 v18, v129, v18, 0x7fff
	v_cmp_o_f32_e64 s8, v129, v129
	v_bfe_u32 v19, v128, 16, 1
	v_add3_u32 v17, v130, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v130, v130
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s6
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s8
	v_add3_u32 v18, v128, v19, 0x7fff
	v_bfe_u32 v19, v126, 16, 1
	v_bfe_u32 v20, v125, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s7
	v_bfe_u32 v17, v127, 16, 1
	v_cmp_o_f32_e64 s1, v128, v128
	v_add3_u32 v19, v126, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v126, v126
	v_add3_u32 v20, v125, v20, 0x7fff
	v_cmp_o_f32_e64 s8, v125, v125
	v_add3_u32 v17, v127, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v127, v127
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s1
	v_bfe_u32 v18, v124, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s8
	v_bfe_u32 v20, v123, 16, 1
	v_bfe_u32 v22, v121, 16, 1
	v_bfe_u32 v21, v122, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_add3_u32 v18, v124, v18, 0x7fff
	v_cmp_o_f32_e64 s1, v124, v124
	v_add3_u32 v20, v123, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v123, v123
	v_add3_u32 v22, v121, v22, 0x7fff
	v_cmp_o_f32_e64 s8, v121, v121
	v_bfe_u32 v23, v120, 16, 1
	v_add3_u32 v21, v122, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v122, v122
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s1
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s6
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s8
	v_add3_u32 v22, v120, v23, 0x7fff
	v_bfe_u32 v23, v118, 16, 1
	v_bfe_u32 v24, v117, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s7
	v_bfe_u32 v21, v119, 16, 1
	v_cmp_o_f32_e64 s1, v120, v120
	v_add3_u32 v23, v118, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v118, v118
	v_add3_u32 v24, v117, v24, 0x7fff
	v_cmp_o_f32_e64 s8, v117, v117
	v_add3_u32 v21, v119, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v119, v119
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s1
	v_bfe_u32 v22, v115, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s7
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s8
	v_bfe_u32 v24, v114, 16, 1
	v_bfe_u32 v26, v112, 16, 1
	v_bfe_u32 v25, v113, 16, 1
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s6
	v_add3_u32 v22, v115, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v115, v115
	v_add3_u32 v24, v114, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v114, v114
	v_add3_u32 v26, v112, v26, 0x7fff
	v_cmp_o_f32_e64 s8, v112, v112
	v_bfe_u32 v27, v111, 16, 1
	v_add3_u32 v25, v113, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v113, v113
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s1
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s6
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s8
	v_add3_u32 v26, v111, v27, 0x7fff
	v_bfe_u32 v27, v108, 16, 1
	v_bfe_u32 v28, v107, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s7
	v_bfe_u32 v25, v109, 16, 1
	v_cmp_o_f32_e64 s1, v111, v111
	v_add3_u32 v27, v108, v27, 0x7fff
	v_cmp_o_f32_e64 s7, v108, v108
	v_add3_u32 v28, v107, v28, 0x7fff
	v_cmp_o_f32_e64 s8, v107, v107
	v_add3_u32 v25, v109, v25, 0x7fff
	v_cmp_o_f32_e64 s6, v109, v109
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s1
	v_bfe_u32 v26, v103, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s7
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s8
	v_bfe_u32 v28, v102, 16, 1
	v_bfe_u32 v30, v100, 16, 1
	v_bfe_u32 v29, v101, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_add3_u32 v26, v103, v26, 0x7fff
	v_cmp_o_f32_e64 s1, v103, v103
	v_add3_u32 v28, v102, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v102, v102
	v_add3_u32 v30, v100, v30, 0x7fff
	v_cmp_o_f32_e64 s8, v100, v100
	v_bfe_u32 v31, v98, 16, 1
	v_add3_u32 v29, v101, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v101, v101
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s1
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s6
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s8
	v_add3_u32 v30, v98, v31, 0x7fff
	v_bfe_u32 v31, v96, 16, 1
	v_bfe_u32 v32, v95, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v97, 16, 1
	v_cmp_o_f32_e64 s1, v98, v98
	v_add3_u32 v31, v96, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v96, v96
	v_add3_u32 v32, v95, v32, 0x7fff
	v_cmp_o_f32_e64 s8, v95, v95
	v_add3_u32 v29, v97, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v97, v97
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s1
	v_bfe_u32 v30, v94, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s7
	v_cndmask_b16 v31.h, 0x7fff, v32.h, s8
	v_bfe_u32 v32, v93, 16, 1
	v_bfe_u32 v34, v91, 16, 1
	v_bfe_u32 v33, v92, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s6
	v_add3_u32 v30, v94, v30, 0x7fff
	v_cmp_o_f32_e64 s1, v94, v94
	v_add3_u32 v32, v93, v32, 0x7fff
	v_cmp_o_f32_e64 s6, v93, v93
	v_add3_u32 v34, v91, v34, 0x7fff
	v_cmp_o_f32_e64 s8, v91, v91
	v_bfe_u32 v35, v90, 16, 1
	v_add3_u32 v33, v92, v33, 0x7fff
	v_cmp_o_f32_e64 s7, v92, v92
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s1
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s6
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s8
	v_add3_u32 v34, v90, v35, 0x7fff
	v_bfe_u32 v35, v88, 16, 1
	v_bfe_u32 v36, v87, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s7
	v_bfe_u32 v33, v89, 16, 1
	v_cmp_o_f32_e64 s1, v90, v90
	v_add3_u32 v35, v88, v35, 0x7fff
	v_cmp_o_f32_e64 s7, v88, v88
	v_add3_u32 v36, v87, v36, 0x7fff
	v_cmp_o_f32_e64 s8, v87, v87
	v_add3_u32 v33, v89, v33, 0x7fff
	v_bfe_u32 v37, v84, 16, 1
	v_cmp_o_f32_e64 s6, v89, v89
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s1
	v_bfe_u32 v34, v86, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s7
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s8
	v_bfe_u32 v36, v85, 16, 1
	v_bfe_u32 v38, v83, 16, 1
	v_add3_u32 v37, v84, v37, 0x7fff
	v_cmp_o_f32_e64 s7, v84, v84
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s6
	v_add3_u32 v34, v86, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v86, v86
	v_add3_u32 v36, v85, v36, 0x7fff
	v_cmp_o_f32_e64 s6, v85, v85
	v_add3_u32 v38, v83, v38, 0x7fff
	v_cmp_o_f32_e64 s8, v83, v83
	v_bfe_u32 v39, v82, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s7
	v_bfe_u32 v37, v81, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s6
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s8
	v_add3_u32 v38, v82, v39, 0x7fff
	v_bfe_u32 v39, v80, 16, 1
	v_cmp_o_f32_e64 s1, v82, v82
	v_bfe_u32 v40, v79, 16, 1
	v_add3_u32 v37, v81, v37, 0x7fff
	v_cmp_o_f32_e64 s7, v80, v80
	v_add3_u32 v39, v80, v39, 0x7fff
	v_cmp_o_f32_e64 s8, v79, v79
	v_add3_u32 v40, v79, v40, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s1
	v_cmp_eq_u32_e64 s1, 0, v4
	v_cmp_o_f32_e64 s6, v81, v81
	v_cndmask_b16 v4.l, 0x7fff, v39.h, s7
	v_cndmask_b16 v4.h, 0x7fff, v40.h, s8
	.loc	1 414 36                        ; ragged.py:414:36
	v_lshrrev_b32_e32 v1, 1, v110
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v38, v9, v7, s1
	v_cndmask_b32_e64 v7, v7, v9, s1
	v_cndmask_b32_e64 v39, v11, v8, s1
	v_cndmask_b32_e64 v8, v8, v11, s1
	v_cndmask_b32_e64 v40, v13, v10, s1
	v_cndmask_b32_e64 v9, v10, v13, s1
	v_cndmask_b32_e64 v41, v15, v12, s1
	v_cndmask_b32_e64 v10, v12, v15, s1
	v_cndmask_b32_e64 v42, v17, v14, s1
	v_cndmask_b32_e64 v11, v14, v17, s1
	v_cndmask_b32_e64 v45, v23, v20, s1
	v_cndmask_b32_e64 v14, v20, v23, s1
	v_cndmask_b32_e64 v46, v25, v22, s1
	v_cndmask_b32_e64 v15, v22, v25, s1
	v_mov_b32_e32 v22, 0x5410
	v_mov_b32_e32 v23, 0x7632
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s6
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v43, v19, v16, s1
	v_cndmask_b32_e64 v12, v16, v19, s1
	v_cndmask_b32_e64 v47, v27, v24, s1
	v_cndmask_b32_e64 v16, v24, v27, s1
	v_permlanex16_b32 v24, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x1054, v22, s1
	v_cndmask_b32_e64 v22, 0x3276, v23, s1
	v_permlanex16_b32 v23, v8, s6, 0xfedcba98 op_sel:[1,0]
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v1, s9, v1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v6, v99, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	v_cndmask_b32_e64 v44, v21, v18, s1
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v2, 0x80, v1
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v13, v18, v21, s1
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_cndmask_b32_e64 v52, v37, v34, s1
	v_cndmask_b32_e64 v21, v34, v37, s1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v5, v104, s33
	.loc	1 509 9                         ; ragged.py:509:9
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_cndmask_b32_e64 v17, v26, v29, s1
	v_cndmask_b32_e64 v18, v28, v31, s1
	v_cndmask_b32_e64 v19, v30, v33, s1
	v_and_b32_e32 v37, 0x5040504, v7
	v_and_b32_e32 v54, 0x7060706, v8
	v_cndmask_b32_e64 v20, v32, v35, s1
	v_cndmask_b32_e64 v53, v4, v36, s1
	v_cndmask_b32_e64 v4, v36, v4, s1
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v3, v105, s33
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v2
	.loc	1 509 9                         ; ragged.py:509:9
	v_permlanex16_b32 v25, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v24, v38, v37
	v_perm_b32 v8, v24, v38, v54
	v_add_lshl_u32 v38, v1, v6, 1
	v_cndmask_b32_e64 v48, v29, v26, s1
	v_cndmask_b32_e64 v49, v31, v28, s1
	v_cndmask_b32_e64 v50, v33, v30, s1
	v_cndmask_b32_e64 v51, v35, v32, s1
	v_permlanex16_b32 v26, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v12, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v13, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v14, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v15, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v16, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v17, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v18, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v19, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v20, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v21, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s6, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v6, v2, v6, 1
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v0, v106, s33
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, s0, s5
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v9, v23, v39, v37
	v_perm_b32 v10, v23, v39, v54
	v_add_lshl_u32 v39, v1, v5, 1
	v_perm_b32 v11, v25, v40, v37
	v_perm_b32 v12, v25, v40, v54
	v_cndmask_b32_e64 v40, 0x80000000, v38, s1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, vcc_lo, s5
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v13, v26, v41, v37
	v_perm_b32 v14, v26, v41, v54
	v_perm_b32 v15, v22, v42, v37
	v_perm_b32 v16, v22, v42, v54
	v_perm_b32 v17, v27, v43, v37
	v_perm_b32 v18, v27, v43, v54
	v_perm_b32 v19, v28, v44, v37
	v_perm_b32 v20, v28, v44, v54
	v_perm_b32 v21, v29, v45, v37
	v_perm_b32 v22, v29, v45, v54
	v_perm_b32 v23, v30, v46, v37
	v_perm_b32 v24, v30, v46, v54
	v_perm_b32 v25, v31, v47, v37
	v_perm_b32 v26, v31, v47, v54
	v_perm_b32 v27, v32, v48, v37
	v_perm_b32 v28, v32, v48, v54
	v_perm_b32 v29, v33, v49, v37
	v_perm_b32 v30, v33, v49, v54
	v_perm_b32 v31, v34, v50, v37
	v_perm_b32 v32, v34, v50, v54
	v_perm_b32 v33, v35, v51, v37
	v_perm_b32 v34, v35, v51, v54
	v_perm_b32 v35, v36, v52, v37
	v_perm_b32 v37, v4, v53, v37
	v_perm_b32 v38, v4, v53, v54
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
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_perm_b32 v36, v36, v52, v54
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x7
	buffer_store_b128 v[7:10], v40, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v6, s[20:23], 0 offen
	buffer_store_b128 v[15:18], v39, s[20:23], 0 offen
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 190
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 190
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10112
; TotalNumSgprs: 39
; NumVgprs: 190
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 190
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     190
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
