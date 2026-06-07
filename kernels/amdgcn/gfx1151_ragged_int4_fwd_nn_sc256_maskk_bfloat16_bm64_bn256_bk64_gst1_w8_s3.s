	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 523 0                         ; ragged.py:523:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[28:29], s[0:1], 0x54
.Ltmp0:
	.loc	1 551 25 prologue_end           ; ragged.py:551:25
	s_abs_i32 s7, s2
	v_mov_b32_e32 v174, 0
	.loc	1 562 18                        ; ragged.py:562:18
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:549:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:549:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
.Ltmp2:
	.loc	1 551 25 is_stmt 1              ; ragged.py:551:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v155, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v161, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v165, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v171, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v173, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v175, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v176, 0 :: v_dual_and_b32 v153, 0xf0, v0
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s12, s4, s6
	.loc	1 553 33                        ; ragged.py:553:33
	s_sub_i32 s4, s29, s12
	.loc	1 554 24                        ; ragged.py:554:24
	s_mul_i32 s3, s12, s3
	.loc	1 553 22                        ; ragged.py:553:22
	s_min_i32 s13, s4, 1
	.loc	1 554 24                        ; ragged.py:554:24
	s_sub_i32 s2, s2, s3
	.loc	1 556 17                        ; ragged.py:556:17
	s_abs_i32 s14, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s14
	s_sub_i32 s5, 0, s14
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	.loc	1 562 32                        ; ragged.py:562:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 556 17                        ; ragged.py:556:17
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
	.loc	1 555 34                        ; ragged.py:555:34
	s_mul_i32 s3, s14, s13
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 555 20 is_stmt 0              ; ragged.py:555:20
	s_add_i32 s2, s2, s12
	.loc	1 558 20 is_stmt 1              ; ragged.py:558:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 559 23                        ; ragged.py:559:23
	s_lshl_b64 s[30:31], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s30
	s_addc_u32 s3, s5, s31
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 560 24                        ; ragged.py:560:24
	s_add_u32 s2, s6, s30
	s_addc_u32 s3, s7, s31
	.loc	1 561 22                        ; ragged.py:561:22
	s_add_u32 s4, s8, s30
	s_addc_u32 s5, s9, s31
	.loc	1 560 24                        ; ragged.py:560:24
	s_load_b64 s[24:25], s[2:3], 0x0
	.loc	1 561 22                        ; ragged.py:561:22
	s_load_b64 s[26:27], s[4:5], 0x0
	.loc	1 563 18                        ; ragged.py:563:18
	s_lshl_b32 s29, s14, 8
	.loc	1 562 18                        ; ragged.py:562:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s20, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s21, 0, s2
	.loc	1 645 25                        ; ragged.py:645:25
	v_add_nc_u32_e32 v151, s20, v1
	.loc	1 562 18                        ; ragged.py:562:18
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[2:3]
	.loc	1 564 48 is_stmt 0              ; ragged.py:564:48
	v_cmp_gt_i64_e64 s2, s[26:27], v[2:3]
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e64 s3, s[24:25], v[4:5]
	v_cmp_le_i64_e64 s5, s[24:25], v[6:7]
	v_cmp_le_i64_e64 s6, s[24:25], v[8:9]
	.loc	1 564 48                        ; ragged.py:564:48
	v_cmp_gt_i64_e64 s7, s[26:27], v[4:5]
	v_cmp_gt_i64_e64 s8, s[26:27], v[6:7]
	v_cmp_gt_i64_e64 s9, s[26:27], v[8:9]
	.loc	1 645 25 is_stmt 1              ; ragged.py:645:25
	v_add_nc_u32_e32 v154, 16, v151
	v_add_nc_u32_e32 v156, 32, v151
	v_add_nc_u32_e32 v157, 48, v151
	.loc	1 564 20                        ; ragged.py:564:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 614 19                        ; ragged.py:614:19
	s_cmp_lt_i32 s28, 1
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_5
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s9, s[0:1], 0x50
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 562 32 is_stmt 1              ; ragged.py:562:32
	v_lshrrev_b32_e32 v5, 2, v0
	v_lshrrev_b32_e32 v7, 1, v0
	v_dual_mov_b32 v175, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	v_dual_mov_b32 v173, 0 :: v_dual_lshlrev_b32 v10, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v169, 0 :: v_dual_and_b32 v12, 24, v7
	v_dual_mov_b32 v174, 0 :: v_dual_and_b32 v11, 24, v8
	v_dual_mov_b32 v172, 0 :: v_dual_and_b32 v7, 0x70, v7
	.loc	1 562 18 is_stmt 0              ; ragged.py:562:18
	v_dual_mov_b32 v177, 0 :: v_dual_lshlrev_b32 v6, 3, v0
	.loc	1 563 18 is_stmt 1              ; ragged.py:563:18
	v_lshl_or_b32 v2, v1, 4, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v185, v1, 5, v11
	v_add3_u32 v186, 0, v1, v7
	.loc	1 558 20                        ; ragged.py:558:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s30
	s_addc_u32 s1, s7, s31
	v_dual_mov_b32 v170, 0 :: v_dual_lshlrev_b32 v1, 2, v153
	.loc	1 652 25                        ; ragged.py:652:25
	s_load_b32 s7, s[0:1], 0x0
	.loc	1 562 18                        ; ragged.py:562:18
	v_add_co_u32 v3, s0, s20, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s21, 0, s0
	v_dual_mov_b32 v168, 0 :: v_dual_and_b32 v7, 32, v10
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v5, s20, v5
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e64 s5, s[24:25], v[3:4]
	.loc	1 564 48 is_stmt 0              ; ragged.py:564:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[3:4]
	v_xor_b32_e32 v3, v6, v12
	.loc	1 563 18 is_stmt 1              ; ragged.py:563:18
	v_or_b32_e32 v178, s29, v0
	v_dual_mov_b32 v176, 0 :: v_dual_lshlrev_b32 v9, 4, v0
	v_dual_mov_b32 v171, 0 :: v_dual_and_b32 v184, 24, v6
	v_xor_b32_e32 v4, 8, v185
	v_xor_b32_e32 v6, 16, v185
	v_xor_b32_e32 v11, 24, v185
	.loc	1 628 39                        ; ragged.py:628:39
	s_mul_i32 s24, s9, s33
	v_dual_mov_b32 v167, 0 :: v_dual_and_b32 v8, 28, v8
	v_add3_u32 v1, 0, v1, v7
	v_dual_mov_b32 v164, 0 :: v_dual_lshlrev_b32 v7, 1, v153
	.loc	1 645 25                        ; ragged.py:645:25
	v_mul_lo_u32 v180, v151, s28
	v_mul_lo_u32 v181, v154, s28
	v_mul_lo_u32 v182, v156, s28
	v_mul_lo_u32 v183, v157, s28
	v_mul_lo_u32 v187, v5, s9
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[97:98], null, s24, s7, v[2:3]
	.loc	1 611 28                        ; ragged.py:611:28
	v_lshrrev_b32_e32 v179, 4, v153
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s0, s33, v2
	v_cmp_gt_i32_e64 s1, s33, v178
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v188, 0, v3
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v189, 0, v4
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v190, 0, v6
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v191, 0, v11
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v192, 0, v9
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v193, v1, v8
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v194, 0, v7
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_mov_b32_e32 v108, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 564 20                        ; ragged.py:564:20
	s_and_b32 s30, s5, s6
	.loc	1 652 25                        ; ragged.py:652:25
	s_mul_i32 s31, s28, s7
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v177
	v_mov_b32_e32 v3, v177
	v_dual_mov_b32 v4, v177 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v177
	v_dual_mov_b32 v6, v177 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v177
	v_dual_mov_b32 v8, v177 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v177 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v177
	v_dual_mov_b32 v12, v177 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v177
	v_dual_mov_b32 v14, v177 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v177
	v_dual_mov_b32 v16, v177 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v177
	v_mov_b32_e32 v19, v177
	v_mov_b32_e32 v20, v177
	v_mov_b32_e32 v21, v177
	v_mov_b32_e32 v22, v177
	v_mov_b32_e32 v23, v177
	v_mov_b32_e32 v24, v177
	v_mov_b32_e32 v26, v177
	v_mov_b32_e32 v27, v177
	v_mov_b32_e32 v28, v177
	v_mov_b32_e32 v29, v177
	v_mov_b32_e32 v30, v177
	v_mov_b32_e32 v31, v177
	v_mov_b32_e32 v32, v177
	v_mov_b32_e32 v34, v177
	v_mov_b32_e32 v35, v177
	v_mov_b32_e32 v36, v177
	v_mov_b32_e32 v37, v177
	v_mov_b32_e32 v38, v177
	v_mov_b32_e32 v39, v177
	v_mov_b32_e32 v40, v177
	v_mov_b32_e32 v42, v177
	v_mov_b32_e32 v43, v177
	v_mov_b32_e32 v44, v177
	v_mov_b32_e32 v45, v177
	v_mov_b32_e32 v46, v177
	v_mov_b32_e32 v47, v177
	v_mov_b32_e32 v48, v177
	v_mov_b32_e32 v50, v177
	v_mov_b32_e32 v51, v177
	v_mov_b32_e32 v52, v177
	v_mov_b32_e32 v53, v177
	v_mov_b32_e32 v54, v177
	v_mov_b32_e32 v55, v177
	v_mov_b32_e32 v56, v177
	v_mov_b32_e32 v58, v177
	v_mov_b32_e32 v59, v177
	v_mov_b32_e32 v60, v177
	v_mov_b32_e32 v61, v177
	v_mov_b32_e32 v62, v177
	v_mov_b32_e32 v63, v177
	v_mov_b32_e32 v64, v177
	.loc	1 616 28 is_stmt 1              ; ragged.py:616:28
	s_lshl_b32 s34, s8, 7
	s_mov_b32 s35, 0
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 619 26 is_stmt 1              ; ragged.py:619:26
	s_or_b32 s5, s35, s34
	v_or_b32_e32 v65, s5, v184
	v_or_b32_e32 v67, s5, v179
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 620 31                        ; ragged.py:620:31
	v_cmp_gt_i32_e64 s5, s9, v65
	.loc	1 619 26                        ; ragged.py:619:26
	v_or_b32_e32 v69, 16, v67
	.loc	1 620 31                        ; ragged.py:620:31
	v_cmp_gt_i32_e64 s6, s9, v67
	.loc	1 630 42                        ; ragged.py:630:42
	v_mad_u64_u32 v[67:68], null, v67, s33, v[97:98]
	.loc	1 629 42                        ; ragged.py:629:42
	v_add_nc_u32_e32 v65, v187, v65
	.loc	1 629 66 is_stmt 0              ; ragged.py:629:66
	s_and_b32 s5, s30, s5
	.loc	1 620 31 is_stmt 1              ; ragged.py:620:31
	v_cmp_gt_i32_e64 s7, s9, v69
	.loc	1 630 42                        ; ragged.py:630:42
	v_mad_u64_u32 v[68:69], null, v69, s33, v[97:98]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 629 34                        ; ragged.py:629:34
	v_cndmask_b32_e64 v65, 0x80000000, v65, s5
	.loc	1 630 66                        ; ragged.py:630:66
	s_and_b32 s5, s0, s6
	s_and_b32 s6, s0, s7
	.loc	1 630 34 is_stmt 0              ; ragged.py:630:34
	v_cndmask_b32_e64 v67, 0x80000000, v67, s5
	.loc	1 641 21 is_stmt 1              ; ragged.py:641:21
	s_add_i32 s5, s35, 32
	.loc	1 629 34                        ; ragged.py:629:34
	buffer_load_b64 v[65:66], v65, s[24:27], 0 offen
	.loc	1 618 23                        ; ragged.py:618:23
	s_cmpk_lt_u32 s35, 0x60
	s_mov_b32 s35, s5
	.loc	1 630 34                        ; ragged.py:630:34
	buffer_load_b128 v[98:101], v67, s[12:15], 0 offen
	v_cndmask_b32_e64 v67, 0x80000000, v68, s6
	buffer_load_b128 v[102:105], v67, s[12:15], 0 offen
	.loc	1 629 34                        ; ragged.py:629:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v188, v[65:66]
	v_add_nc_u32_e32 v65, 0, v185
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[81:84], v65 offset1:1
	ds_load_2addr_stride64_b64 v[77:80], v65 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[85:88], v189 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v189 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[89:92], v190 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v190 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[93:96], v191 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v191 offset0:2 offset1:3
	.loc	1 630 34                        ; ragged.py:630:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v192, v[98:101]
	s_waitcnt vmcnt(0)
	ds_store_b128 v192, v[102:105] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 631 31                        ; ragged.py:631:31
	ds_load_u8 v98, v186 offset:1280
	ds_load_u8 v99, v186 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v186 offset:1792
	ds_load_u8 v100, v186 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v99, 16, v98
	ds_load_u8 v98, v186 offset:256
	ds_load_u8 v100, v186
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v100, v98, 0xc0c0004
	ds_load_u8 v100, v186 offset:768
	ds_load_u8 v101, v186 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v100, 16, v98
	ds_load_u8 v100, v186 offset:3328
	ds_load_u8 v101, v186 offset:3072
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[81:82], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[83:84], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[77:78], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[79:80], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v186 offset:3840
	ds_load_u8 v102, v186 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v101, v101, 16, v100
	ds_load_u8 v100, v186 offset:2304
	ds_load_u8 v102, v186 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v102, v100, 0xc0c0004
	ds_load_u8 v102, v186 offset:2816
	ds_load_u8 v103, v186 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v102, 16, v100
	ds_load_u8 v102, v186 offset:5376
	ds_load_u8 v103, v186 offset:5120
	v_wmma_i32_16x16x16_iu4 v[1:8], v[100:101], v[85:86], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[100:101], v[87:88], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[100:101], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[100:101], v[75:76], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v186 offset:5888
	ds_load_u8 v104, v186 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v103, 16, v102
	ds_load_u8 v102, v186 offset:4352
	ds_load_u8 v104, v186 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v104, v102, 0xc0c0004
	ds_load_u8 v104, v186 offset:4864
	ds_load_u8 v105, v186 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v104, 16, v102
	ds_load_u8 v104, v186 offset:7424
	ds_load_u8 v105, v186 offset:7168
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[89:90], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[91:92], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[69:70], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[102:103], v[71:72], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v186 offset:7936
	ds_load_u8 v106, v186 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v105, v105, 16, v104
	ds_load_u8 v104, v186 offset:6400
	ds_load_u8 v106, v186 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v106, v104, 0xc0c0004
	ds_load_u8 v106, v186 offset:6912
	ds_load_u8 v107, v186 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v106, 16, v104
	ds_load_u8 v106, v186 offset:1408
	ds_load_u8 v107, v186 offset:1152
	v_wmma_i32_16x16x16_iu4 v[1:8], v[104:105], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[104:105], v[95:96], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[104:105], v[65:66], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[104:105], v[67:68], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v186 offset:1920
	ds_load_u8 v195, v186 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v195, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v107, 16, v106
	ds_load_u8 v106, v186 offset:384
	ds_load_u8 v195, v186 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v195, v106, 0xc0c0004
	ds_load_u8 v195, v186 offset:896
	ds_load_u8 v196, v186 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v106, v195, 16, v106
	v_wmma_i32_16x16x16_iu4 v[9:16], v[106:107], v[81:82], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v81, v186 offset:3456
	ds_load_u8 v82, v186 offset:3200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[106:107], v[83:84], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[106:107], v[77:78], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[106:107], v[79:80], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	ds_load_u8 v82, v186 offset:3968
	ds_load_u8 v195, v186 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v195, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v82, 16, v81
	ds_load_u8 v81, v186 offset:2432
	ds_load_u8 v195, v186 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v195, v81, 0xc0c0004
	ds_load_u8 v195, v186 offset:2944
	ds_load_u8 v196, v186 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v81, v195, 16, v81
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[85:86], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v85, v186 offset:5504
	ds_load_u8 v86, v186 offset:5248
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[87:88], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[81:82], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[81:82], v[75:76], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v186 offset:6016
	ds_load_u8 v195, v186 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v195, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v86, 16, v85
	ds_load_u8 v85, v186 offset:4480
	ds_load_u8 v195, v186 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v195, v85, 0xc0c0004
	ds_load_u8 v195, v186 offset:4992
	ds_load_u8 v196, v186 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v85, v195, 16, v85
	v_wmma_i32_16x16x16_iu4 v[9:16], v[85:86], v[89:90], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v89, v186 offset:7552
	ds_load_u8 v90, v186 offset:7296
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[91:92], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[85:86], v[69:70], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[85:86], v[71:72], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v186 offset:8064
	ds_load_u8 v195, v186 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v195, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v90, 16, v89
	ds_load_u8 v89, v186 offset:6528
	ds_load_u8 v195, v186 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v195, v89, 0xc0c0004
	ds_load_u8 v195, v186 offset:7040
	ds_load_u8 v196, v186 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v89, v195, 16, v89
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[93:94], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[95:96], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[89:90], v[65:66], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[89:90], v[67:68], v[57:64] neg_lo:[1,1,0]
	.loc	1 618 23                        ; ragged.py:618:23
	s_cbranch_scc1 .LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 644 40                        ; ragged.py:644:40
	v_add_lshl_u32 v65, s8, v180, 1
	.loc	1 652 25                        ; ragged.py:652:25
	s_add_i32 s5, s8, s31
	.loc	1 644 40                        ; ragged.py:644:40
	v_add_lshl_u32 v66, s8, v181, 1
	v_add_lshl_u32 v67, s8, v182, 1
	.loc	1 652 25                        ; ragged.py:652:25
	s_mul_i32 s5, s5, s33
	.loc	1 644 40                        ; ragged.py:644:40
	v_add_lshl_u32 v68, s8, v183, 1
	.loc	1 651 40                        ; ragged.py:651:40
	v_add_lshl_u32 v69, v178, s5, 1
	.loc	1 644 40                        ; ragged.py:644:40
	v_cndmask_b32_e64 v65, 0x80000000, v65, s4
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 651 40                        ; ragged.py:651:40
	v_cndmask_b32_e64 v69, 0x80000000, v69, s1
	.loc	1 644 40                        ; ragged.py:644:40
	s_clause 0x3
	buffer_load_u16 v65, v65, s[16:19], 0 offen
	buffer_load_u16 v66, v66, s[16:19], 0 offen
	buffer_load_u16 v67, v67, s[16:19], 0 offen
	buffer_load_u16 v68, v68, s[16:19], 0 offen
	.loc	1 651 40                        ; ragged.py:651:40
	buffer_load_u16 v69, v69, s[20:23], 0 offen
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v1, v1
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
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v18, v18
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
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 656 21                        ; ragged.py:656:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
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
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 658 17                        ; ragged.py:658:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 614 19                        ; ragged.py:614:19
	s_cmp_lg_u32 s8, s28
	.loc	1 644 40                        ; ragged.py:644:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v65, 16, v65
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v66, 16, v66
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 649 21                        ; ragged.py:649:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v73, v4, v65 :: v_dual_lshlrev_b32 v68, 16, v68
	v_mul_f32_e32 v71, v2, v65
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v18, v18, v66 :: v_dual_lshlrev_b32 v69, 16, v69
	v_mul_f32_e32 v70, v1, v65
	v_dual_mul_f32 v72, v3, v65 :: v_dual_mul_f32 v17, v17, v66
	v_dual_mul_f32 v74, v5, v65 :: v_dual_mul_f32 v19, v19, v66
	v_dual_mul_f32 v75, v6, v65 :: v_dual_mul_f32 v20, v20, v66
	v_dual_mul_f32 v76, v7, v65 :: v_dual_mul_f32 v21, v21, v66
	v_dual_mul_f32 v77, v8, v65 :: v_dual_mul_f32 v22, v22, v66
	v_dual_mul_f32 v78, v9, v65 :: v_dual_mul_f32 v23, v23, v66
	v_dual_mul_f32 v79, v10, v65 :: v_dual_mul_f32 v24, v24, v66
	v_dual_mul_f32 v80, v11, v65 :: v_dual_mul_f32 v25, v25, v66
	v_dual_mul_f32 v81, v12, v65 :: v_dual_mul_f32 v26, v26, v66
	v_dual_mul_f32 v82, v13, v65 :: v_dual_mul_f32 v27, v27, v66
	v_dual_mul_f32 v83, v14, v65 :: v_dual_mul_f32 v28, v28, v66
	v_dual_mul_f32 v84, v15, v65 :: v_dual_mul_f32 v29, v29, v66
	v_dual_mul_f32 v65, v16, v65 :: v_dual_mul_f32 v30, v30, v66
	.loc	1 656 21                        ; ragged.py:656:21
	ds_store_b32 v193, v69
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v194
	ds_load_b128 v[5:8], v194 offset:16
	ds_load_b128 v[9:12], v194 offset:512
	ds_load_b128 v[13:16], v194 offset:528
	.loc	1 649 21                        ; ragged.py:649:21
	v_dual_mul_f32 v31, v31, v66 :: v_dual_mul_f32 v34, v34, v67
	v_dual_mul_f32 v32, v32, v66 :: v_dual_mul_f32 v33, v33, v67
	v_dual_mul_f32 v35, v35, v67 :: v_dual_mul_f32 v50, v50, v68
	v_dual_mul_f32 v36, v36, v67 :: v_dual_mul_f32 v49, v49, v68
	v_dual_mul_f32 v37, v37, v67 :: v_dual_mul_f32 v52, v52, v68
	v_dual_mul_f32 v38, v38, v67 :: v_dual_mul_f32 v51, v51, v68
	v_dual_mul_f32 v39, v39, v67 :: v_dual_mul_f32 v54, v54, v68
	v_dual_mul_f32 v40, v40, v67 :: v_dual_mul_f32 v53, v53, v68
	v_dual_mul_f32 v41, v41, v67 :: v_dual_mul_f32 v56, v56, v68
	v_dual_mul_f32 v42, v42, v67 :: v_dual_mul_f32 v55, v55, v68
	v_dual_mul_f32 v43, v43, v67 :: v_dual_mul_f32 v58, v58, v68
	v_dual_mul_f32 v44, v44, v67 :: v_dual_mul_f32 v57, v57, v68
	v_dual_mul_f32 v45, v45, v67 :: v_dual_mul_f32 v60, v60, v68
	v_dual_mul_f32 v46, v46, v67 :: v_dual_mul_f32 v59, v59, v68
	v_dual_mul_f32 v47, v47, v67 :: v_dual_mul_f32 v62, v62, v68
	v_dual_mul_f32 v48, v48, v67 :: v_dual_mul_f32 v61, v61, v68
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v63, v63, v68 :: v_dual_fmac_f32 v176, v70, v1
	v_dual_mul_f32 v64, v64, v68 :: v_dual_fmac_f32 v175, v71, v2
	.loc	1 657 17                        ; ragged.py:657:17
	v_dual_fmac_f32 v174, v72, v3 :: v_dual_fmac_f32 v173, v73, v4
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v172, v74, v5 :: v_dual_fmac_f32 v171, v75, v6
	v_dual_fmac_f32 v170, v76, v7 :: v_dual_fmac_f32 v169, v77, v8
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v168, v78, v9 :: v_dual_fmac_f32 v167, v79, v10
	v_dual_fmac_f32 v166, v80, v11 :: v_dual_fmac_f32 v165, v81, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v164, v82, v13 :: v_dual_fmac_f32 v163, v83, v14
	v_dual_fmac_f32 v162, v84, v15 :: v_dual_fmac_f32 v161, v65, v16
	v_dual_fmac_f32 v160, v17, v1 :: v_dual_fmac_f32 v159, v18, v2
	v_dual_fmac_f32 v158, v19, v3 :: v_dual_fmac_f32 v155, v20, v4
	v_dual_fmac_f32 v152, v21, v5 :: v_dual_fmac_f32 v149, v23, v7
	v_dual_fmac_f32 v150, v22, v6 :: v_dual_fmac_f32 v147, v25, v9
	v_dual_fmac_f32 v148, v24, v8 :: v_dual_fmac_f32 v145, v27, v11
	v_dual_fmac_f32 v146, v26, v10 :: v_dual_fmac_f32 v143, v29, v13
	v_dual_fmac_f32 v144, v28, v12 :: v_dual_fmac_f32 v141, v31, v15
	v_dual_fmac_f32 v142, v30, v14 :: v_dual_fmac_f32 v139, v33, v1
	v_dual_fmac_f32 v140, v32, v16 :: v_dual_fmac_f32 v137, v35, v3
	v_dual_fmac_f32 v138, v34, v2 :: v_dual_fmac_f32 v135, v37, v5
	v_dual_fmac_f32 v136, v36, v4 :: v_dual_fmac_f32 v133, v39, v7
	v_dual_fmac_f32 v134, v38, v6 :: v_dual_fmac_f32 v131, v41, v9
	v_dual_fmac_f32 v132, v40, v8 :: v_dual_fmac_f32 v129, v43, v11
	v_dual_fmac_f32 v130, v42, v10 :: v_dual_fmac_f32 v127, v45, v13
	v_dual_fmac_f32 v128, v44, v12 :: v_dual_fmac_f32 v125, v47, v15
	v_dual_fmac_f32 v126, v46, v14 :: v_dual_fmac_f32 v123, v49, v1
	v_dual_fmac_f32 v124, v48, v16 :: v_dual_fmac_f32 v121, v51, v3
	v_dual_fmac_f32 v122, v50, v2 :: v_dual_fmac_f32 v119, v53, v5
	v_dual_fmac_f32 v120, v52, v4 :: v_dual_fmac_f32 v117, v55, v7
	v_dual_fmac_f32 v118, v54, v6 :: v_dual_fmac_f32 v115, v57, v9
	v_dual_fmac_f32 v116, v56, v8 :: v_dual_fmac_f32 v113, v59, v11
	v_dual_fmac_f32 v114, v58, v10 :: v_dual_fmac_f32 v111, v61, v13
	v_dual_fmac_f32 v112, v60, v12 :: v_dual_fmac_f32 v109, v63, v15
	v_fmac_f32_e32 v110, v62, v14
	v_fmac_f32_e32 v108, v64, v16
	.loc	1 614 19                        ; ragged.py:614:19
	s_cbranch_scc1 .LBB0_2
.LBB0_5:                                ; %._crit_edge
	.loc	1 660 9                         ; ragged.py:660:9
	v_bfe_u32 v7, v176, 16, 1
	v_bfe_u32 v8, v175, 16, 1
	v_cmp_o_f32_e64 s5, v176, v176
	v_cmp_o_f32_e64 s6, v175, v175
	v_bfe_u32 v9, v174, 16, 1
	v_add3_u32 v7, v176, v7, 0x7fff
	v_add3_u32 v8, v175, v8, 0x7fff
	v_bfe_u32 v10, v173, 16, 1
	v_cmp_o_f32_e64 s7, v174, v174
	v_add3_u32 v9, v174, v9, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v172, 16, 1
	v_bfe_u32 v11, v171, 16, 1
	v_add3_u32 v10, v173, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v173, v173
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s7
	v_add3_u32 v8, v172, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v172, v172
	v_add3_u32 v11, v171, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v171, v171
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s5
	v_bfe_u32 v10, v170, 16, 1
	v_bfe_u32 v12, v169, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s7
	v_bfe_u32 v11, v168, 16, 1
	v_add3_u32 v10, v170, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v170, v170
	v_add3_u32 v12, v169, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v169, v169
	v_bfe_u32 v13, v167, 16, 1
	v_add3_u32 v11, v168, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v168, v168
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s6
	v_bfe_u32 v12, v166, 16, 1
	v_bfe_u32 v14, v165, 16, 1
	v_add3_u32 v13, v167, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v167, v167
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s7
	v_add3_u32 v12, v166, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v166, v166
	v_add3_u32 v14, v165, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v165, v165
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v164, 16, 1
	v_bfe_u32 v15, v163, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v162, 16, 1
	v_add3_u32 v13, v164, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v164, v164
	v_add3_u32 v15, v163, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v163, v163
	v_bfe_u32 v16, v161, 16, 1
	v_add3_u32 v14, v162, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v162, v162
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s6
	v_bfe_u32 v15, v160, 16, 1
	v_bfe_u32 v17, v159, 16, 1
	v_add3_u32 v16, v161, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v161, v161
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s7
	v_add3_u32 v15, v160, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v160, v160
	v_add3_u32 v17, v159, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v159, v159
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s5
	v_bfe_u32 v16, v158, 16, 1
	v_bfe_u32 v18, v155, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s6
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s7
	v_bfe_u32 v17, v152, 16, 1
	v_add3_u32 v16, v158, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v158, v158
	v_add3_u32 v18, v155, v18, 0x7fff
	v_cmp_o_f32_e64 s6, v155, v155
	v_bfe_u32 v19, v150, 16, 1
	v_add3_u32 v17, v152, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v152, v152
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s5
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s6
	v_bfe_u32 v18, v149, 16, 1
	v_bfe_u32 v20, v148, 16, 1
	v_add3_u32 v19, v150, v19, 0x7fff
	v_cmp_o_f32_e64 s5, v150, v150
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s7
	v_add3_u32 v18, v149, v18, 0x7fff
	v_cmp_o_f32_e64 s6, v149, v149
	v_add3_u32 v20, v148, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v148, v148
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s5
	v_bfe_u32 v19, v147, 16, 1
	v_bfe_u32 v21, v146, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s7
	v_bfe_u32 v20, v145, 16, 1
	v_add3_u32 v19, v147, v19, 0x7fff
	v_cmp_o_f32_e64 s5, v147, v147
	v_add3_u32 v21, v146, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v146, v146
	v_bfe_u32 v22, v144, 16, 1
	v_add3_u32 v20, v145, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v145, v145
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v143, 16, 1
	v_bfe_u32 v23, v142, 16, 1
	v_add3_u32 v22, v144, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v144, v144
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s7
	v_add3_u32 v21, v143, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v143, v143
	v_add3_u32 v23, v142, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v142, v142
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v141, 16, 1
	v_bfe_u32 v24, v140, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s6
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s7
	v_bfe_u32 v23, v139, 16, 1
	v_add3_u32 v22, v141, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v141, v141
	v_add3_u32 v24, v140, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v140, v140
	v_bfe_u32 v25, v138, 16, 1
	v_add3_u32 v23, v139, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v139, v139
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s5
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s6
	v_bfe_u32 v24, v137, 16, 1
	v_bfe_u32 v26, v136, 16, 1
	v_add3_u32 v25, v138, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v138, v138
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s7
	v_add3_u32 v24, v137, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v137, v137
	v_add3_u32 v26, v136, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v136, v136
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s5
	v_bfe_u32 v25, v135, 16, 1
	v_bfe_u32 v27, v134, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s6
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s7
	v_bfe_u32 v26, v133, 16, 1
	v_add3_u32 v25, v135, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v135, v135
	v_add3_u32 v27, v134, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v134, v134
	v_bfe_u32 v28, v132, 16, 1
	v_add3_u32 v26, v133, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v133, v133
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s5
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s6
	v_bfe_u32 v27, v131, 16, 1
	v_bfe_u32 v29, v130, 16, 1
	v_add3_u32 v28, v132, v28, 0x7fff
	v_cmp_o_f32_e64 s5, v132, v132
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s7
	v_add3_u32 v27, v131, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v131, v131
	v_add3_u32 v29, v130, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v130, v130
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s5
	v_bfe_u32 v28, v129, 16, 1
	v_bfe_u32 v30, v128, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v127, 16, 1
	v_add3_u32 v28, v129, v28, 0x7fff
	v_cmp_o_f32_e64 s5, v129, v129
	v_add3_u32 v30, v128, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v128, v128
	v_bfe_u32 v31, v126, 16, 1
	v_add3_u32 v29, v127, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v127, v127
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s5
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v125, 16, 1
	v_bfe_u32 v32, v124, 16, 1
	v_add3_u32 v31, v126, v31, 0x7fff
	v_cmp_o_f32_e64 s5, v126, v126
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s7
	v_add3_u32 v30, v125, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v125, v125
	v_add3_u32 v32, v124, v32, 0x7fff
	v_cmp_o_f32_e64 s7, v124, v124
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s5
	v_bfe_u32 v31, v123, 16, 1
	v_bfe_u32 v33, v122, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s6
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s7
	v_bfe_u32 v32, v121, 16, 1
	v_add3_u32 v31, v123, v31, 0x7fff
	v_cmp_o_f32_e64 s5, v123, v123
	v_add3_u32 v33, v122, v33, 0x7fff
	v_cmp_o_f32_e64 s6, v122, v122
	v_bfe_u32 v34, v120, 16, 1
	v_add3_u32 v32, v121, v32, 0x7fff
	v_cmp_o_f32_e64 s7, v121, v121
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s5
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s6
	v_bfe_u32 v33, v119, 16, 1
	v_bfe_u32 v35, v118, 16, 1
	v_add3_u32 v34, v120, v34, 0x7fff
	v_cmp_o_f32_e64 s5, v120, v120
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s7
	v_add3_u32 v33, v119, v33, 0x7fff
	v_cmp_o_f32_e64 s6, v119, v119
	v_add3_u32 v35, v118, v35, 0x7fff
	v_cmp_o_f32_e64 s7, v118, v118
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s5
	v_bfe_u32 v34, v117, 16, 1
	v_bfe_u32 v36, v116, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s6
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s7
	v_bfe_u32 v35, v115, 16, 1
	v_add3_u32 v34, v117, v34, 0x7fff
	v_cmp_o_f32_e64 s5, v117, v117
	v_add3_u32 v36, v116, v36, 0x7fff
	v_cmp_o_f32_e64 s6, v116, v116
	v_bfe_u32 v37, v114, 16, 1
	v_add3_u32 v35, v115, v35, 0x7fff
	v_cmp_o_f32_e64 s7, v115, v115
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s5
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s6
	v_bfe_u32 v36, v113, 16, 1
	v_bfe_u32 v38, v112, 16, 1
	v_add3_u32 v37, v114, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v114, v114
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s7
	v_add3_u32 v36, v113, v36, 0x7fff
	v_cmp_o_f32_e64 s6, v113, v113
	v_add3_u32 v38, v112, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v112, v112
	v_bfe_u32 v39, v111, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v110, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s6
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	v_add3_u32 v38, v111, v39, 0x7fff
	v_bfe_u32 v39, v109, 16, 1
	v_cmp_o_f32_e64 s5, v111, v111
	v_bfe_u32 v40, v108, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v37, v110, v37, 0x7fff
	v_add3_u32 v39, v109, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v109, v109
	v_add3_u32 v40, v108, v40, 0x7fff
	v_cmp_o_f32_e64 s8, v108, v108
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s5
	v_cmp_eq_u32_e64 s5, 0, v0
	v_cmp_o_f32_e64 s6, v110, v110
	v_cndmask_b16 v0.l, 0x7fff, v39.h, s7
	v_cndmask_b16 v0.h, 0x7fff, v40.h, s8
	.loc	1 563 36                        ; ragged.py:563:36
	v_lshrrev_b32_e32 v2, 1, v153
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b32_e64 v38, v8, v7, s5
	v_cndmask_b32_e64 v7, v7, v8, s5
	v_cndmask_b32_e64 v39, v10, v9, s5
	v_cndmask_b32_e64 v8, v9, v10, s5
	v_cndmask_b32_e64 v40, v13, v11, s5
	v_cndmask_b32_e64 v9, v11, v13, s5
	v_cndmask_b32_e64 v41, v14, v12, s5
	v_cndmask_b32_e64 v10, v12, v14, s5
	v_cndmask_b32_e64 v42, v17, v15, s5
	v_cndmask_b32_e64 v11, v15, v17, s5
	v_cndmask_b32_e64 v45, v22, v20, s5
	v_cndmask_b32_e64 v14, v20, v22, s5
	v_cndmask_b32_e64 v46, v25, v23, s5
	v_cndmask_b32_e64 v15, v23, v25, s5
	v_mov_b32_e32 v22, 0x5410
	v_mov_b32_e32 v23, 0x7632
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s6
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v43, v18, v16, s5
	v_cndmask_b32_e64 v12, v16, v18, s5
	v_cndmask_b32_e64 v47, v26, v24, s5
	v_cndmask_b32_e64 v16, v24, v26, s5
	v_permlanex16_b32 v24, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x1054, v22, s5
	v_cndmask_b32_e64 v22, 0x3276, v23, s5
	v_permlanex16_b32 v23, v8, s6, 0xfedcba98 op_sel:[1,0]
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v2, s29, v2
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v6, v151, s33
	.loc	1 660 9                         ; ragged.py:660:9
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	v_cndmask_b32_e64 v44, v21, v19, s5
	v_cndmask_b32_e64 v13, v19, v21, s5
	v_cndmask_b32_e64 v17, v27, v29, s5
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_cndmask_b32_e64 v18, v28, v30, s5
	v_cndmask_b32_e64 v19, v31, v33, s5
	v_cndmask_b32_e64 v20, v32, v34, s5
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_cndmask_b32_e64 v52, v37, v35, s5
	v_cndmask_b32_e64 v21, v35, v37, s5
	v_cndmask_b32_e64 v53, v0, v36, s5
	v_cndmask_b32_e64 v0, v36, v0, s5
	v_and_b32_e32 v37, 0x5040504, v7
	v_and_b32_e32 v54, 0x7060706, v8
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v3, 0x80, v2
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v5, v154, s33
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v4, v156, s33
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b32_e64 v48, v29, v27, s5
	v_cndmask_b32_e64 v49, v30, v28, s5
	v_cndmask_b32_e64 v50, v33, v31, s5
	v_cndmask_b32_e64 v51, v34, v32, s5
	v_permlanex16_b32 v25, v9, s6, 0xfedcba98 op_sel:[1,0]
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
	v_permlanex16_b32 v0, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v24, v38, v37
	v_perm_b32 v8, v24, v38, v54
	v_add_lshl_u32 v38, v2, v6, 1
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v1, v157, s33
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s0, s33, v3
	.loc	1 660 9                         ; ragged.py:660:9
	v_add_lshl_u32 v6, v3, v6, 1
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s5, s1, s4
	.loc	1 660 9                         ; ragged.py:660:9
	v_perm_b32 v9, v23, v39, v37
	v_perm_b32 v10, v23, v39, v54
	v_perm_b32 v11, v25, v40, v37
	v_perm_b32 v12, v25, v40, v54
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
	v_perm_b32 v37, v0, v53, v37
	v_cndmask_b32_e64 v40, 0x80000000, v38, s5
	v_perm_b32 v38, v0, v53, v54
	v_add_lshl_u32 v0, v3, v5, 1
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s4, s0, s4
	.loc	1 660 9                         ; ragged.py:660:9
	v_add_lshl_u32 v39, v2, v5, 1
	v_add_lshl_u32 v5, v2, v4, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s4, s1, s3
	s_and_b32 s3, s0, s3
	.loc	1 660 9                         ; ragged.py:660:9
	v_add_lshl_u32 v4, v3, v4, 1
	v_add_lshl_u32 v2, v2, v1, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s3, s1, s2
	.loc	1 660 9                         ; ragged.py:660:9
	v_add_lshl_u32 v1, v3, v1, 1
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s2, s0, s2
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b32_e64 v39, 0x80000000, v39, s4
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s1, s1, vcc_lo
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 660 9                         ; ragged.py:660:9
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s10
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_perm_b32 v36, v36, v52, v54
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
	.loc	1 523 5                         ; ragged.py:523:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 197
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 197
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8360
; TotalNumSgprs: 38
; NumVgprs: 197
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 197
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
	.short	549                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     197
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
