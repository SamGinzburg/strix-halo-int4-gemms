	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 523 0                         ; ragged.py:523:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[34:35], s[0:1], 0x54
.Ltmp0:
	.loc	1 551 25 prologue_end           ; ragged.py:551:25
	s_abs_i32 s7, s2
	.loc	1 562 18                        ; ragged.py:562:18
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:549:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:549:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
.Ltmp2:
	.loc	1 551 25 is_stmt 1              ; ragged.py:551:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v82, 0
	s_cselect_b32 s4, s8, s5
	.loc	1 563 36                        ; ragged.py:563:36
	v_and_b32_e32 v87, 0xf0, v0
	.loc	1 551 25                        ; ragged.py:551:25
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s12, s4, s6
	.loc	1 553 33                        ; ragged.py:553:33
	s_sub_i32 s4, s35, s12
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
	s_sub_i32 s20, s3, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 555 34                        ; ragged.py:555:34
	s_mul_i32 s3, s20, s13
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 555 20 is_stmt 0              ; ragged.py:555:20
	s_add_i32 s2, s2, s12
	s_mov_b32 s12, 0
	.loc	1 558 20 is_stmt 1              ; ragged.py:558:20
	s_ashr_i32 s3, s2, 31
	.loc	1 559 23                        ; ragged.py:559:23
	s_lshl_b64 s[28:29], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s28
	s_addc_u32 s3, s5, s29
	s_load_b64 s[14:15], s[2:3], 0x0
	.loc	1 560 24                        ; ragged.py:560:24
	s_add_u32 s2, s6, s28
	s_addc_u32 s3, s7, s29
	.loc	1 561 22                        ; ragged.py:561:22
	s_add_u32 s4, s8, s28
	s_addc_u32 s5, s9, s29
	.loc	1 560 24                        ; ragged.py:560:24
	s_load_b64 s[16:17], s[2:3], 0x0
	.loc	1 561 22                        ; ragged.py:561:22
	s_load_b64 s[18:19], s[4:5], 0x0
	.loc	1 563 18                        ; ragged.py:563:18
	s_lshl_b32 s35, s20, 8
	.loc	1 562 18                        ; ragged.py:562:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s14, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s15, 0, s2
	.loc	1 645 25                        ; ragged.py:645:25
	v_add_nc_u32_e32 v86, s14, v1
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
	v_cmp_le_i64_e32 vcc_lo, s[16:17], v[2:3]
	.loc	1 564 48 is_stmt 0              ; ragged.py:564:48
	v_cmp_gt_i64_e64 s2, s[18:19], v[2:3]
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e64 s3, s[16:17], v[4:5]
	v_cmp_le_i64_e64 s5, s[16:17], v[6:7]
	v_cmp_le_i64_e64 s6, s[16:17], v[8:9]
	.loc	1 564 48                        ; ragged.py:564:48
	v_cmp_gt_i64_e64 s7, s[18:19], v[4:5]
	v_cmp_gt_i64_e64 s8, s[18:19], v[6:7]
	v_cmp_gt_i64_e64 s9, s[18:19], v[8:9]
	.loc	1 645 25 is_stmt 1              ; ragged.py:645:25
	v_add_nc_u32_e32 v88, 16, v86
	v_add_nc_u32_e32 v90, 32, v86
	v_add_nc_u32_e32 v91, 48, v86
	.loc	1 564 20                        ; ragged.py:564:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 614 19                        ; ragged.py:614:19
	s_cmp_lt_i32 s34, 1
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s8, s[0:1], 0x50
	s_load_b256 s[20:27], s[0:1], 0x0
	v_lshrrev_b32_e32 v7, 1, v0
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	.loc	1 562 32 is_stmt 1              ; ragged.py:562:32
	v_lshrrev_b32_e32 v5, 2, v0
	v_dual_mov_b32 v105, 0 :: v_dual_lshlrev_b32 v10, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v110, 0 :: v_dual_and_b32 v11, 24, v8
	v_dual_mov_b32 v103, 0 :: v_dual_and_b32 v12, 24, v7
	v_dual_mov_b32 v106, 0 :: v_dual_and_b32 v7, 0x70, v7
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v6, 3, v0
	.loc	1 563 18                        ; ragged.py:563:18
	v_lshl_or_b32 v2, v1, 4, s35
	v_lshl_or_b32 v11, v1, 5, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v118, 0, v1, v7
	.loc	1 558 20                        ; ragged.py:558:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s28
	s_addc_u32 s1, s7, s29
	v_dual_mov_b32 v104, 0 :: v_dual_lshlrev_b32 v1, 2, v87
	.loc	1 652 25                        ; ragged.py:652:25
	s_load_b32 s7, s[0:1], 0x0
	.loc	1 562 18                        ; ragged.py:562:18
	v_add_co_u32 v3, s0, s14, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s15, 0, s0
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v7, 32, v10
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v5, s14, v5
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e64 s5, s[16:17], v[3:4]
	.loc	1 564 48 is_stmt 0              ; ragged.py:564:48
	v_cmp_gt_i64_e64 s6, s[18:19], v[3:4]
	v_xor_b32_e32 v3, v6, v12
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v117, 24, v6
	v_xor_b32_e32 v4, 8, v11
	v_xor_b32_e32 v6, 16, v11
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v8, 28, v8
	v_add3_u32 v1, 0, v1, v7
	v_dual_mov_b32 v98, 0 :: v_dual_lshlrev_b32 v7, 1, v87
	.loc	1 562 18 is_stmt 1              ; ragged.py:562:18
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v9, 4, v0
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v111, s35, v0
	v_xor_b32_e32 v12, 24, v11
	.loc	1 628 39                        ; ragged.py:628:39
	s_mul_i32 s13, s8, s33
	.loc	1 645 25                        ; ragged.py:645:25
	v_mul_lo_u32 v113, v86, s34
	v_mul_lo_u32 v114, v88, s34
	v_mul_lo_u32 v115, v90, s34
	v_mul_lo_u32 v116, v91, s34
	v_mul_lo_u32 v119, v5, s8
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[41:42], null, s13, s7, v[2:3]
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s0, s33, v2
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v120, 0, v3
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v122, 0, v4
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v123, 0, v6
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v126, v1, v8
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v127, 0, v7
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v8, s19
	.loc	1 611 28                        ; ragged.py:611:28
	v_lshrrev_b32_e32 v112, 4, v87
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s1, s33, v111
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v121, 0, v11
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v124, 0, v12
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v125, 0, v9
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v6, s17
	v_mov_b32_e32 v3, s14
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v7, s18
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	.loc	1 564 20                        ; ragged.py:564:20
	s_and_b32 s9, s5, s6
	.loc	1 652 25                        ; ragged.py:652:25
	s_mul_i32 s40, s34, s7
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
	.loc	1 616 28                        ; ragged.py:616:28
	s_lshl_b32 s5, s12, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v9, s5, v112
	v_or_b32_e32 v11, s5, v117
	v_or_b32_e32 v12, 16, v9
	v_cmp_gt_i32_e64 s5, s8, v9
	v_mad_u64_u32 v[9:10], null, v9, s33, v[41:42]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e64 s6, s8, v11
	v_add_nc_u32_e32 v13, v119, v11
	v_mad_u64_u32 v[10:11], null, v12, s33, v[41:42]
	v_cmp_gt_i32_e64 s7, s8, v12
	s_and_b32 s5, s0, s5
	s_and_b32 s6, s9, s6
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	v_cndmask_b32_e64 v11, 0x80000000, v13, s6
	s_and_b32 s5, s0, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	.loc	1 652 25                        ; ragged.py:652:25
	s_add_i32 s5, s12, s40
	.loc	1 629 34                        ; ragged.py:629:34
	buffer_load_b64 v[11:12], v11, s[36:39], 0 offen
	.loc	1 630 34                        ; ragged.py:630:34
	s_clause 0x1
	buffer_load_b128 v[128:131], v9, s[20:23], 0 offen
	buffer_load_b128 v[132:135], v10, s[20:23], 0 offen
	.loc	1 629 34                        ; ragged.py:629:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 652 25                        ; ragged.py:652:25
	s_mul_i32 s5, s5, s33
	.loc	1 629 34                        ; ragged.py:629:34
	s_waitcnt vmcnt(2)
	ds_store_b64 v120, v[11:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[33:36], v121 offset1:1
	ds_load_2addr_stride64_b64 v[17:20], v121 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[25:28], v122 offset1:1
	ds_load_2addr_stride64_b64 v[21:24], v122 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[29:32], v123 offset1:1
	ds_load_2addr_stride64_b64 v[9:12], v123 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v124 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v124 offset0:2 offset1:3
	.loc	1 630 34                        ; ragged.py:630:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v125, v[128:131]
	s_waitcnt vmcnt(0)
	ds_store_b128 v125, v[132:135] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 631 31                        ; ragged.py:631:31
	ds_load_u8 v128, v118 offset:1280
	ds_load_u8 v129, v118 offset:1024
	ds_load_u8 v130, v118 offset:1920
	ds_load_u8 v131, v118 offset:1664
	ds_load_u8 v132, v118 offset:1408
	ds_load_u8 v133, v118 offset:1152
	ds_load_u8 v134, v118 offset:1792
	ds_load_u8 v135, v118 offset:1536
	ds_load_u8 v136, v118 offset:256
	ds_load_u8 v137, v118
	ds_load_u8 v138, v118 offset:896
	ds_load_u8 v139, v118 offset:640
	ds_load_u8 v140, v118 offset:384
	ds_load_u8 v141, v118 offset:768
	ds_load_u8 v142, v118 offset:512
	ds_load_u8 v143, v118 offset:3328
	ds_load_u8 v144, v118 offset:3072
	ds_load_u8 v145, v118 offset:3840
	ds_load_u8 v146, v118 offset:3584
	ds_load_u8 v147, v118 offset:2304
	ds_load_u8 v148, v118 offset:2048
	ds_load_u8 v149, v118 offset:2816
	ds_load_u8 v150, v118 offset:2560
	ds_load_u8 v151, v118 offset:5376
	ds_load_u8 v152, v118 offset:5120
	ds_load_u8 v153, v118 offset:5888
	ds_load_u8 v154, v118 offset:5632
	ds_load_u8 v155, v118 offset:4352
	ds_load_u8 v156, v118 offset:4096
	ds_load_u8 v157, v118 offset:4864
	ds_load_u8 v158, v118 offset:4608
	ds_load_u8 v159, v118 offset:7424
	ds_load_u8 v160, v118 offset:7168
	ds_load_u8 v161, v118 offset:7936
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v118 offset:7680
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v118 offset:6400
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v118 offset:6912
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v118 offset:3712
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v118 offset:3456
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v118 offset:3200
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v162, v156, v155, 0xc0c0004
	ds_load_u8 v155, v118 offset:2944
	ds_load_u8 v156, v118 offset:2688
	ds_load_u8 v144, v118 offset:6656
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v158, v158, v157, 0xc0c0004
	ds_load_u8 v157, v118 offset:2432
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v118 offset:128
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v118 offset:3968
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v118 offset:5248
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v118 offset:5760
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v160, v160, v159, 0xc0c0004
	ds_load_u8 v159, v118 offset:2176
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v118 offset:4736
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v129, v129, v161, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v152, v154, v152, 0xc0c0004
	v_lshl_or_b32 v158, v158, 16, v162
	v_lshl_or_b32 v163, v130, 16, v132
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v166, v156, v155, 0xc0c0004
	ds_load_u8 v155, v118 offset:7552
	ds_load_u8 v156, v118 offset:6784
	ds_load_u8 v137, v118 offset:6144
	v_lshl_or_b32 v161, v129, 16, v160
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v140, v146, v140, 0xc0c0004
	ds_load_u8 v146, v118 offset:4992
	ds_load_u8 v154, v118 offset:4480
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v118 offset:4224
	v_lshl_or_b32 v162, v138, 16, v140
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v164, v159, v157, 0xc0c0004
	ds_load_u8 v157, v118 offset:8064
	v_lshl_or_b32 v165, v148, 16, v152
	v_lshl_or_b32 v159, v153, 16, v151
	v_lshl_or_b32 v164, v166, 16, v164
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v135, v137, v135, 0xc0c0004
	ds_load_u8 v137, v118 offset:6016
	v_perm_b32 v142, v144, v142, 0xc0c0004
	ds_load_u8 v144, v118 offset:5504
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v139, v139, v146, 0xc0c0004
	ds_load_u8 v146, v118 offset:6528
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v150, v150, v154, 0xc0c0004
	v_lshl_or_b32 v160, v142, 16, v135
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v166, v139, 16, v150
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v131, v131, v137, 0xc0c0004
	ds_load_u8 v137, v118 offset:7808
	ds_load_u8 v154, v118 offset:7040
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v133, v133, v144, 0xc0c0004
	ds_load_u8 v144, v118 offset:7296
	v_lshl_or_b32 v167, v131, 16, v133
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v137, v137, v157, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v168, v156, v154, 0xc0c0004
	v_lshl_or_b32 v154, v141, 16, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v144, v155, 0xc0c0004
	ds_load_u8 v155, v118 offset:6272
	v_lshl_or_b32 v157, v145, 16, v143
	v_lshl_or_b32 v156, v149, 16, v147
	v_lshl_or_b32 v169, v137, 16, v144
	v_wmma_i32_16x16x16_iu4 v[136:143], v[162:163], v[33:34], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[164:165], v[25:26], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[166:167], v[29:30], v[136:143] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v155, v146, 0xc0c0004
	v_lshl_or_b32 v155, v134, 16, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v168, v168, 16, v146
	v_wmma_i32_16x16x16_iu4 v[128:135], v[154:155], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[162:163], v[35:36], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[168:169], v[37:38], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[156:157], v[25:26], v[128:135] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[164:165], v[27:28], v[146:153] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v33, v138
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[128:135], v[158:159], v[29:30], v[128:135] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v29, v136
	v_cvt_f32_i32_e32 v30, v137
	v_cvt_f32_i32_e32 v34, v139
	v_cvt_f32_i32_e32 v136, v142
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[128:135], v[160:161], v[37:38], v[128:135] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v37, v140
	v_cvt_f32_i32_e32 v38, v141
	v_cvt_f32_i32_e32 v137, v143
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[138:145], v[154:155], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[166:167], v[31:32], v[146:153] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v131, v131
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[138:145], v[156:157], v[27:28], v[138:145] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v132, v132
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[146:153], v[168:169], v[39:40], v[146:153] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[138:145], v[158:159], v[31:32], v[138:145] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v31, v146
	v_cvt_f32_i32_e32 v32, v147
	v_cvt_f32_i32_e32 v170, v150
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[138:145], v[160:161], v[39:40], v[138:145] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v39, v148
	v_cvt_f32_i32_e32 v40, v149
	v_cvt_f32_i32_e32 v171, v151
	v_cvt_f32_i32_e32 v172, v152
	v_cvt_f32_i32_e32 v173, v153
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[146:153], v[156:157], v[21:22], v[146:153] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[146:153], v[158:159], v[9:10], v[146:153] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v143, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[146:153], v[160:161], v[13:14], v[146:153] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v174, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v175, v147
	v_cvt_f32_i32_e32 v176, v148
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v177, v149
	v_cvt_f32_i32_e32 v178, v150
	v_cvt_f32_i32_e32 v179, v151
	v_cvt_f32_i32_e32 v180, v152
	v_cvt_f32_i32_e32 v181, v153
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[146:153], v[162:163], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 651 40                        ; ragged.py:651:40
	v_add_lshl_u32 v17, v111, s5, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[146:153], v[164:165], v[21:22], v[146:153] neg_lo:[1,1,0]
	.loc	1 651 40                        ; ragged.py:651:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[146:153], v[166:167], v[9:10], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[168:169], v[13:14], v[146:153] neg_lo:[1,1,0]
	.loc	1 644 40                        ; ragged.py:644:40
	v_add_lshl_u32 v13, s12, v113, 1
	v_add_lshl_u32 v14, s12, v114, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v9, v146
	v_cvt_f32_i32_e32 v10, v147
	v_cvt_f32_i32_e32 v182, v148
	v_cvt_f32_i32_e32 v183, v149
	v_cvt_f32_i32_e32 v184, v150
	v_cvt_f32_i32_e32 v185, v151
	v_cvt_f32_i32_e32 v186, v152
	v_cvt_f32_i32_e32 v187, v153
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[19:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 644 40                        ; ragged.py:644:40
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[146:153], v[156:157], v[23:24], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[158:159], v[11:12], v[146:153] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[160:161], v[15:16], v[146:153] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v154, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v155, v147
	v_cvt_f32_i32_e32 v158, v148
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v159, v149
	v_cvt_f32_i32_e32 v160, v150
	v_cvt_f32_i32_e32 v161, v151
	v_cvt_f32_i32_e32 v188, v152
	v_cvt_f32_i32_e32 v189, v153
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[146:153], v[162:163], v[19:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[164:165], v[23:24], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[146:153], v[166:167], v[11:12], v[146:153] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[168:169], v[15:16], v[146:153] neg_lo:[1,1,0]
	.loc	1 644 40                        ; ragged.py:644:40
	v_add_lshl_u32 v15, s12, v115, 1
	v_add_lshl_u32 v16, s12, v116, 1
	.loc	1 658 17                        ; ragged.py:658:17
	s_add_i32 s12, s12, 1
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v11, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 644 40                        ; ragged.py:644:40
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v12, v147
	.loc	1 651 40                        ; ragged.py:651:40
	buffer_load_u16 v17, v17, s[28:31], 0 offen
	.loc	1 644 40                        ; ragged.py:644:40
	s_clause 0x3
	buffer_load_u16 v13, v13, s[24:27], 0 offen
	buffer_load_u16 v21, v14, s[24:27], 0 offen
	buffer_load_u16 v146, v15, s[24:27], 0 offen
	buffer_load_u16 v147, v16, s[24:27], 0 offen
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v162, v148
	v_cvt_f32_i32_e32 v163, v149
	v_cvt_f32_i32_e32 v167, v153
	.loc	1 656 21                        ; ragged.py:656:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v166, v152
	v_cvt_f32_i32_e32 v164, v150
	v_cvt_f32_i32_e32 v165, v151
	.loc	1 614 19                        ; ragged.py:614:19
	s_cmp_lg_u32 s12, s34
	.loc	1 644 40                        ; ragged.py:644:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v24, 16, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 649 21                        ; ragged.py:649:21
	v_dual_mul_f32 v193, v139, v24 :: v_dual_lshlrev_b32 v16, 16, v13
	v_mul_f32_e32 v168, v128, v16
	v_mul_f32_e32 v191, v131, v16
	.loc	1 644 40                        ; ragged.py:644:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v131, 16, v147
	.loc	1 649 21                        ; ragged.py:649:21
	v_dual_mul_f32 v169, v129, v16 :: v_dual_lshlrev_b32 v14, 16, v17
	v_mul_f32_e32 v25, v132, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v18, v30, v16 :: v_dual_mul_f32 v147, v189, v131
	v_mul_f32_e32 v154, v154, v131
	v_mul_f32_e32 v30, v32, v24
	v_mul_f32_e32 v32, v40, v24
	.loc	1 644 40                        ; ragged.py:644:40
	v_lshlrev_b32_e32 v40, 16, v146
	.loc	1 656 21                        ; ragged.py:656:21
	ds_store_b32 v126, v14
	.loc	1 649 21                        ; ragged.py:649:21
	v_dual_mul_f32 v190, v130, v16 :: v_dual_mul_f32 v155, v155, v131
	v_dual_mul_f32 v26, v133, v16 :: v_dual_mul_f32 v149, v159, v131
	v_mul_f32_e32 v27, v134, v16
	v_mul_f32_e32 v28, v135, v16
	v_dual_mul_f32 v17, v29, v16 :: v_dual_mul_f32 v148, v158, v131
	v_dual_mul_f32 v19, v33, v16 :: v_dual_mul_f32 v146, v188, v131
	v_mul_f32_e32 v20, v34, v16
	v_mul_f32_e32 v13, v37, v16
	v_dual_mul_f32 v14, v38, v16 :: v_dual_mul_f32 v139, v163, v131
	v_mul_f32_e32 v15, v136, v16
	v_mul_f32_e32 v16, v137, v16
	.loc	1 656 21                        ; ragged.py:656:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 21                        ; ragged.py:649:21
	v_mul_f32_e32 v132, v9, v40
	v_dual_mul_f32 v133, v10, v40 :: v_dual_mul_f32 v136, v11, v131
	v_mul_f32_e32 v137, v12, v131
	.loc	1 656 21                        ; ragged.py:656:21
	ds_load_b128 v[9:12], v127
	.loc	1 649 21                        ; ragged.py:649:21
	v_mul_f32_e32 v157, v175, v40
	v_dual_mul_f32 v35, v144, v24 :: v_dual_mul_f32 v130, v166, v131
	v_mul_f32_e32 v36, v145, v24
	v_mul_f32_e32 v144, v160, v131
	v_mul_f32_e32 v145, v161, v131
	.loc	1 656 21                        ; ragged.py:656:21
	ds_load_b128 v[158:161], v127 offset:16
	.loc	1 649 21                        ; ragged.py:649:21
	v_mul_f32_e32 v150, v140, v24
	v_dual_mul_f32 v151, v141, v24 :: v_dual_mul_f32 v128, v164, v131
	v_mul_f32_e32 v33, v142, v24
	v_mul_f32_e32 v153, v177, v40
	v_dual_mul_f32 v192, v138, v24 :: v_dual_mul_f32 v129, v165, v131
	v_mul_f32_e32 v34, v143, v24
	v_mul_f32_e32 v29, v31, v24
	v_mul_f32_e32 v31, v39, v24
	v_mul_f32_e32 v21, v170, v24
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v23, v172, v24 :: v_dual_fmac_f32 v56, v155, v10
	.loc	1 657 17                        ; ragged.py:657:17
	v_fmac_f32_e32 v82, v168, v9
	.loc	1 649 21                        ; ragged.py:649:21
	v_mul_f32_e32 v152, v176, v40
	v_dual_mul_f32 v156, v174, v40 :: v_dual_fmac_f32 v55, v148, v11
	v_mul_f32_e32 v22, v171, v24
	v_mul_f32_e32 v138, v162, v131
	.loc	1 657 17                        ; ragged.py:657:17
	v_fmac_f32_e32 v109, v190, v11
	v_fmac_f32_e32 v93, v150, v11
	.loc	1 656 21                        ; ragged.py:656:21
	ds_load_b128 v[162:165], v127 offset:512
	.loc	1 657 17                        ; ragged.py:657:17
	v_fmac_f32_e32 v92, v151, v12
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v106, v26, v159
	v_fmac_f32_e32 v70, v153, v12
	v_fmac_f32_e32 v89, v33, v158
	.loc	1 649 21                        ; ragged.py:649:21
	v_dual_mul_f32 v24, v173, v24 :: v_dual_fmac_f32 v71, v152, v11
	.loc	1 656 21                        ; ragged.py:656:21
	ds_load_b128 v[150:153], v127 offset:528
	.loc	1 649 21                        ; ragged.py:649:21
	v_dual_mul_f32 v140, v178, v40 :: v_dual_fmac_f32 v83, v36, v161
	v_dual_mul_f32 v141, v179, v40 :: v_dual_fmac_f32 v104, v28, v161
	v_dual_mul_f32 v143, v181, v40 :: v_dual_fmac_f32 v50, v147, v161
	v_dual_mul_f32 v134, v182, v40 :: v_dual_fmac_f32 v53, v144, v158
	v_dual_mul_f32 v135, v183, v40 :: v_dual_fmac_f32 v52, v145, v159
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v37, v184, v40 :: v_dual_fmac_f32 v66, v143, v161
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v39, v186, v40 :: v_dual_fmac_f32 v100, v20, v165
	v_mul_f32_e32 v131, v167, v131
	.loc	1 657 17                        ; ragged.py:657:17
	v_fmac_f32_e32 v95, v192, v9
	.loc	1 649 21                        ; ragged.py:649:21
	v_dual_mul_f32 v142, v180, v40 :: v_dual_fmac_f32 v85, v34, v159
	.loc	1 657 17                        ; ragged.py:657:17
	v_dual_fmac_f32 v69, v140, v158 :: v_dual_mul_f32 v38, v185, v40
	v_dual_fmac_f32 v65, v132, v162 :: v_dual_mul_f32 v40, v187, v40
	v_fmac_f32_e32 v103, v17, v162
	v_fmac_f32_e32 v110, v169, v10
	v_dual_fmac_f32 v108, v191, v12 :: v_dual_fmac_f32 v81, v29, v162
	v_dual_fmac_f32 v94, v193, v10 :: v_dual_fmac_f32 v73, v156, v9
	v_dual_fmac_f32 v72, v157, v10 :: v_dual_fmac_f32 v57, v154, v9
	v_fmac_f32_e32 v54, v149, v12
	v_fmac_f32_e32 v107, v25, v158
	v_dual_fmac_f32 v105, v27, v160 :: v_dual_fmac_f32 v102, v18, v163
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v84, v35, v160 :: v_dual_fmac_f32 v99, v13, v150
	v_dual_fmac_f32 v68, v141, v159 :: v_dual_fmac_f32 v67, v142, v160
	v_dual_fmac_f32 v78, v32, v165 :: v_dual_fmac_f32 v51, v146, v160
	v_dual_fmac_f32 v64, v133, v163 :: v_dual_fmac_f32 v101, v19, v164
	v_dual_fmac_f32 v80, v30, v163 :: v_dual_fmac_f32 v79, v31, v164
	v_dual_fmac_f32 v48, v137, v163 :: v_dual_fmac_f32 v63, v134, v164
	v_dual_fmac_f32 v62, v135, v165 :: v_dual_fmac_f32 v49, v136, v162
	v_dual_fmac_f32 v47, v138, v164 :: v_dual_fmac_f32 v46, v139, v165
	v_dual_fmac_f32 v98, v14, v151 :: v_dual_fmac_f32 v97, v15, v152
	v_dual_fmac_f32 v96, v16, v153 :: v_dual_fmac_f32 v77, v21, v150
	v_dual_fmac_f32 v76, v22, v151 :: v_dual_fmac_f32 v75, v23, v152
	v_dual_fmac_f32 v74, v24, v153 :: v_dual_fmac_f32 v61, v37, v150
	v_dual_fmac_f32 v60, v38, v151 :: v_dual_fmac_f32 v59, v39, v152
	v_dual_fmac_f32 v58, v40, v153 :: v_dual_fmac_f32 v43, v130, v152
	v_dual_fmac_f32 v45, v128, v150 :: v_dual_fmac_f32 v44, v129, v151
	v_fmac_f32_e32 v42, v131, v153
	.loc	1 614 19                        ; ragged.py:614:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 660 9                         ; ragged.py:660:9
	v_bfe_u32 v7, v82, 16, 1
	v_bfe_u32 v8, v110, 16, 1
	v_cmp_o_f32_e64 s5, v82, v82
	v_cmp_o_f32_e64 s6, v110, v110
	v_bfe_u32 v9, v109, 16, 1
	v_add3_u32 v7, v82, v7, 0x7fff
	v_add3_u32 v8, v110, v8, 0x7fff
	v_bfe_u32 v10, v108, 16, 1
	v_cmp_o_f32_e64 s7, v109, v109
	v_add3_u32 v9, v109, v9, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v107, 16, 1
	v_bfe_u32 v11, v106, 16, 1
	v_add3_u32 v10, v108, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v108, v108
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s7
	v_add3_u32 v8, v107, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v107, v107
	v_add3_u32 v11, v106, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v106, v106
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s5
	v_bfe_u32 v10, v105, 16, 1
	v_bfe_u32 v12, v104, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s7
	v_bfe_u32 v11, v103, 16, 1
	v_add3_u32 v10, v105, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v105, v105
	v_add3_u32 v12, v104, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v104, v104
	v_bfe_u32 v13, v102, 16, 1
	v_add3_u32 v11, v103, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v103, v103
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s6
	v_bfe_u32 v12, v101, 16, 1
	v_bfe_u32 v14, v100, 16, 1
	v_add3_u32 v13, v102, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v102, v102
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s7
	v_add3_u32 v12, v101, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v101, v101
	v_add3_u32 v14, v100, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v100, v100
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v99, 16, 1
	v_bfe_u32 v15, v98, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v97, 16, 1
	v_add3_u32 v13, v99, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v99, v99
	v_add3_u32 v15, v98, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v98, v98
	v_bfe_u32 v16, v96, 16, 1
	v_add3_u32 v14, v97, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v97, v97
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s6
	v_bfe_u32 v15, v95, 16, 1
	v_bfe_u32 v17, v94, 16, 1
	v_add3_u32 v16, v96, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v96, v96
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s7
	v_add3_u32 v15, v95, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v95, v95
	v_add3_u32 v17, v94, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v94, v94
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s5
	v_bfe_u32 v16, v93, 16, 1
	v_bfe_u32 v18, v92, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s6
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s7
	v_bfe_u32 v17, v89, 16, 1
	v_add3_u32 v16, v93, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v93, v93
	v_add3_u32 v18, v92, v18, 0x7fff
	v_cmp_o_f32_e64 s6, v92, v92
	v_bfe_u32 v19, v85, 16, 1
	v_add3_u32 v17, v89, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v89, v89
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s5
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s6
	v_bfe_u32 v18, v84, 16, 1
	v_bfe_u32 v20, v83, 16, 1
	v_add3_u32 v19, v85, v19, 0x7fff
	v_cmp_o_f32_e64 s5, v85, v85
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s7
	v_add3_u32 v18, v84, v18, 0x7fff
	v_cmp_o_f32_e64 s6, v84, v84
	v_add3_u32 v20, v83, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v83, v83
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s5
	v_bfe_u32 v19, v81, 16, 1
	v_bfe_u32 v21, v80, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s7
	v_bfe_u32 v20, v79, 16, 1
	v_add3_u32 v19, v81, v19, 0x7fff
	v_cmp_o_f32_e64 s5, v81, v81
	v_add3_u32 v21, v80, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v80, v80
	v_bfe_u32 v22, v78, 16, 1
	v_add3_u32 v20, v79, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v79, v79
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v77, 16, 1
	v_bfe_u32 v23, v76, 16, 1
	v_add3_u32 v22, v78, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v78, v78
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s7
	v_add3_u32 v21, v77, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v77, v77
	v_add3_u32 v23, v76, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v76, v76
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v75, 16, 1
	v_bfe_u32 v24, v74, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s6
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s7
	v_bfe_u32 v23, v73, 16, 1
	v_add3_u32 v22, v75, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v75, v75
	v_add3_u32 v24, v74, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v74, v74
	v_bfe_u32 v25, v72, 16, 1
	v_add3_u32 v23, v73, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v73, v73
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s5
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s6
	v_bfe_u32 v24, v71, 16, 1
	v_bfe_u32 v26, v70, 16, 1
	v_add3_u32 v25, v72, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v72, v72
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s7
	v_add3_u32 v24, v71, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v71, v71
	v_add3_u32 v26, v70, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v70, v70
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s5
	v_bfe_u32 v25, v69, 16, 1
	v_bfe_u32 v27, v68, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s6
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s7
	v_bfe_u32 v26, v67, 16, 1
	v_add3_u32 v25, v69, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v69, v69
	v_add3_u32 v27, v68, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v68, v68
	v_bfe_u32 v28, v66, 16, 1
	v_add3_u32 v26, v67, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v67, v67
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s5
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s6
	v_bfe_u32 v27, v65, 16, 1
	v_bfe_u32 v29, v64, 16, 1
	v_add3_u32 v28, v66, v28, 0x7fff
	v_cmp_o_f32_e64 s5, v66, v66
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s7
	v_add3_u32 v27, v65, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v65, v65
	v_add3_u32 v29, v64, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v64, v64
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s5
	v_bfe_u32 v28, v63, 16, 1
	v_bfe_u32 v30, v62, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v61, 16, 1
	v_add3_u32 v28, v63, v28, 0x7fff
	v_cmp_o_f32_e64 s5, v63, v63
	v_add3_u32 v30, v62, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v62, v62
	v_bfe_u32 v31, v60, 16, 1
	v_add3_u32 v29, v61, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v61, v61
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s5
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v59, 16, 1
	v_bfe_u32 v32, v58, 16, 1
	v_add3_u32 v31, v60, v31, 0x7fff
	v_cmp_o_f32_e64 s5, v60, v60
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s7
	v_add3_u32 v30, v59, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v59, v59
	v_add3_u32 v32, v58, v32, 0x7fff
	v_cmp_o_f32_e64 s7, v58, v58
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s5
	v_bfe_u32 v31, v57, 16, 1
	v_bfe_u32 v33, v56, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s6
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s7
	v_bfe_u32 v32, v55, 16, 1
	v_add3_u32 v31, v57, v31, 0x7fff
	v_cmp_o_f32_e64 s5, v57, v57
	v_add3_u32 v33, v56, v33, 0x7fff
	v_cmp_o_f32_e64 s6, v56, v56
	v_bfe_u32 v34, v54, 16, 1
	v_add3_u32 v32, v55, v32, 0x7fff
	v_cmp_o_f32_e64 s7, v55, v55
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s5
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s6
	v_bfe_u32 v33, v53, 16, 1
	v_bfe_u32 v35, v52, 16, 1
	v_add3_u32 v34, v54, v34, 0x7fff
	v_cmp_o_f32_e64 s5, v54, v54
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s7
	v_add3_u32 v33, v53, v33, 0x7fff
	v_cmp_o_f32_e64 s6, v53, v53
	v_add3_u32 v35, v52, v35, 0x7fff
	v_cmp_o_f32_e64 s7, v52, v52
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s5
	v_bfe_u32 v34, v51, 16, 1
	v_bfe_u32 v36, v50, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s6
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s7
	v_bfe_u32 v35, v49, 16, 1
	v_add3_u32 v34, v51, v34, 0x7fff
	v_cmp_o_f32_e64 s5, v51, v51
	v_add3_u32 v36, v50, v36, 0x7fff
	v_cmp_o_f32_e64 s6, v50, v50
	v_bfe_u32 v37, v48, 16, 1
	v_add3_u32 v35, v49, v35, 0x7fff
	v_cmp_o_f32_e64 s7, v49, v49
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s5
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s6
	v_bfe_u32 v36, v47, 16, 1
	v_bfe_u32 v38, v46, 16, 1
	v_add3_u32 v37, v48, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v48, v48
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s7
	v_add3_u32 v36, v47, v36, 0x7fff
	v_cmp_o_f32_e64 s6, v47, v47
	v_add3_u32 v38, v46, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v46, v46
	v_bfe_u32 v39, v45, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v44, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s6
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	v_add3_u32 v38, v45, v39, 0x7fff
	v_bfe_u32 v39, v43, 16, 1
	v_cmp_o_f32_e64 s5, v45, v45
	v_bfe_u32 v40, v42, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v37, v44, v37, 0x7fff
	v_add3_u32 v39, v43, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v43, v43
	v_add3_u32 v40, v42, v40, 0x7fff
	v_cmp_o_f32_e64 s8, v42, v42
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s5
	v_cmp_eq_u32_e64 s5, 0, v0
	v_cmp_o_f32_e64 s6, v44, v44
	v_cndmask_b16 v0.l, 0x7fff, v39.h, s7
	v_cndmask_b16 v0.h, 0x7fff, v40.h, s8
	.loc	1 563 36                        ; ragged.py:563:36
	v_lshrrev_b32_e32 v2, 1, v87
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
	v_or_b32_e32 v2, s35, v2
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v6, v86, s33
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
	v_mul_lo_u32 v5, v88, s33
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v4, v90, s33
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
	v_mul_lo_u32 v1, v91, s33
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 194
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8128
; TotalNumSgprs: 43
; NumVgprs: 194
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 43
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
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
