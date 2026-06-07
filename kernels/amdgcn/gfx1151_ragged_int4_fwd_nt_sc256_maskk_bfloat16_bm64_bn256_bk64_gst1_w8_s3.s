	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 523 0                         ; ragged.py:523:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[18:19], s[0:1], 0x54
.Ltmp0:
	.loc	1 551 25 prologue_end           ; ragged.py:551:25
	s_abs_i32 s7, s2
	v_and_b32_e32 v110, 16, v0
	.loc	1 562 18                        ; ragged.py:562:18
	v_mov_b32_e32 v66, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:549:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:549:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 551 25 is_stmt 1              ; ragged.py:551:25
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
	.loc	1 553 33                        ; ragged.py:553:33
	s_sub_i32 s4, s19, s8
	.loc	1 554 24                        ; ragged.py:554:24
	s_mul_i32 s3, s8, s3
	.loc	1 553 22                        ; ragged.py:553:22
	s_min_i32 s9, s4, 1
	.loc	1 554 24                        ; ragged.py:554:24
	s_sub_i32 s2, s2, s3
	.loc	1 556 17                        ; ragged.py:556:17
	s_abs_i32 s10, s9
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 562 32                        ; ragged.py:562:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 556 17                        ; ragged.py:556:17
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
	s_sub_i32 s10, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 555 34                        ; ragged.py:555:34
	s_mul_i32 s3, s10, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 555 20 is_stmt 0              ; ragged.py:555:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 558 20 is_stmt 1              ; ragged.py:558:20
	s_ashr_i32 s3, s2, 31
	.loc	1 559 23                        ; ragged.py:559:23
	s_lshl_b64 s[28:29], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s28
	s_addc_u32 s3, s5, s29
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 560 24                        ; ragged.py:560:24
	s_add_u32 s2, s6, s28
	s_addc_u32 s3, s7, s29
	.loc	1 561 22                        ; ragged.py:561:22
	s_add_u32 s4, s8, s28
	s_addc_u32 s5, s9, s29
	.loc	1 560 24                        ; ragged.py:560:24
	s_load_b64 s[24:25], s[2:3], 0x0
	.loc	1 561 22                        ; ragged.py:561:22
	s_load_b64 s[26:27], s[4:5], 0x0
	.loc	1 562 18                        ; ragged.py:562:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s20, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s21, 0, s2
	.loc	1 645 25                        ; ragged.py:645:25
	v_add_nc_u32_e32 v93, s20, v1
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
	v_cmp_le_i64_e64 s6, s[24:25], v[6:7]
	v_cmp_le_i64_e64 s7, s[24:25], v[8:9]
	.loc	1 564 48                        ; ragged.py:564:48
	v_cmp_gt_i64_e64 s4, s[26:27], v[4:5]
	v_cmp_gt_i64_e64 s8, s[26:27], v[6:7]
	v_cmp_gt_i64_e64 s9, s[26:27], v[8:9]
	.loc	1 564 20                        ; ragged.py:564:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 614 19 is_stmt 1              ; ragged.py:614:19
	s_cmp_gt_i32 s18, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 660 9                         ; ragged.py:660:9
	v_and_b32_e32 v4, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; ragged.py:0:9
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr4
.LBB0_3:                                ; %Flow164
	s_load_b64 s[16:17], s[0:1], 0x40
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v102, 0xf0, v0
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v98, 16, v93
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v99, 32, v93
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v100, 48, v93
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_mov_b32_e32 v135, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s19, s10, 8
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s34, s[0:1], 0x50
	.loc	1 562 32 is_stmt 1              ; ragged.py:562:32
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 562 18 is_stmt 0              ; ragged.py:562:18
	v_dual_mov_b32 v136, 0 :: v_dual_lshlrev_b32 v7, 3, v0
	.loc	1 563 36 is_stmt 1              ; ragged.py:563:36
	v_lshrrev_b32_e32 v5, 1, v0
	.loc	1 563 18 is_stmt 0              ; ragged.py:563:18
	v_or_b32_e32 v137, s19, v0
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v6, 1, v0
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	v_bfe_u32 v0, v0, 4, 1
	v_or_b32_e32 v9, s19, v5
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v5, 24, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v10, 24, v8
	v_and_or_b32 v0, v8, 30, v0
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v142, 4, v6
	.loc	1 558 20 is_stmt 1              ; ragged.py:558:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s28
	s_addc_u32 s1, s7, s29
	v_lshl_or_b32 v144, v1, 5, v10
	.loc	1 652 25                        ; ragged.py:652:25
	s_load_b32 s28, s[0:1], 0x0
	.loc	1 562 18                        ; ragged.py:562:18
	v_add_co_u32 v2, s0, s20, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s21, 0, s0
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v145, 2, v0
	v_xor_b32_e32 v0, v7, v5
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v5, 2, v102
	v_dual_mov_b32 v127, 0 :: v_dual_lshlrev_b32 v6, 5, v6
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v11, 0x80, v9
	.loc	1 626 39                        ; ragged.py:626:39
	s_mul_i32 s21, s34, s33
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v4, s20, v4
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e64 s6, s[24:25], v[2:3]
	.loc	1 564 48 is_stmt 0              ; ragged.py:564:48
	v_cmp_gt_i64_e64 s7, s[26:27], v[2:3]
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v143, 24, v7
	.loc	1 626 39 is_stmt 1              ; ragged.py:626:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s24, s21, s28
	v_xor_b32_e32 v1, 8, v144
	v_xor_b32_e32 v2, 16, v144
	v_xor_b32_e32 v3, 24, v144
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v7, 28, v8
	v_add3_u32 v5, 0, v5, v6
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v6, 1, v102
	v_mad_u64_u32 v[64:65], null, v9, s34, s[24:25]
	.loc	1 645 25                        ; ragged.py:645:25
	v_mul_lo_u32 v138, v93, s18
	v_mul_lo_u32 v139, v98, s18
	v_mul_lo_u32 v140, v99, s18
	v_mul_lo_u32 v141, v100, s18
	v_mul_lo_u32 v147, v4, s34
	v_mad_u64_u32 v[65:66], null, s34, v11, s[24:25]
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s0, s33, v9
	v_cmp_gt_i32_e64 s1, s33, v11
	.loc	1 564 20                        ; ragged.py:564:20
	s_and_b32 s35, s6, s7
	v_xor_b32_e32 v146, 4, v145
	v_cmp_eq_u32_e64 s6, 0, v110
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v148, 0, v0
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v149, 0, v1
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v150, 0, v2
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v151, 0, v3
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v152, v5, v7
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v153, 0, v6
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 652 25                        ; ragged.py:652:25
	s_mul_i32 s36, s18, s28
	s_mov_b32 s37, 0
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s24, s10
	s_mov_b32 s25, s11
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s28, s12
	s_mov_b32 s29, s13
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v137
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v136
	v_mov_b32_e32 v2, v136
	v_dual_mov_b32 v3, v136 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v4, v136
	v_dual_mov_b32 v5, v136 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v6, v136
	v_dual_mov_b32 v7, v136 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v9, v136 :: v_dual_mov_b32 v32, 0
	v_mov_b32_e32 v10, v136
	v_dual_mov_b32 v11, v136 :: v_dual_mov_b32 v40, 0
	v_mov_b32_e32 v12, v136
	v_dual_mov_b32 v13, v136 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v14, v136
	v_dual_mov_b32 v15, v136 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v17, v136
	v_mov_b32_e32 v18, v136
	v_mov_b32_e32 v19, v136
	v_mov_b32_e32 v20, v136
	v_mov_b32_e32 v21, v136
	v_mov_b32_e32 v22, v136
	v_mov_b32_e32 v23, v136
	v_mov_b32_e32 v25, v136
	v_mov_b32_e32 v26, v136
	v_mov_b32_e32 v27, v136
	v_mov_b32_e32 v28, v136
	v_mov_b32_e32 v29, v136
	v_mov_b32_e32 v30, v136
	v_mov_b32_e32 v31, v136
	v_mov_b32_e32 v33, v136
	v_mov_b32_e32 v34, v136
	v_mov_b32_e32 v35, v136
	v_mov_b32_e32 v36, v136
	v_mov_b32_e32 v37, v136
	v_mov_b32_e32 v38, v136
	v_mov_b32_e32 v39, v136
	v_mov_b32_e32 v41, v136
	v_mov_b32_e32 v42, v136
	v_mov_b32_e32 v43, v136
	v_mov_b32_e32 v44, v136
	v_mov_b32_e32 v45, v136
	v_mov_b32_e32 v46, v136
	v_mov_b32_e32 v47, v136
	v_mov_b32_e32 v49, v136
	v_mov_b32_e32 v50, v136
	v_mov_b32_e32 v51, v136
	v_mov_b32_e32 v52, v136
	v_mov_b32_e32 v53, v136
	v_mov_b32_e32 v54, v136
	v_mov_b32_e32 v55, v136
	v_mov_b32_e32 v57, v136
	v_mov_b32_e32 v58, v136
	v_mov_b32_e32 v59, v136
	v_mov_b32_e32 v60, v136
	v_mov_b32_e32 v61, v136
	v_mov_b32_e32 v62, v136
	v_mov_b32_e32 v63, v136
	.loc	1 616 28 is_stmt 1              ; ragged.py:616:28
	s_lshl_b32 s10, s37, 7
	s_mov_b32 s11, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 619 26 is_stmt 1              ; ragged.py:619:26
	s_or_b32 s7, s11, s10
	.loc	1 629 34                        ; ragged.py:629:34
	v_add_nc_u32_e32 v166, 0, v144
	.loc	1 619 26                        ; ragged.py:619:26
	v_or_b32_e32 v154, s7, v142
	v_or_b32_e32 v155, s7, v143
	.loc	1 620 31                        ; ragged.py:620:31
	v_cmp_gt_i32_e64 s7, s34, v154
	.loc	1 630 42                        ; ragged.py:630:42
	v_add_nc_u32_e32 v156, v64, v154
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 620 31                        ; ragged.py:620:31
	v_cmp_gt_i32_e64 s8, s34, v155
	.loc	1 630 42                        ; ragged.py:630:42
	v_add_nc_u32_e32 v154, v65, v154
	.loc	1 629 42                        ; ragged.py:629:42
	v_add_nc_u32_e32 v155, v147, v155
	.loc	1 630 66                        ; ragged.py:630:66
	s_and_b32 s9, s0, s7
	s_and_b32 s7, s1, s7
	.loc	1 629 66                        ; ragged.py:629:66
	s_and_b32 s8, s35, s8
	.loc	1 630 34                        ; ragged.py:630:34
	v_cndmask_b32_e64 v156, 0x80000000, v156, s9
	v_cndmask_b32_e64 v158, 0x80000000, v154, s7
	.loc	1 629 34                        ; ragged.py:629:34
	v_cndmask_b32_e64 v162, 0x80000000, v155, s8
	.loc	1 641 21                        ; ragged.py:641:21
	s_add_i32 s7, s11, 32
	.loc	1 630 34                        ; ragged.py:630:34
	s_clause 0x1
	buffer_load_b128 v[154:157], v156, s[24:27], 0 offen
	buffer_load_b128 v[158:161], v158, s[24:27], 0 offen
	.loc	1 629 34                        ; ragged.py:629:34
	buffer_load_b64 v[162:163], v162, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 618 23                        ; ragged.py:618:23
	s_cmpk_lt_u32 s11, 0x60
	s_mov_b32 s11, s7
	.loc	1 630 34                        ; ragged.py:630:34
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v187, v145, v154
	ds_bpermute_b32 v189, v145, v155
	ds_bpermute_b32 v188, v146, v154
	ds_bpermute_b32 v191, v145, v156
	ds_bpermute_b32 v190, v146, v155
	ds_bpermute_b32 v193, v145, v157
	ds_bpermute_b32 v192, v146, v156
	ds_bpermute_b32 v194, v146, v157
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v195, v145, v158
	ds_bpermute_b32 v197, v145, v159
	ds_bpermute_b32 v196, v146, v158
	ds_bpermute_b32 v198, v146, v159
	.loc	1 629 34                        ; ragged.py:629:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v148, v[162:163]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[162:165], v166 offset1:1
	ds_load_2addr_stride64_b64 v[166:169], v166 offset0:2 offset1:3
	.loc	1 630 34                        ; ragged.py:630:34
	ds_bpermute_b32 v199, v145, v160
	ds_bpermute_b32 v201, v145, v161
	ds_bpermute_b32 v200, v146, v160
	ds_bpermute_b32 v202, v146, v161
	.loc	1 629 34                        ; ragged.py:629:34
	ds_load_2addr_stride64_b64 v[154:157], v149 offset1:1
	ds_load_2addr_stride64_b64 v[158:161], v149 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[170:173], v150 offset1:1
	ds_load_2addr_stride64_b64 v[174:177], v150 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[178:181], v151 offset1:1
	ds_load_2addr_stride64_b64 v[182:185], v151 offset0:2 offset1:3
	.loc	1 630 34                        ; ragged.py:630:34
	v_cndmask_b32_e64 v186, v188, v187, s6
	v_cndmask_b32_e64 v188, v187, v188, s6
	v_cndmask_b32_e64 v187, v190, v189, s6
	v_cndmask_b32_e64 v189, v189, v190, s6
	v_cndmask_b32_e64 v190, v192, v191, s6
	v_cndmask_b32_e64 v192, v191, v192, s6
	v_cndmask_b32_e64 v191, v194, v193, s6
	v_cndmask_b32_e64 v193, v193, v194, s6
	v_cndmask_b32_e64 v194, v196, v195, s6
	v_cndmask_b32_e64 v196, v195, v196, s6
	v_cndmask_b32_e64 v195, v198, v197, s6
	v_cndmask_b32_e64 v197, v197, v198, s6
	.loc	1 631 31                        ; ragged.py:631:31
	s_waitcnt lgkmcnt(11)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[186:187], v[162:163], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[186:187], v[164:165], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[186:187], v[166:167], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[194:195], v[162:163], v[8:15] neg_lo:[1,1,0]
	.loc	1 630 34                        ; ragged.py:630:34
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v198, v200, v199, s6
	v_cndmask_b32_e64 v200, v199, v200, s6
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v199, v202, v201, s6
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[24:31], v[194:195], v[164:165], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[194:195], v[166:167], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[186:187], v[168:169], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[194:195], v[168:169], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[190:191], v[154:155], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[198:199], v[154:155], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[190:191], v[156:157], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[198:199], v[156:157], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[190:191], v[158:159], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[198:199], v[158:159], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[190:191], v[160:161], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[198:199], v[160:161], v[56:63] neg_lo:[1,1,0]
	.loc	1 630 34                        ; ragged.py:630:34
	v_cndmask_b32_e64 v201, v201, v202, s6
	.loc	1 631 31                        ; ragged.py:631:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[188:189], v[170:171], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[196:197], v[170:171], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[188:189], v[172:173], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[196:197], v[172:173], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[188:189], v[174:175], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[196:197], v[174:175], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[188:189], v[176:177], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[196:197], v[176:177], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[192:193], v[178:179], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[200:201], v[178:179], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[192:193], v[180:181], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[200:201], v[180:181], v[24:31] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[192:193], v[182:183], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[200:201], v[182:183], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[192:193], v[184:185], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[200:201], v[184:185], v[56:63] neg_lo:[1,1,0]
	.loc	1 618 23                        ; ragged.py:618:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 644 40                        ; ragged.py:644:40
	v_add_lshl_u32 v154, s37, v138, 1
	.loc	1 652 25                        ; ragged.py:652:25
	s_add_i32 s7, s37, s36
	.loc	1 644 40                        ; ragged.py:644:40
	v_add_lshl_u32 v155, s37, v139, 1
	v_add_lshl_u32 v156, s37, v140, 1
	.loc	1 652 25                        ; ragged.py:652:25
	s_mul_i32 s7, s7, s33
	.loc	1 644 40                        ; ragged.py:644:40
	v_add_lshl_u32 v157, s37, v141, 1
	.loc	1 651 40                        ; ragged.py:651:40
	v_add_lshl_u32 v158, v137, s7, 1
	.loc	1 644 40                        ; ragged.py:644:40
	v_cndmask_b32_e64 v154, 0x80000000, v154, s5
	v_cndmask_b32_e64 v155, 0x80000000, v155, s4
	v_cndmask_b32_e64 v156, 0x80000000, v156, s3
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	.loc	1 651 40                        ; ragged.py:651:40
	v_cndmask_b32_e32 v158, 0x80000000, v158, vcc_lo
	.loc	1 644 40                        ; ragged.py:644:40
	s_clause 0x3
	buffer_load_u16 v154, v154, s[28:31], 0 offen
	buffer_load_u16 v155, v155, s[28:31], 0 offen
	buffer_load_u16 v156, v156, s[28:31], 0 offen
	buffer_load_u16 v157, v157, s[28:31], 0 offen
	.loc	1 651 40                        ; ragged.py:651:40
	buffer_load_u16 v158, v158, s[12:15], 0 offen
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v1, v1
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
	v_cvt_f32_i32_e32 v17, v17
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
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 656 21                        ; ragged.py:656:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v30, v30
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
	.loc	1 658 17                        ; ragged.py:658:17
	s_add_i32 s37, s37, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 614 19                        ; ragged.py:614:19
	s_cmp_lg_u32 s37, s18
	.loc	1 644 40                        ; ragged.py:644:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v155, 16, v155
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 649 21                        ; ragged.py:649:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v19, v19, v155 :: v_dual_lshlrev_b32 v158, 16, v158
	v_dual_mul_f32 v17, v17, v155 :: v_dual_lshlrev_b32 v156, 16, v156
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v159, v0, v154
	v_dual_mul_f32 v160, v1, v154 :: v_dual_lshlrev_b32 v157, 16, v157
	v_dual_mul_f32 v161, v2, v154 :: v_dual_mul_f32 v16, v16, v155
	v_dual_mul_f32 v162, v3, v154 :: v_dual_mul_f32 v21, v21, v155
	v_dual_mul_f32 v163, v4, v154 :: v_dual_mul_f32 v18, v18, v155
	v_dual_mul_f32 v164, v5, v154 :: v_dual_mul_f32 v23, v23, v155
	v_dual_mul_f32 v165, v6, v154 :: v_dual_mul_f32 v20, v20, v155
	v_dual_mul_f32 v166, v7, v154 :: v_dual_mul_f32 v25, v25, v155
	v_dual_mul_f32 v167, v8, v154 :: v_dual_mul_f32 v22, v22, v155
	v_dual_mul_f32 v168, v9, v154 :: v_dual_mul_f32 v27, v27, v155
	v_dual_mul_f32 v169, v10, v154 :: v_dual_mul_f32 v24, v24, v155
	v_dual_mul_f32 v170, v11, v154 :: v_dual_mul_f32 v29, v29, v155
	v_dual_mul_f32 v171, v12, v154 :: v_dual_mul_f32 v26, v26, v155
	v_dual_mul_f32 v172, v13, v154 :: v_dual_mul_f32 v31, v31, v155
	v_dual_mul_f32 v173, v14, v154 :: v_dual_mul_f32 v28, v28, v155
	v_dual_mul_f32 v154, v15, v154 :: v_dual_mul_f32 v33, v33, v156
	.loc	1 656 21                        ; ragged.py:656:21
	ds_store_b32 v152, v158
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v153
	ds_load_b128 v[4:7], v153 offset:16
	ds_load_b128 v[8:11], v153 offset:512
	ds_load_b128 v[12:15], v153 offset:528
	.loc	1 649 21                        ; ragged.py:649:21
	v_dual_mul_f32 v30, v30, v155 :: v_dual_mul_f32 v35, v35, v156
	v_dual_mul_f32 v32, v32, v156 :: v_dual_mul_f32 v49, v49, v157
	v_dual_mul_f32 v34, v34, v156 :: v_dual_mul_f32 v51, v51, v157
	v_dual_mul_f32 v36, v36, v156 :: v_dual_mul_f32 v53, v53, v157
	v_dual_mul_f32 v37, v37, v156 :: v_dual_mul_f32 v48, v48, v157
	v_dual_mul_f32 v38, v38, v156 :: v_dual_mul_f32 v55, v55, v157
	v_dual_mul_f32 v39, v39, v156 :: v_dual_mul_f32 v50, v50, v157
	v_dual_mul_f32 v40, v40, v156 :: v_dual_mul_f32 v57, v57, v157
	v_dual_mul_f32 v41, v41, v156 :: v_dual_mul_f32 v52, v52, v157
	v_dual_mul_f32 v42, v42, v156 :: v_dual_mul_f32 v59, v59, v157
	v_dual_mul_f32 v43, v43, v156 :: v_dual_mul_f32 v54, v54, v157
	v_dual_mul_f32 v44, v44, v156 :: v_dual_mul_f32 v61, v61, v157
	v_dual_mul_f32 v45, v45, v156 :: v_dual_mul_f32 v56, v56, v157
	v_dual_mul_f32 v46, v46, v156 :: v_dual_mul_f32 v63, v63, v157
	v_dual_mul_f32 v47, v47, v156 :: v_dual_mul_f32 v58, v58, v157
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v60, v60, v157 :: v_dual_fmac_f32 v135, v159, v0
	v_dual_mul_f32 v62, v62, v157 :: v_dual_fmac_f32 v133, v161, v2
	.loc	1 657 17                        ; ragged.py:657:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v134, v160, v1 :: v_dual_fmac_f32 v131, v163, v4
	v_dual_fmac_f32 v132, v162, v3 :: v_dual_fmac_f32 v129, v165, v6
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v130, v164, v5 :: v_dual_fmac_f32 v127, v167, v8
	v_dual_fmac_f32 v128, v166, v7 :: v_dual_fmac_f32 v125, v169, v10
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v126, v168, v9 :: v_dual_fmac_f32 v123, v171, v12
	v_dual_fmac_f32 v124, v170, v11 :: v_dual_fmac_f32 v121, v173, v14
	v_dual_fmac_f32 v122, v172, v13 :: v_dual_fmac_f32 v117, v18, v2
	v_dual_fmac_f32 v120, v154, v15 :: v_dual_fmac_f32 v119, v16, v0
	v_dual_fmac_f32 v118, v17, v1 :: v_dual_fmac_f32 v115, v20, v4
	v_dual_fmac_f32 v116, v19, v3 :: v_dual_fmac_f32 v113, v22, v6
	v_dual_fmac_f32 v114, v21, v5 :: v_dual_fmac_f32 v111, v24, v8
	v_dual_fmac_f32 v112, v23, v7 :: v_dual_fmac_f32 v109, v25, v9
	v_dual_fmac_f32 v108, v26, v10 :: v_dual_fmac_f32 v107, v27, v11
	v_dual_fmac_f32 v106, v28, v12 :: v_dual_fmac_f32 v105, v29, v13
	v_dual_fmac_f32 v104, v30, v14 :: v_dual_fmac_f32 v103, v31, v15
	v_dual_fmac_f32 v101, v32, v0 :: v_dual_fmac_f32 v96, v34, v2
	v_dual_fmac_f32 v97, v33, v1 :: v_dual_fmac_f32 v94, v36, v4
	v_dual_fmac_f32 v95, v35, v3 :: v_dual_fmac_f32 v92, v37, v5
	v_dual_fmac_f32 v91, v38, v6 :: v_dual_fmac_f32 v90, v39, v7
	v_dual_fmac_f32 v89, v40, v8 :: v_dual_fmac_f32 v88, v41, v9
	v_dual_fmac_f32 v87, v42, v10 :: v_dual_fmac_f32 v86, v43, v11
	v_dual_fmac_f32 v85, v44, v12 :: v_dual_fmac_f32 v84, v45, v13
	v_dual_fmac_f32 v83, v46, v14 :: v_dual_fmac_f32 v82, v47, v15
	v_dual_fmac_f32 v81, v48, v0 :: v_dual_fmac_f32 v80, v49, v1
	v_dual_fmac_f32 v79, v50, v2 :: v_dual_fmac_f32 v78, v51, v3
	v_dual_fmac_f32 v77, v52, v4 :: v_dual_fmac_f32 v76, v53, v5
	v_dual_fmac_f32 v75, v54, v6 :: v_dual_fmac_f32 v74, v55, v7
	v_dual_fmac_f32 v73, v56, v8 :: v_dual_fmac_f32 v72, v57, v9
	v_dual_fmac_f32 v71, v58, v10 :: v_dual_fmac_f32 v70, v59, v11
	v_dual_fmac_f32 v69, v60, v12 :: v_dual_fmac_f32 v68, v61, v13
	v_dual_fmac_f32 v67, v62, v14 :: v_dual_fmac_f32 v66, v63, v15
	.loc	1 614 19                        ; ragged.py:614:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_mov_b32_e32 v4, v110
.LBB0_9:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 660 9 is_stmt 1               ; ragged.py:660:9
	v_bfe_u32 v7, v135, 16, 1
	v_bfe_u32 v8, v134, 16, 1
	v_bfe_u32 v10, v132, 16, 1
	v_bfe_u32 v9, v133, 16, 1
	v_cmp_o_f32_e64 s1, v135, v135
	v_add3_u32 v7, v135, v7, 0x7fff
	v_add3_u32 v8, v134, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v134, v134
	v_add3_u32 v10, v132, v10, 0x7fff
	v_cmp_o_f32_e64 s8, v132, v132
	v_bfe_u32 v11, v131, 16, 1
	v_add3_u32 v9, v133, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v133, v133
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s8
	v_add3_u32 v10, v131, v11, 0x7fff
	v_bfe_u32 v11, v129, 16, 1
	v_bfe_u32 v12, v128, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s7
	v_bfe_u32 v9, v130, 16, 1
	v_cmp_o_f32_e64 s1, v131, v131
	v_add3_u32 v11, v129, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v129, v129
	v_add3_u32 v12, v128, v12, 0x7fff
	v_cmp_o_f32_e64 s8, v128, v128
	v_add3_u32 v9, v130, v9, 0x7fff
	v_cmp_o_f32_e64 s6, v130, v130
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v127, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s7
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s8
	v_bfe_u32 v12, v126, 16, 1
	v_bfe_u32 v14, v124, 16, 1
	v_bfe_u32 v13, v125, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v10, v127, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v127, v127
	v_add3_u32 v12, v126, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v126, v126
	v_add3_u32 v14, v124, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v124, v124
	v_bfe_u32 v15, v123, 16, 1
	v_add3_u32 v13, v125, v13, 0x7fff
	v_cmp_o_f32_e64 s7, v125, v125
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s6
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s8
	v_add3_u32 v14, v123, v15, 0x7fff
	v_bfe_u32 v15, v121, 16, 1
	v_bfe_u32 v16, v120, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s7
	v_bfe_u32 v13, v122, 16, 1
	v_cmp_o_f32_e64 s1, v123, v123
	v_add3_u32 v15, v121, v15, 0x7fff
	v_cmp_o_f32_e64 s7, v121, v121
	v_add3_u32 v16, v120, v16, 0x7fff
	v_cmp_o_f32_e64 s8, v120, v120
	v_add3_u32 v13, v122, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v122, v122
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s1
	v_bfe_u32 v14, v119, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s7
	v_cndmask_b16 v15.h, 0x7fff, v16.h, s8
	v_bfe_u32 v16, v118, 16, 1
	v_bfe_u32 v18, v116, 16, 1
	v_bfe_u32 v17, v117, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s6
	v_add3_u32 v14, v119, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v119, v119
	v_add3_u32 v16, v118, v16, 0x7fff
	v_cmp_o_f32_e64 s6, v118, v118
	v_add3_u32 v18, v116, v18, 0x7fff
	v_cmp_o_f32_e64 s8, v116, v116
	v_bfe_u32 v19, v115, 16, 1
	v_add3_u32 v17, v117, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v117, v117
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s6
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s8
	v_add3_u32 v18, v115, v19, 0x7fff
	v_bfe_u32 v19, v113, 16, 1
	v_bfe_u32 v20, v112, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s7
	v_bfe_u32 v17, v114, 16, 1
	v_cmp_o_f32_e64 s1, v115, v115
	v_add3_u32 v19, v113, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v113, v113
	v_add3_u32 v20, v112, v20, 0x7fff
	v_cmp_o_f32_e64 s8, v112, v112
	v_add3_u32 v17, v114, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v114, v114
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s1
	v_bfe_u32 v18, v111, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s8
	v_bfe_u32 v20, v109, 16, 1
	v_bfe_u32 v22, v107, 16, 1
	v_bfe_u32 v21, v108, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_add3_u32 v18, v111, v18, 0x7fff
	v_cmp_o_f32_e64 s1, v111, v111
	v_add3_u32 v20, v109, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v109, v109
	v_add3_u32 v22, v107, v22, 0x7fff
	v_cmp_o_f32_e64 s8, v107, v107
	v_bfe_u32 v23, v106, 16, 1
	v_add3_u32 v21, v108, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v108, v108
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s1
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s6
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s8
	v_add3_u32 v22, v106, v23, 0x7fff
	v_bfe_u32 v23, v104, 16, 1
	v_bfe_u32 v24, v103, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s7
	v_bfe_u32 v21, v105, 16, 1
	v_cmp_o_f32_e64 s1, v106, v106
	v_add3_u32 v23, v104, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v104, v104
	v_add3_u32 v24, v103, v24, 0x7fff
	v_cmp_o_f32_e64 s8, v103, v103
	v_add3_u32 v21, v105, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v105, v105
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s1
	v_bfe_u32 v22, v101, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s7
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s8
	v_bfe_u32 v24, v97, 16, 1
	v_bfe_u32 v26, v95, 16, 1
	v_bfe_u32 v25, v96, 16, 1
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s6
	v_add3_u32 v22, v101, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v101, v101
	v_add3_u32 v24, v97, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v97, v97
	v_add3_u32 v26, v95, v26, 0x7fff
	v_cmp_o_f32_e64 s8, v95, v95
	v_bfe_u32 v27, v94, 16, 1
	v_add3_u32 v25, v96, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v96, v96
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s1
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s6
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s8
	v_add3_u32 v26, v94, v27, 0x7fff
	v_bfe_u32 v27, v91, 16, 1
	v_bfe_u32 v28, v90, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s7
	v_bfe_u32 v25, v92, 16, 1
	v_cmp_o_f32_e64 s1, v94, v94
	v_add3_u32 v27, v91, v27, 0x7fff
	v_cmp_o_f32_e64 s7, v91, v91
	v_add3_u32 v28, v90, v28, 0x7fff
	v_cmp_o_f32_e64 s8, v90, v90
	v_add3_u32 v25, v92, v25, 0x7fff
	v_cmp_o_f32_e64 s6, v92, v92
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s1
	v_bfe_u32 v26, v89, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s7
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s8
	v_bfe_u32 v28, v88, 16, 1
	v_bfe_u32 v30, v86, 16, 1
	v_bfe_u32 v29, v87, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_add3_u32 v26, v89, v26, 0x7fff
	v_cmp_o_f32_e64 s1, v89, v89
	v_add3_u32 v28, v88, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v88, v88
	v_add3_u32 v30, v86, v30, 0x7fff
	v_cmp_o_f32_e64 s8, v86, v86
	v_bfe_u32 v31, v85, 16, 1
	v_add3_u32 v29, v87, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v87, v87
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s1
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s6
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s8
	v_add3_u32 v30, v85, v31, 0x7fff
	v_bfe_u32 v31, v83, 16, 1
	v_bfe_u32 v32, v82, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v84, 16, 1
	v_cmp_o_f32_e64 s1, v85, v85
	v_add3_u32 v31, v83, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v83, v83
	v_add3_u32 v32, v82, v32, 0x7fff
	v_cmp_o_f32_e64 s8, v82, v82
	v_add3_u32 v29, v84, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v84, v84
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s1
	v_bfe_u32 v30, v81, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s7
	v_cndmask_b16 v31.h, 0x7fff, v32.h, s8
	v_bfe_u32 v32, v80, 16, 1
	v_bfe_u32 v34, v78, 16, 1
	v_bfe_u32 v33, v79, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s6
	v_add3_u32 v30, v81, v30, 0x7fff
	v_cmp_o_f32_e64 s1, v81, v81
	v_add3_u32 v32, v80, v32, 0x7fff
	v_cmp_o_f32_e64 s6, v80, v80
	v_add3_u32 v34, v78, v34, 0x7fff
	v_cmp_o_f32_e64 s8, v78, v78
	v_bfe_u32 v35, v77, 16, 1
	v_add3_u32 v33, v79, v33, 0x7fff
	v_cmp_o_f32_e64 s7, v79, v79
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s1
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s6
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s8
	v_add3_u32 v34, v77, v35, 0x7fff
	v_bfe_u32 v35, v75, 16, 1
	v_bfe_u32 v36, v74, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v33.h, s7
	v_bfe_u32 v33, v76, 16, 1
	v_cmp_o_f32_e64 s1, v77, v77
	v_add3_u32 v35, v75, v35, 0x7fff
	v_cmp_o_f32_e64 s7, v75, v75
	v_add3_u32 v36, v74, v36, 0x7fff
	v_cmp_o_f32_e64 s8, v74, v74
	v_add3_u32 v33, v76, v33, 0x7fff
	v_bfe_u32 v37, v71, 16, 1
	v_cmp_o_f32_e64 s6, v76, v76
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s1
	v_bfe_u32 v34, v73, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s7
	v_cndmask_b16 v35.h, 0x7fff, v36.h, s8
	v_bfe_u32 v36, v72, 16, 1
	v_bfe_u32 v38, v70, 16, 1
	v_add3_u32 v37, v71, v37, 0x7fff
	v_cmp_o_f32_e64 s7, v71, v71
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s6
	v_add3_u32 v34, v73, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v73, v73
	v_add3_u32 v36, v72, v36, 0x7fff
	v_cmp_o_f32_e64 s6, v72, v72
	v_add3_u32 v38, v70, v38, 0x7fff
	v_cmp_o_f32_e64 s8, v70, v70
	v_bfe_u32 v39, v69, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s7
	v_bfe_u32 v37, v68, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s6
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s8
	v_add3_u32 v38, v69, v39, 0x7fff
	v_bfe_u32 v39, v67, 16, 1
	v_cmp_o_f32_e64 s1, v69, v69
	v_bfe_u32 v40, v66, 16, 1
	v_add3_u32 v37, v68, v37, 0x7fff
	v_cmp_o_f32_e64 s7, v67, v67
	v_add3_u32 v39, v67, v39, 0x7fff
	v_cmp_o_f32_e64 s8, v66, v66
	v_add3_u32 v40, v66, v40, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s1
	v_cmp_eq_u32_e64 s1, 0, v4
	v_cmp_o_f32_e64 s6, v68, v68
	v_cndmask_b16 v4.l, 0x7fff, v39.h, s7
	v_cndmask_b16 v4.h, 0x7fff, v40.h, s8
	.loc	1 563 36                        ; ragged.py:563:36
	v_lshrrev_b32_e32 v1, 1, v102
	.loc	1 660 9                         ; ragged.py:660:9
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
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v1, s19, v1
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v6, v93, s33
	.loc	1 660 9                         ; ragged.py:660:9
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	v_cndmask_b32_e64 v44, v21, v18, s1
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v2, 0x80, v1
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b32_e64 v13, v18, v21, s1
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_cndmask_b32_e64 v52, v37, v34, s1
	v_cndmask_b32_e64 v21, v34, v37, s1
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v5, v98, s33
	.loc	1 660 9                         ; ragged.py:660:9
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
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v3, v99, s33
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v2
	.loc	1 660 9                         ; ragged.py:660:9
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
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v0, v100, s33
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s1, s0, s5
	.loc	1 660 9                         ; ragged.py:660:9
	v_perm_b32 v9, v23, v39, v37
	v_perm_b32 v10, v23, v39, v54
	v_add_lshl_u32 v39, v1, v5, 1
	v_perm_b32 v11, v25, v40, v37
	v_perm_b32 v12, v25, v40, v54
	v_cndmask_b32_e64 v40, 0x80000000, v38, s1
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s1, vcc_lo, s5
	.loc	1 660 9                         ; ragged.py:660:9
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
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s1, s0, s4
	.loc	1 660 9                         ; ragged.py:660:9
	v_add_lshl_u32 v5, v1, v3, 1
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s1, vcc_lo, s4
	.loc	1 660 9                         ; ragged.py:660:9
	v_add_lshl_u32 v3, v2, v3, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s1, s0, s3
	.loc	1 660 9                         ; ragged.py:660:9
	v_add_lshl_u32 v1, v1, v0, 1
	v_add_lshl_u32 v0, v2, v0, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s1, vcc_lo, s3
	s_and_b32 s0, s0, s2
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b32_e64 v2, 0x80000000, v3, s1
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 660 9                         ; ragged.py:660:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_perm_b32 v36, v36, v52, v54
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x7
	buffer_store_b128 v[7:10], v40, s[16:19], 0 offen
	buffer_store_b128 v[11:14], v6, s[16:19], 0 offen
	buffer_store_b128 v[15:18], v39, s[16:19], 0 offen
	buffer_store_b128 v[19:22], v4, s[16:19], 0 offen
	buffer_store_b128 v[23:26], v5, s[16:19], 0 offen
	buffer_store_b128 v[27:30], v2, s[16:19], 0 offen
	buffer_store_b128 v[31:34], v1, s[16:19], 0 offen
	buffer_store_b128 v[35:38], v0, s[16:19], 0 offen
	.loc	1 523 5                         ; ragged.py:523:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 203
		.amdhsa_next_free_sgpr 38
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 203
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 38
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7472
; TotalNumSgprs: 40
; NumVgprs: 203
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 40
; NumVGPRsForWavesPerEU: 203
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     203
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
