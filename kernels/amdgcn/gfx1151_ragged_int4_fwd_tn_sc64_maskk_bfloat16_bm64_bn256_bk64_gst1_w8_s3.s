	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:549:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:549:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
.Ltmp2:
	.loc	1 551 25 is_stmt 1              ; ragged.py:551:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v81, 0
	s_cselect_b32 s4, s8, s5
	.loc	1 563 36                        ; ragged.py:563:36
	v_and_b32_e32 v84, 0xf0, v0
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
	s_lshl_b64 s[16:17], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s16
	s_addc_u32 s3, s5, s17
	s_load_b64 s[14:15], s[2:3], 0x0
	.loc	1 560 24                        ; ragged.py:560:24
	s_add_u32 s2, s6, s16
	s_addc_u32 s3, s7, s17
	.loc	1 561 22                        ; ragged.py:561:22
	s_add_u32 s4, s8, s16
	s_addc_u32 s5, s9, s17
	.loc	1 560 24                        ; ragged.py:560:24
	s_load_b64 s[18:19], s[2:3], 0x0
	.loc	1 561 22                        ; ragged.py:561:22
	s_load_b64 s[28:29], s[4:5], 0x0
	.loc	1 563 18                        ; ragged.py:563:18
	s_lshl_b32 s35, s20, 8
	.loc	1 562 18                        ; ragged.py:562:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s14, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s15, 0, s2
	.loc	1 645 25                        ; ragged.py:645:25
	v_add_nc_u32_e32 v83, s14, v1
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
	v_cmp_le_i64_e32 vcc_lo, s[18:19], v[2:3]
	.loc	1 564 48 is_stmt 0              ; ragged.py:564:48
	v_cmp_gt_i64_e64 s2, s[28:29], v[2:3]
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e64 s3, s[18:19], v[4:5]
	v_cmp_le_i64_e64 s5, s[18:19], v[6:7]
	v_cmp_le_i64_e64 s6, s[18:19], v[8:9]
	.loc	1 564 48                        ; ragged.py:564:48
	v_cmp_gt_i64_e64 s7, s[28:29], v[4:5]
	v_cmp_gt_i64_e64 s8, s[28:29], v[6:7]
	v_cmp_gt_i64_e64 s9, s[28:29], v[8:9]
	.loc	1 645 25 is_stmt 1              ; ragged.py:645:25
	v_add_nc_u32_e32 v85, 16, v83
	v_add_nc_u32_e32 v87, 32, v83
	v_add_nc_u32_e32 v88, 48, v83
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
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s9, s[0:1], 0x50
	s_load_b32 s40, s[0:1], 0x48
	s_load_b256 s[20:27], s[0:1], 0x0
	v_dual_mov_b32 v106, 0 :: v_dual_and_b32 v5, 63, v0
	v_lshrrev_b32_e32 v8, 1, v0
	.loc	1 562 18 is_stmt 1              ; ragged.py:562:18
	v_mov_b32_e32 v81, 0
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v115, 0, v1
	v_dual_mov_b32 v105, 0 :: v_dual_lshlrev_b32 v10, 1, v0
	.loc	1 563 18                        ; ragged.py:563:18
	v_lshl_or_b32 v2, v1, 4, s35
	v_or_b32_e32 v1, 0x300, v0
	v_or_b32_e32 v6, 0x700, v0
	v_or_b32_e32 v7, 0x3f0, v0
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v10, 28, v10
	v_or_b32_e32 v108, s35, v0
	.loc	1 611 28                        ; ragged.py:611:28
	v_lshrrev_b32_e32 v110, 6, v0
	.loc	1 558 20                        ; ragged.py:558:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s16
	s_addc_u32 s1, s7, s17
	.loc	1 628 39                        ; ragged.py:628:39
	s_mul_i32 s8, s9, s33
	.loc	1 652 25                        ; ragged.py:652:25
	s_load_b32 s7, s[0:1], 0x0
	.loc	1 562 18                        ; ragged.py:562:18
	v_add_co_u32 v3, s0, s14, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s15, 0, s0
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v9, 4, v0
	v_mov_b32_e32 v102, 0
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e64 s5, s[18:19], v[3:4]
	.loc	1 564 48 is_stmt 0              ; ragged.py:564:48
	v_cmp_gt_i64_e64 s6, s[28:29], v[3:4]
	v_and_b32_e32 v3, 0x70, v8
	v_dual_mov_b32 v103, 0 :: v_dual_lshlrev_b32 v8, 5, v0
	v_mov_b32_e32 v98, 0
	v_or_b32_e32 v4, 0x7f0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v122, v115, v3
	v_lshlrev_b32_e32 v3, 2, v84
	v_and_b32_e32 v8, 32, v8
	.loc	1 645 25 is_stmt 1              ; ragged.py:645:25
	v_mul_lo_u32 v111, v83, s34
	v_mul_lo_u32 v112, v85, s34
	v_mul_lo_u32 v113, v87, s34
	v_mul_lo_u32 v114, v88, s34
	v_add3_u32 v3, 0, v3, v8
	v_dual_mov_b32 v99, 0 :: v_dual_lshlrev_b32 v8, 1, v84
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v25, s14, v5
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[26:27], null, s8, s7, v[2:3]
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s0, s33, v2
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v124, 0, v1
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v125, 0, v6
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v126, 0, v7
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v127, 0, v4
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v129, v3, v10
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v130, 0, v8
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	.loc	1 611 28                        ; ragged.py:611:28
	v_lshrrev_b32_e32 v109, 4, v84
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s1, s33, v108
	.loc	1 611 28                        ; ragged.py:611:28
	v_or_b32_e32 v116, 4, v110
	v_or_b32_e32 v117, 8, v110
	v_or_b32_e32 v118, 12, v110
	v_or_b32_e32 v119, 20, v110
	v_or_b32_e32 v120, 24, v110
	v_or_b32_e32 v121, 28, v110
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v123, 0, v0
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v128, 0, v9
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	.loc	1 564 20                        ; ragged.py:564:20
	s_and_b32 s41, s5, s6
	.loc	1 652 25                        ; ragged.py:652:25
	s_mul_i32 s42, s34, s7
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
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v9, s5, v110
	v_or_b32_e32 v11, s5, v116
	v_or_b32_e32 v12, s5, v117
	v_or_b32_e32 v13, s5, v118
	v_or_b32_e32 v18, s5, v109
	v_or_b32_e32 v14, 16, v9
	v_or_b32_e32 v15, s5, v119
	v_or_b32_e32 v16, s5, v120
	v_or_b32_e32 v17, s5, v121
	v_cmp_gt_i32_e64 s5, s9, v9
	v_mad_u64_u32 v[9:10], null, v9, s40, v[25:26]
	v_mad_u64_u32 v[10:11], null, v11, s40, v[25:26]
	v_mad_u64_u32 v[11:12], null, v12, s40, v[25:26]
	v_mad_u64_u32 v[12:13], null, v13, s40, v[25:26]
	v_or_b32_e32 v19, 16, v18
	v_cmp_gt_i32_e64 s6, s9, v14
	v_mad_u64_u32 v[13:14], null, v14, s40, v[25:26]
	v_mad_u64_u32 v[14:15], null, v15, s40, v[25:26]
	s_and_b32 s5, s41, s5
	v_mad_u64_u32 v[15:16], null, v16, s40, v[25:26]
	v_mad_u64_u32 v[16:17], null, v17, s40, v[25:26]
	v_cndmask_b32_e64 v17, 0x80000000, v9, s5
	v_cndmask_b32_e64 v20, 0x80000000, v10, s5
	v_mad_u64_u32 v[9:10], null, v18, s33, v[26:27]
	v_cmp_gt_i32_e64 s7, s9, v18
	v_cndmask_b32_e64 v21, 0x80000000, v11, s5
	v_mad_u64_u32 v[10:11], null, v19, s33, v[26:27]
	v_cmp_gt_i32_e64 s8, s9, v19
	s_and_b32 s6, s41, s6
	v_cndmask_b32_e64 v12, 0x80000000, v12, s5
	s_and_b32 s5, s0, s7
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	v_cndmask_b32_e64 v14, 0x80000000, v14, s6
	v_cndmask_b32_e64 v15, 0x80000000, v15, s6
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	s_and_b32 s6, s0, s8
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	v_cndmask_b32_e64 v18, 0x80000000, v10, s6
	.loc	1 629 34                        ; ragged.py:629:34
	s_clause 0x7
	buffer_load_u8 v17, v17, s[36:39], 0 offen
	buffer_load_u8 v19, v20, s[36:39], 0 offen
	buffer_load_u8 v20, v21, s[36:39], 0 offen
	buffer_load_u8 v21, v12, s[36:39], 0 offen
	buffer_load_u8 v22, v13, s[36:39], 0 offen
	buffer_load_u8 v23, v14, s[36:39], 0 offen
	buffer_load_u8 v24, v15, s[36:39], 0 offen
	buffer_load_u8 v27, v16, s[36:39], 0 offen
	.loc	1 630 34                        ; ragged.py:630:34
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v18, s[20:23], 0 offen
	.loc	1 629 34                        ; ragged.py:629:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 652 25                        ; ragged.py:652:25
	s_add_i32 s5, s12, s42
	.loc	1 629 34                        ; ragged.py:629:34
	s_waitcnt vmcnt(9)
	ds_store_b8 v123, v17
	s_waitcnt vmcnt(8)
	ds_store_b8 v123, v19 offset:256
	s_waitcnt vmcnt(7)
	ds_store_b8 v123, v20 offset:512
	s_waitcnt vmcnt(6)
	ds_store_b8 v124, v21
	s_waitcnt vmcnt(5)
	ds_store_b8 v123, v22 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v123, v23 offset:1280
	s_waitcnt vmcnt(3)
	ds_store_b8 v123, v24 offset:1536
	s_waitcnt vmcnt(2)
	ds_store_b8 v125, v27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 631 31                        ; ragged.py:631:31
	ds_load_u8 v27, v115 offset:192
	ds_load_u8 v28, v115 offset:128
	ds_load_u8 v233, v115 offset:64
	ds_load_u8 v234, v115 offset:448
	ds_load_u8 v235, v115 offset:384
	ds_load_u8 v236, v115 offset:320
	ds_load_u8 v237, v115 offset:256
	ds_load_u8 v29, v115 offset:704
	ds_load_u8 v30, v115 offset:640
	ds_load_u8 v227, v115 offset:576
	ds_load_u8 v228, v115 offset:512
	ds_load_u8 v229, v115 offset:960
	ds_load_u8 v230, v115 offset:896
	ds_load_u8 v231, v115 offset:832
	ds_load_u8 v232, v115 offset:768
	ds_load_u8 v31, v115 offset:1216
	ds_load_u8 v32, v115 offset:1152
	ds_load_u8 v33, v115 offset:1088
	ds_load_u8 v34, v115 offset:1024
	ds_load_u8 v35, v115 offset:1472
	ds_load_u8 v36, v115 offset:1408
	ds_load_u8 v37, v115 offset:1344
	ds_load_u8 v38, v115 offset:1280
	ds_load_u8 v17, v115 offset:1728
	ds_load_u8 v18, v115 offset:1664
	ds_load_u8 v19, v115 offset:1600
	ds_load_u8 v20, v115 offset:1536
	ds_load_u8 v21, v115 offset:1984
	ds_load_u8 v22, v115 offset:1920
	ds_load_u8 v23, v115 offset:1856
	ds_load_u8 v24, v115 offset:1792
	ds_load_u8 v131, v115 offset:208
	ds_load_u8 v133, v115 offset:144
	ds_load_u8 v138, v115 offset:80
	ds_load_u8 v145, v115 offset:464
	ds_load_u8 v147, v115 offset:400
	ds_load_u8 v151, v115 offset:336
	ds_load_u8 v154, v115 offset:272
	ds_load_u8 v132, v115 offset:720
	ds_load_u8 v134, v115 offset:656
	ds_load_u8 v139, v115 offset:592
	ds_load_u8 v141, v115 offset:528
	ds_load_u8 v148, v115 offset:976
	ds_load_u8 v149, v115 offset:912
	ds_load_u8 v155, v115 offset:848
	ds_load_u8 v157, v115 offset:784
	ds_load_u8 v135, v115 offset:1232
	ds_load_u8 v136, v115 offset:1168
	ds_load_u8 v142, v115 offset:1104
	ds_load_u8 v143, v115 offset:1040
	ds_load_u8 v150, v115 offset:1488
	ds_load_u8 v152, v115 offset:1424
	ds_load_u8 v158, v115 offset:1360
	ds_load_u8 v159, v115 offset:1296
	ds_load_u8 v137, v115 offset:1744
	ds_load_u8 v140, v115 offset:1680
	ds_load_u8 v144, v115 offset:1616
	ds_load_u8 v146, v115 offset:1552
	ds_load_u8 v153, v115 offset:2000
	ds_load_u8 v156, v115 offset:1936
	ds_load_u8 v160, v115 offset:1872
	ds_load_u8 v161, v115 offset:1808
	ds_load_u8 v162, v115 offset:224
	ds_load_u8 v164, v115 offset:160
	ds_load_u8 v169, v115 offset:96
	ds_load_u8 v176, v115 offset:480
	ds_load_u8 v178, v115 offset:416
	ds_load_u8 v182, v115 offset:352
	ds_load_u8 v185, v115 offset:288
	ds_load_u8 v163, v115 offset:736
	ds_load_u8 v165, v115 offset:672
	ds_load_u8 v170, v115 offset:608
	ds_load_u8 v172, v115 offset:544
	ds_load_u8 v179, v115 offset:992
	ds_load_u8 v180, v115 offset:928
	ds_load_u8 v186, v115 offset:864
	ds_load_u8 v188, v115 offset:800
	ds_load_u8 v166, v115 offset:1248
	ds_load_u8 v167, v115 offset:1184
	ds_load_u8 v173, v115 offset:1120
	ds_load_u8 v174, v115 offset:1056
	ds_load_u8 v181, v115 offset:1504
	ds_load_u8 v183, v115 offset:1440
	ds_load_u8 v189, v115 offset:1376
	ds_load_u8 v190, v115 offset:1312
	ds_load_u8 v168, v115 offset:1760
	ds_load_u8 v171, v115 offset:1696
	ds_load_u8 v175, v115 offset:1632
	ds_load_u8 v177, v115 offset:1568
	ds_load_u8 v184, v115 offset:2016
	ds_load_u8 v187, v115 offset:1952
	ds_load_u8 v191, v115 offset:1888
	ds_load_u8 v192, v115 offset:1824
	ds_load_u8 v193, v115 offset:240
	ds_load_u8 v194, v115 offset:176
	ds_load_u8 v195, v115 offset:112
	ds_load_u8 v196, v115 offset:496
	ds_load_u8 v197, v115 offset:432
	ds_load_u8 v198, v115 offset:368
	ds_load_u8 v199, v115 offset:304
	ds_load_u8 v238, v115
	ds_load_u8 v208, v115 offset:16
	ds_load_u8 v203, v115 offset:32
	ds_load_u8 v201, v115 offset:48
	ds_load_u8 v200, v126
	ds_load_u8 v202, v115 offset:944
	ds_load_u8 v204, v115 offset:880
	ds_load_u8 v205, v115 offset:816
	ds_load_u8 v206, v115 offset:752
	ds_load_u8 v207, v115 offset:688
	ds_load_u8 v209, v115 offset:624
	ds_load_u8 v210, v115 offset:560
	ds_load_u8 v211, v115 offset:1264
	ds_load_u8 v212, v115 offset:1200
	ds_load_u8 v213, v115 offset:1136
	ds_load_u8 v214, v115 offset:1072
	ds_load_u8 v215, v115 offset:1520
	ds_load_u8 v216, v115 offset:1456
	ds_load_u8 v217, v115 offset:1392
	ds_load_u8 v218, v115 offset:1328
	ds_load_u8 v219, v127
	ds_load_u8 v220, v115 offset:1968
	ds_load_u8 v221, v115 offset:1904
	ds_load_u8 v222, v115 offset:1840
	ds_load_u8 v223, v115 offset:1776
	ds_load_u8 v224, v115 offset:1712
	ds_load_u8 v225, v115 offset:1648
	ds_load_u8 v226, v115 offset:1584
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_perm_b32 v31, v32, v31, 0xc0c0004
	.loc	1 630 34                        ; ragged.py:630:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v128, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v128, v[13:16] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v38, v35, 16, v37
	v_lshl_or_b32 v37, v31, 16, v33
	ds_load_u8 v31, v122 offset:5376
	ds_load_u8 v32, v122 offset:5120
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_perm_b32 v17, v18, v17, 0xc0c0004
	v_perm_b32 v227, v228, v227, 0xc0c0004
	v_perm_b32 v29, v30, v29, 0xc0c0004
	v_perm_b32 v229, v230, v229, 0xc0c0004
	v_perm_b32 v9, v237, v236, 0xc0c0004
	v_lshl_or_b32 v35, v17, 16, v19
	ds_load_u8 v17, v122 offset:7424
	ds_load_u8 v18, v122 offset:7168
	v_lshl_or_b32 v228, v29, 16, v227
	ds_load_u8 v29, v122 offset:3328
	ds_load_u8 v30, v122 offset:3072
	v_perm_b32 v10, v235, v234, 0xc0c0004
	v_perm_b32 v231, v232, v231, 0xc0c0004
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_perm_b32 v21, v22, v21, 0xc0c0004
	v_perm_b32 v131, v133, v131, 0xc0c0004
	v_lshl_or_b32 v234, v10, 16, v9
	v_perm_b32 v9, v238, v233, 0xc0c0004
	v_perm_b32 v10, v28, v27, 0xc0c0004
	v_lshl_or_b32 v229, v229, 16, v231
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v122 offset:5888
	ds_load_u8 v33, v122 offset:5632
	v_lshl_or_b32 v36, v21, 16, v23
	v_lshl_or_b32 v233, v10, 16, v9
	ds_load_u8 v9, v122 offset:1280
	ds_load_u8 v10, v122 offset:1024
	v_perm_b32 v133, v149, v148, 0xc0c0004
	v_perm_b32 v132, v134, v132, 0xc0c0004
	.loc	1 652 25                        ; ragged.py:652:25
	s_mul_i32 s5, s5, s33
	.loc	1 631 31                        ; ragged.py:631:31
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:7936
	ds_load_u8 v19, v122 offset:7680
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v122 offset:3840
	ds_load_u8 v227, v122 offset:3584
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v122 offset:1792
	ds_load_u8 v11, v122 offset:1536
	v_lshl_or_b32 v32, v32, 16, v31
	ds_load_u8 v31, v122 offset:4352
	ds_load_u8 v33, v122 offset:4096
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v30, v227, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v122 offset:2304
	ds_load_u8 v227, v122 offset:2048
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v31, v33, v31, 0xc0c0004
	ds_load_u8 v33, v122 offset:4864
	ds_load_u8 v34, v122 offset:4608
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v122 offset:256
	ds_load_u8 v10, v122
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v227, v29, 0xc0c0004
	ds_load_u8 v227, v122 offset:2816
	ds_load_u8 v230, v122 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v122 offset:6400
	ds_load_u8 v18, v122 offset:6144
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v122 offset:768
	ds_load_u8 v11, v122 offset:512
	v_lshl_or_b32 v31, v33, 16, v31
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v227, v230, v227, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v227, 16, v29
	ds_load_u8 v227, v122 offset:3456
	ds_load_u8 v230, v122 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:6912
	ds_load_u8 v19, v122 offset:6656
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[233:234], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v227, v230, v227, 0xc0c0004
	ds_load_u8 v230, v122 offset:3968
	ds_load_u8 v231, v122 offset:3712
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[228:229], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[37:38], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v122 offset:1408
	ds_load_u8 v18, v122 offset:1152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v238, v230, 16, v227
	ds_load_u8 v227, v122 offset:2432
	ds_load_u8 v230, v122 offset:2176
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 631 31                        ; ragged.py:631:31
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:1920
	ds_load_u8 v19, v122 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v227, v230, v227, 0xc0c0004
	ds_load_u8 v230, v122 offset:2944
	ds_load_u8 v231, v122 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v236, v18, 16, v17
	ds_load_u8 v17, v122 offset:384
	ds_load_u8 v18, v122 offset:128
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v230, v231, v230, 0xc0c0004
	v_lshl_or_b32 v237, v230, 16, v227
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v122 offset:896
	ds_load_u8 v19, v122 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v235, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[235:236], v[233:234], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[237:238], v[228:229], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v227, v122 offset:5504
	ds_load_u8 v228, v122 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v227, v228, v227, 0xc0c0004
	ds_load_u8 v228, v122 offset:6016
	ds_load_u8 v229, v122 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v228, v229, v228, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v240, v228, 16, v227
	ds_load_u8 v227, v122 offset:4480
	ds_load_u8 v228, v122 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v227, v228, v227, 0xc0c0004
	ds_load_u8 v228, v122 offset:4992
	ds_load_u8 v229, v122 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v228, v229, v228, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v239, v228, 16, v227
	v_wmma_i32_16x16x16_iu4 v[17:24], v[239:240], v[37:38], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v37, v122 offset:7552
	ds_load_u8 v38, v122 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v122 offset:8064
	ds_load_u8 v227, v122 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v227, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v122 offset:6528
	ds_load_u8 v227, v122 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v227, v37, 0xc0c0004
	ds_load_u8 v227, v122 offset:7040
	ds_load_u8 v228, v122 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v227, v228, v227, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v227, 16, v37
	v_wmma_i32_16x16x16_iu4 v[17:24], v[37:38], v[35:36], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v35, v154, v151, 0xc0c0004
	v_perm_b32 v36, v147, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v36, v36, 16, v35
	v_perm_b32 v35, v208, v138, 0xc0c0004
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v35, v131, 16, v35
	v_perm_b32 v131, v157, v155, 0xc0c0004
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[227:234], v[27:28], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v148, v133, 16, v131
	v_perm_b32 v131, v141, v139, 0xc0c0004
	v_perm_b32 v139, v164, v162, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v147, v132, 16, v131
	v_perm_b32 v131, v159, v158, 0xc0c0004
	v_perm_b32 v132, v152, v150, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[227:234], v[29:30], v[147:148], v[227:234] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v132, 16, v131
	v_perm_b32 v131, v143, v142, 0xc0c0004
	v_perm_b32 v132, v136, v135, 0xc0c0004
	v_lshl_or_b32 v149, v132, 16, v131
	v_perm_b32 v131, v161, v160, 0xc0c0004
	v_perm_b32 v132, v156, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[227:234], v[31:32], v[149:150], v[227:234] neg_lo:[1,1,0]
	v_lshl_or_b32 v141, v132, 16, v131
	v_perm_b32 v131, v146, v144, 0xc0c0004
	v_perm_b32 v132, v140, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v140, v132, 16, v131
	v_wmma_i32_16x16x16_iu4 v[131:138], v[235:236], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v35, v185, v182, 0xc0c0004
	v_perm_b32 v36, v178, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[227:234], v[33:34], v[140:141], v[227:234] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[131:138], v[237:238], v[147:148], v[131:138] neg_lo:[1,1,0]
	v_perm_b32 v147, v188, v186, 0xc0c0004
	v_perm_b32 v148, v180, v179, 0xc0c0004
	v_lshl_or_b32 v36, v36, 16, v35
	v_perm_b32 v35, v203, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[131:138], v[239:240], v[149:150], v[131:138] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v169, v233
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v156, v148, 16, v147
	v_perm_b32 v147, v172, v170, 0xc0c0004
	v_perm_b32 v148, v165, v163, 0xc0c0004
	v_lshl_or_b32 v35, v139, 16, v35
	v_wmma_i32_16x16x16_iu4 v[131:138], v[37:38], v[140:141], v[131:138] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v170, v234
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v155, v148, 16, v147
	v_perm_b32 v147, v190, v189, 0xc0c0004
	v_perm_b32 v148, v183, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[139:146], v[27:28], v[35:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v172, v136
	v_cvt_f32_i32_e32 v131, v131
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v158, v148, 16, v147
	v_perm_b32 v147, v174, v173, 0xc0c0004
	v_perm_b32 v148, v167, v166, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[139:146], v[29:30], v[155:156], v[139:146] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v157, v148, 16, v147
	v_perm_b32 v147, v192, v191, 0xc0c0004
	v_perm_b32 v148, v187, v184, 0xc0c0004
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v173, v137
	v_cvt_f32_i32_e32 v174, v138
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[139:146], v[31:32], v[157:158], v[139:146] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v160, v148, 16, v147
	v_perm_b32 v147, v177, v175, 0xc0c0004
	v_perm_b32 v148, v171, v168, 0xc0c0004
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v171, v135
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v159, v148, 16, v147
	v_wmma_i32_16x16x16_iu4 v[147:154], v[235:236], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v35, v199, v198, 0xc0c0004
	v_perm_b32 v36, v197, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[139:146], v[33:34], v[159:160], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[147:154], v[237:238], v[155:156], v[147:154] neg_lo:[1,1,0]
	v_perm_b32 v155, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v36, v36, 16, v35
	v_perm_b32 v35, v201, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[147:154], v[239:240], v[157:158], v[147:154] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v175, v139
	v_cvt_f32_i32_e32 v176, v140
	v_cvt_f32_i32_e32 v177, v141
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v35, v155, 16, v35
	v_wmma_i32_16x16x16_iu4 v[147:154], v[37:38], v[159:160], v[147:154] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v178, v142
	v_cvt_f32_i32_e32 v179, v143
	v_cvt_f32_i32_e32 v180, v144
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[155:162], v[27:28], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v27, v210, v209, 0xc0c0004
	v_perm_b32 v28, v207, v206, 0xc0c0004
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v181, v145
	v_cvt_f32_i32_e32 v182, v146
	v_cvt_f32_i32_e32 v187, v151
	v_cvt_f32_i32_e32 v183, v147
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v163, v28, 16, v27
	v_perm_b32 v27, v205, v204, 0xc0c0004
	v_perm_b32 v28, v202, v200, 0xc0c0004
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v184, v148
	v_cvt_f32_i32_e32 v185, v149
	v_cvt_f32_i32_e32 v186, v150
	v_cvt_f32_i32_e32 v188, v152
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v164, v28, 16, v27
	v_perm_b32 v27, v218, v217, 0xc0c0004
	v_perm_b32 v28, v216, v215, 0xc0c0004
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v189, v153
	v_cvt_f32_i32_e32 v190, v154
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[155:162], v[29:30], v[163:164], v[155:162] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v166, v28, 16, v27
	v_perm_b32 v27, v214, v213, 0xc0c0004
	v_perm_b32 v28, v212, v211, 0xc0c0004
	v_lshl_or_b32 v165, v28, 16, v27
	v_perm_b32 v27, v226, v225, 0xc0c0004
	v_perm_b32 v28, v224, v223, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[155:162], v[31:32], v[165:166], v[155:162] neg_lo:[1,1,0]
	v_lshl_or_b32 v167, v28, 16, v27
	v_perm_b32 v27, v222, v221, 0xc0c0004
	v_perm_b32 v28, v220, v219, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v168, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[155:162], v[33:34], v[167:168], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[27:34], v[235:236], v[35:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v35, v227
	v_cvt_f32_i32_e32 v36, v228
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v193, v157
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[27:34], v[237:238], v[163:164], v[27:34] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v191, v155
	v_cvt_f32_i32_e32 v192, v156
	v_cvt_f32_i32_e32 v194, v158
	v_cvt_f32_i32_e32 v195, v159
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[27:34], v[239:240], v[165:166], v[27:34] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v196, v160
	v_cvt_f32_i32_e32 v197, v161
	v_cvt_f32_i32_e32 v198, v162
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[27:34], v[37:38], v[167:168], v[27:34] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v167, v231
	v_cvt_f32_i32_e32 v37, v229
	v_cvt_f32_i32_e32 v38, v230
	v_cvt_f32_i32_e32 v168, v232
	v_cvt_f32_i32_e32 v199, v27
	v_cvt_f32_i32_e32 v200, v28
	.loc	1 644 40                        ; ragged.py:644:40
	v_add_lshl_u32 v27, s12, v111, 1
	v_add_lshl_u32 v28, s12, v112, 1
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v201, v29
	.loc	1 644 40                        ; ragged.py:644:40
	v_add_lshl_u32 v29, s12, v113, 1
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v202, v30
	.loc	1 644 40                        ; ragged.py:644:40
	v_cndmask_b32_e64 v27, 0x80000000, v27, s4
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	v_add_lshl_u32 v30, s12, v114, 1
	v_cndmask_b32_e64 v29, 0x80000000, v29, s2
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v204, v32
	.loc	1 644 40                        ; ragged.py:644:40
	s_clause 0x1
	buffer_load_u16 v27, v27, s[24:27], 0 offen
	buffer_load_u16 v28, v28, s[24:27], 0 offen
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v203, v31
	.loc	1 644 40                        ; ragged.py:644:40
	buffer_load_u16 v29, v29, s[24:27], 0 offen
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v205, v33
	v_cvt_f32_i32_e32 v206, v34
	.loc	1 658 17                        ; ragged.py:658:17
	s_add_i32 s12, s12, 1
	.loc	1 644 40                        ; ragged.py:644:40
	buffer_load_u16 v30, v30, s[24:27], 0 offen
	.loc	1 614 19                        ; ragged.py:614:19
	s_cmp_lg_u32 s12, s34
	.loc	1 644 40                        ; ragged.py:644:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 649 21                        ; ragged.py:649:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v166, v9, v27 :: v_dual_lshlrev_b32 v207, 16, v29
	v_mul_f32_e32 v165, v10, v27
	v_dual_mul_f32 v157, v18, v27 :: v_dual_mul_f32 v136, v167, v28
	.loc	1 651 40                        ; ragged.py:651:40
	v_add_lshl_u32 v167, v108, s5, 1
	.loc	1 649 21                        ; ragged.py:649:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v151, v12, v27 :: v_dual_lshlrev_b32 v208, 16, v30
	v_dual_mul_f32 v164, v11, v27 :: v_dual_mul_f32 v149, v36, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 651 40                        ; ragged.py:651:40
	v_cndmask_b32_e64 v167, 0x80000000, v167, s1
	.loc	1 649 21                        ; ragged.py:649:21
	v_dual_mul_f32 v152, v13, v27 :: v_dual_mul_f32 v135, v38, v28
	v_dual_mul_f32 v153, v14, v27 :: v_dual_mul_f32 v150, v35, v28
	.loc	1 651 40                        ; ragged.py:651:40
	buffer_load_u16 v167, v167, s[28:31], 0 offen
	.loc	1 649 21                        ; ragged.py:649:21
	v_mul_f32_e32 v10, v204, v208
	v_dual_mul_f32 v154, v15, v27 :: v_dual_mul_f32 v137, v168, v28
	v_dual_mul_f32 v155, v16, v27 :: v_dual_mul_f32 v148, v37, v28
	v_dual_mul_f32 v156, v17, v27 :: v_dual_mul_f32 v139, v170, v28
	v_dual_mul_f32 v158, v19, v27 :: v_dual_mul_f32 v141, v132, v28
	v_dual_mul_f32 v159, v20, v27 :: v_dual_mul_f32 v138, v169, v28
	v_dual_mul_f32 v160, v21, v27 :: v_dual_mul_f32 v143, v134, v28
	v_dual_mul_f32 v161, v22, v27 :: v_dual_mul_f32 v140, v131, v28
	v_dual_mul_f32 v162, v23, v27 :: v_dual_mul_f32 v145, v172, v28
	v_dual_mul_f32 v163, v24, v27 :: v_dual_mul_f32 v142, v133, v28
	v_dual_mul_f32 v144, v171, v28 :: v_dual_mul_f32 v133, v176, v207
	v_dual_mul_f32 v146, v173, v28 :: v_dual_mul_f32 v27, v178, v207
	v_dual_mul_f32 v147, v174, v28 :: v_dual_mul_f32 v134, v175, v207
	v_dual_mul_f32 v132, v177, v207 :: v_dual_mul_f32 v23, v192, v208
	v_dual_mul_f32 v28, v179, v207 :: v_dual_mul_f32 v21, v194, v208
	v_dual_mul_f32 v29, v180, v207 :: v_dual_mul_f32 v24, v191, v208
	v_dual_mul_f32 v30, v181, v207 :: v_dual_mul_f32 v19, v196, v208
	v_dual_mul_f32 v31, v182, v207 :: v_dual_mul_f32 v22, v193, v208
	.loc	1 656 21                        ; ragged.py:656:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 21                        ; ragged.py:649:21
	v_dual_mul_f32 v32, v183, v207 :: v_dual_mul_f32 v17, v198, v208
	v_dual_mul_f32 v33, v184, v207 :: v_dual_mul_f32 v20, v195, v208
	v_dual_mul_f32 v34, v185, v207 :: v_dual_mul_f32 v15, v200, v208
	v_dual_mul_f32 v35, v186, v207 :: v_dual_mul_f32 v18, v197, v208
	v_dual_mul_f32 v36, v187, v207 :: v_dual_mul_f32 v13, v202, v208
	v_dual_mul_f32 v37, v188, v207 :: v_dual_mul_f32 v16, v199, v208
	v_dual_mul_f32 v38, v189, v207 :: v_dual_mul_f32 v9, v203, v208
	v_dual_mul_f32 v131, v190, v207 :: v_dual_mul_f32 v14, v201, v208
	.loc	1 651 40                        ; ragged.py:651:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v167, 16, v167
	.loc	1 656 21                        ; ragged.py:656:21
	ds_store_b32 v129, v167
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[167:170], v130
	ds_load_b128 v[171:174], v130 offset:16
	ds_load_b128 v[175:178], v130 offset:512
	ds_load_b128 v[179:182], v130 offset:528
	.loc	1 649 21                        ; ragged.py:649:21
	v_mul_f32_e32 v11, v205, v208
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v12, v206, v208 :: v_dual_fmac_f32 v105, v151, v170
	.loc	1 657 17                        ; ragged.py:657:17
	v_dual_fmac_f32 v81, v166, v167 :: v_dual_fmac_f32 v90, v148, v169
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v107, v165, v168 :: v_dual_fmac_f32 v104, v152, v171
	v_dual_fmac_f32 v106, v164, v169 :: v_dual_fmac_f32 v103, v153, v172
	v_dual_fmac_f32 v102, v154, v173 :: v_dual_fmac_f32 v101, v155, v174
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v100, v156, v175 :: v_dual_fmac_f32 v99, v157, v176
	v_dual_fmac_f32 v98, v158, v177 :: v_dual_fmac_f32 v97, v159, v178
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v96, v160, v179 :: v_dual_fmac_f32 v95, v161, v180
	v_dual_fmac_f32 v94, v162, v181 :: v_dual_fmac_f32 v93, v163, v182
	v_dual_fmac_f32 v92, v150, v167 :: v_dual_fmac_f32 v91, v149, v168
	v_dual_fmac_f32 v86, v136, v171 :: v_dual_fmac_f32 v89, v135, v170
	v_fmac_f32_e32 v82, v137, v172
	v_dual_fmac_f32 v80, v138, v173 :: v_dual_fmac_f32 v79, v139, v174
	v_dual_fmac_f32 v78, v140, v175 :: v_dual_fmac_f32 v77, v141, v176
	v_dual_fmac_f32 v76, v142, v177 :: v_dual_fmac_f32 v75, v143, v178
	v_dual_fmac_f32 v74, v144, v179 :: v_dual_fmac_f32 v73, v145, v180
	v_dual_fmac_f32 v72, v146, v181 :: v_dual_fmac_f32 v71, v147, v182
	v_dual_fmac_f32 v70, v134, v167 :: v_dual_fmac_f32 v69, v133, v168
	v_dual_fmac_f32 v68, v132, v169 :: v_dual_fmac_f32 v67, v27, v170
	v_dual_fmac_f32 v66, v28, v171 :: v_dual_fmac_f32 v65, v29, v172
	v_dual_fmac_f32 v64, v30, v173 :: v_dual_fmac_f32 v63, v31, v174
	v_dual_fmac_f32 v62, v32, v175 :: v_dual_fmac_f32 v61, v33, v176
	v_dual_fmac_f32 v60, v34, v177 :: v_dual_fmac_f32 v59, v35, v178
	v_dual_fmac_f32 v58, v36, v179 :: v_dual_fmac_f32 v57, v37, v180
	v_dual_fmac_f32 v56, v38, v181 :: v_dual_fmac_f32 v55, v131, v182
	v_dual_fmac_f32 v54, v24, v167 :: v_dual_fmac_f32 v53, v23, v168
	v_dual_fmac_f32 v52, v22, v169 :: v_dual_fmac_f32 v51, v21, v170
	v_dual_fmac_f32 v50, v20, v171 :: v_dual_fmac_f32 v49, v19, v172
	v_dual_fmac_f32 v48, v18, v173 :: v_dual_fmac_f32 v47, v17, v174
	v_dual_fmac_f32 v46, v16, v175 :: v_dual_fmac_f32 v45, v15, v176
	v_dual_fmac_f32 v44, v14, v177 :: v_dual_fmac_f32 v43, v13, v178
	v_dual_fmac_f32 v42, v9, v179 :: v_dual_fmac_f32 v41, v10, v180
	v_dual_fmac_f32 v40, v11, v181 :: v_dual_fmac_f32 v39, v12, v182
	.loc	1 614 19                        ; ragged.py:614:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 660 9                         ; ragged.py:660:9
	v_bfe_u32 v7, v81, 16, 1
	v_bfe_u32 v8, v107, 16, 1
	v_cmp_o_f32_e64 s5, v81, v81
	v_cmp_o_f32_e64 s6, v107, v107
	v_bfe_u32 v9, v106, 16, 1
	v_add3_u32 v7, v81, v7, 0x7fff
	v_add3_u32 v8, v107, v8, 0x7fff
	v_bfe_u32 v10, v105, 16, 1
	v_cmp_o_f32_e64 s7, v106, v106
	v_add3_u32 v9, v106, v9, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v104, 16, 1
	v_bfe_u32 v11, v103, 16, 1
	v_add3_u32 v10, v105, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v105, v105
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s7
	v_add3_u32 v8, v104, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v104, v104
	v_add3_u32 v11, v103, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v103, v103
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s5
	v_bfe_u32 v10, v102, 16, 1
	v_bfe_u32 v12, v101, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s7
	v_bfe_u32 v11, v100, 16, 1
	v_add3_u32 v10, v102, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v102, v102
	v_add3_u32 v12, v101, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v101, v101
	v_bfe_u32 v13, v99, 16, 1
	v_add3_u32 v11, v100, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v100, v100
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s6
	v_bfe_u32 v12, v98, 16, 1
	v_bfe_u32 v14, v97, 16, 1
	v_add3_u32 v13, v99, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v99, v99
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s7
	v_add3_u32 v12, v98, v12, 0x7fff
	v_cmp_o_f32_e64 s6, v98, v98
	v_add3_u32 v14, v97, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v97, v97
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v96, 16, 1
	v_bfe_u32 v15, v95, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v94, 16, 1
	v_add3_u32 v13, v96, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v96, v96
	v_add3_u32 v15, v95, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v95, v95
	v_bfe_u32 v16, v93, 16, 1
	v_add3_u32 v14, v94, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v94, v94
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s6
	v_bfe_u32 v15, v92, 16, 1
	v_bfe_u32 v17, v91, 16, 1
	v_add3_u32 v16, v93, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v93, v93
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s7
	v_add3_u32 v15, v92, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v92, v92
	v_add3_u32 v17, v91, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v91, v91
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s5
	v_bfe_u32 v16, v90, 16, 1
	v_bfe_u32 v18, v89, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s6
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s7
	v_bfe_u32 v17, v86, 16, 1
	v_add3_u32 v16, v90, v16, 0x7fff
	v_cmp_o_f32_e64 s5, v90, v90
	v_add3_u32 v18, v89, v18, 0x7fff
	v_cmp_o_f32_e64 s6, v89, v89
	v_bfe_u32 v19, v82, 16, 1
	v_add3_u32 v17, v86, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v86, v86
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s5
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s6
	v_bfe_u32 v18, v80, 16, 1
	v_bfe_u32 v20, v79, 16, 1
	v_add3_u32 v19, v82, v19, 0x7fff
	v_cmp_o_f32_e64 s5, v82, v82
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s7
	v_add3_u32 v18, v80, v18, 0x7fff
	v_cmp_o_f32_e64 s6, v80, v80
	v_add3_u32 v20, v79, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v79, v79
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s5
	v_bfe_u32 v19, v78, 16, 1
	v_bfe_u32 v21, v77, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s7
	v_bfe_u32 v20, v76, 16, 1
	v_add3_u32 v19, v78, v19, 0x7fff
	v_cmp_o_f32_e64 s5, v78, v78
	v_add3_u32 v21, v77, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v77, v77
	v_bfe_u32 v22, v75, 16, 1
	v_add3_u32 v20, v76, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v76, v76
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v74, 16, 1
	v_bfe_u32 v23, v73, 16, 1
	v_add3_u32 v22, v75, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v75, v75
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s7
	v_add3_u32 v21, v74, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v74, v74
	v_add3_u32 v23, v73, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v73, v73
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v72, 16, 1
	v_bfe_u32 v24, v71, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s6
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s7
	v_bfe_u32 v23, v70, 16, 1
	v_add3_u32 v22, v72, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v72, v72
	v_add3_u32 v24, v71, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v71, v71
	v_bfe_u32 v25, v69, 16, 1
	v_add3_u32 v23, v70, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v70, v70
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s5
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s6
	v_bfe_u32 v24, v68, 16, 1
	v_bfe_u32 v26, v67, 16, 1
	v_add3_u32 v25, v69, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v69, v69
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s7
	v_add3_u32 v24, v68, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v68, v68
	v_add3_u32 v26, v67, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v67, v67
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s5
	v_bfe_u32 v25, v66, 16, 1
	v_bfe_u32 v27, v65, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s6
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s7
	v_bfe_u32 v26, v64, 16, 1
	v_add3_u32 v25, v66, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v66, v66
	v_add3_u32 v27, v65, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v65, v65
	v_bfe_u32 v28, v63, 16, 1
	v_add3_u32 v26, v64, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v64, v64
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s5
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s6
	v_bfe_u32 v27, v62, 16, 1
	v_bfe_u32 v29, v61, 16, 1
	v_add3_u32 v28, v63, v28, 0x7fff
	v_cmp_o_f32_e64 s5, v63, v63
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s7
	v_add3_u32 v27, v62, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v62, v62
	v_add3_u32 v29, v61, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v61, v61
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s5
	v_bfe_u32 v28, v60, 16, 1
	v_bfe_u32 v30, v59, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v58, 16, 1
	v_add3_u32 v28, v60, v28, 0x7fff
	v_cmp_o_f32_e64 s5, v60, v60
	v_add3_u32 v30, v59, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v59, v59
	v_bfe_u32 v31, v57, 16, 1
	v_add3_u32 v29, v58, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v58, v58
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s5
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v56, 16, 1
	v_bfe_u32 v32, v55, 16, 1
	v_add3_u32 v31, v57, v31, 0x7fff
	v_cmp_o_f32_e64 s5, v57, v57
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s7
	v_add3_u32 v30, v56, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v56, v56
	v_add3_u32 v32, v55, v32, 0x7fff
	v_cmp_o_f32_e64 s7, v55, v55
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s5
	v_bfe_u32 v31, v54, 16, 1
	v_bfe_u32 v33, v53, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s6
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s7
	v_bfe_u32 v32, v52, 16, 1
	v_add3_u32 v31, v54, v31, 0x7fff
	v_cmp_o_f32_e64 s5, v54, v54
	v_add3_u32 v33, v53, v33, 0x7fff
	v_cmp_o_f32_e64 s6, v53, v53
	v_bfe_u32 v34, v51, 16, 1
	v_add3_u32 v32, v52, v32, 0x7fff
	v_cmp_o_f32_e64 s7, v52, v52
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s5
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s6
	v_bfe_u32 v33, v50, 16, 1
	v_bfe_u32 v35, v49, 16, 1
	v_add3_u32 v34, v51, v34, 0x7fff
	v_cmp_o_f32_e64 s5, v51, v51
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s7
	v_add3_u32 v33, v50, v33, 0x7fff
	v_cmp_o_f32_e64 s6, v50, v50
	v_add3_u32 v35, v49, v35, 0x7fff
	v_cmp_o_f32_e64 s7, v49, v49
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s5
	v_bfe_u32 v34, v48, 16, 1
	v_bfe_u32 v36, v47, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s6
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s7
	v_bfe_u32 v35, v46, 16, 1
	v_add3_u32 v34, v48, v34, 0x7fff
	v_cmp_o_f32_e64 s5, v48, v48
	v_add3_u32 v36, v47, v36, 0x7fff
	v_cmp_o_f32_e64 s6, v47, v47
	v_bfe_u32 v37, v45, 16, 1
	v_add3_u32 v35, v46, v35, 0x7fff
	v_cmp_o_f32_e64 s7, v46, v46
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s5
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s6
	v_bfe_u32 v36, v44, 16, 1
	v_bfe_u32 v38, v43, 16, 1
	v_add3_u32 v37, v45, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v45, v45
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s7
	v_add3_u32 v36, v44, v36, 0x7fff
	v_cmp_o_f32_e64 s6, v44, v44
	v_add3_u32 v38, v43, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v43, v43
	v_bfe_u32 v43, v42, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v41, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s6
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s7
	v_add3_u32 v38, v42, v43, 0x7fff
	v_bfe_u32 v43, v40, 16, 1
	v_cmp_o_f32_e64 s5, v42, v42
	v_bfe_u32 v42, v39, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v37, v41, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v41, v41
	v_add3_u32 v41, v40, v43, 0x7fff
	v_cmp_o_f32_e64 s7, v40, v40
	v_add3_u32 v40, v39, v42, 0x7fff
	v_cmp_o_f32_e64 s8, v39, v39
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s5
	v_cmp_eq_u32_e64 s5, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v41.h, s7
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s6
	v_cndmask_b16 v0.h, 0x7fff, v40.h, s8
	s_mov_b32 s6, 0x76543210
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
	v_cndmask_b32_e64 v43, v18, v16, s5
	v_cndmask_b32_e64 v12, v16, v18, s5
	v_cndmask_b32_e64 v47, v26, v24, s5
	v_cndmask_b32_e64 v16, v24, v26, s5
	v_permlanex16_b32 v24, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x1054, v22, s5
	v_cndmask_b32_e64 v22, 0x3276, v23, s5
	v_permlanex16_b32 v23, v8, s6, 0xfedcba98 op_sel:[1,0]
	.loc	1 563 36                        ; ragged.py:563:36
	v_lshrrev_b32_e32 v2, 1, v84
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v6, v83, s33
	.loc	1 660 9                         ; ragged.py:660:9
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	v_cndmask_b32_e64 v44, v21, v19, s5
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v2, s35, v2
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b32_e64 v13, v19, v21, s5
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_cndmask_b32_e64 v17, v27, v29, s5
	v_cndmask_b32_e64 v18, v28, v30, s5
	v_cndmask_b32_e64 v19, v31, v33, s5
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_cndmask_b32_e64 v20, v32, v34, s5
	v_cndmask_b32_e64 v52, v37, v35, s5
	v_cndmask_b32_e64 v21, v35, v37, s5
	v_cndmask_b32_e64 v53, v0, v36, s5
	v_cndmask_b32_e64 v0, v36, v0, s5
	v_and_b32_e32 v37, 0x5040504, v7
	v_and_b32_e32 v54, 0x7060706, v8
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v3, 0x80, v2
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v5, v85, s33
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v4, v87, s33
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
	v_mul_lo_u32 v1, v88, s33
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 241
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10524
; TotalNumSgprs: 45
; NumVgprs: 241
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 241
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     241
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
