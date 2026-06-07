	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:549:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:549:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
.Ltmp2:
	.loc	1 551 25 is_stmt 1              ; ragged.py:551:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v64, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v78, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v56, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	.loc	1 563 36                        ; ragged.py:563:36
	v_and_b32_e32 v59, 0xf0, v0
	.loc	1 551 25                        ; ragged.py:551:25
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s12, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
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
	s_cvt_f32_u32 s4, s14
	s_sub_i32 s5, 0, s14
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
	v_mov_b32_e32 v77, 0
	.loc	1 563 18                        ; ragged.py:563:18
	s_lshl_b32 s35, s20, 8
	.loc	1 562 18                        ; ragged.py:562:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s14, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s15, 0, s2
	.loc	1 645 25                        ; ragged.py:645:25
	v_add_nc_u32_e32 v58, s14, v1
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
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v60, 16, v58
	.loc	1 645 25 is_stmt 1              ; ragged.py:645:25
	v_add_nc_u32_e32 v61, 32, v58
	v_add_nc_u32_e32 v62, 48, v58
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
	s_load_b64 s[8:9], s[0:1], 0x20
	s_load_b32 s6, s[0:1], 0x50
	s_load_b32 s7, s[0:1], 0x48
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 562 18 is_stmt 1              ; ragged.py:562:18
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v3, 63, v0
	v_dual_mov_b32 v78, 0 :: v_dual_lshlrev_b32 v11, 5, v0
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v82, 0, v1
	v_lshrrev_b32_e32 v9, 1, v0
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v10, 2, v59
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v12, 1, v0
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v11, 32, v11
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v80, s35, v0
	v_or_b32_e32 v4, 0x300, v0
	v_or_b32_e32 v5, 0x3f0, v0
	.loc	1 558 20                        ; ragged.py:558:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s8, s28
	s_addc_u32 s1, s9, s29
	v_or_b32_e32 v6, 0x700, v0
	.loc	1 652 25                        ; ragged.py:652:25
	s_load_b32 s13, s[0:1], 0x0
	.loc	1 562 18                        ; ragged.py:562:18
	v_add_co_u32 v1, s0, s14, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s15, 0, s0
	.loc	1 626 39                        ; ragged.py:626:39
	s_mul_i32 s15, s6, s33
	v_or_b32_e32 v7, 0xb00, v0
	v_or_b32_e32 v8, 0xf00, v0
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e64 s1, s[16:17], v[1:2]
	.loc	1 564 48 is_stmt 0              ; ragged.py:564:48
	v_cmp_gt_i64_e64 s5, s[18:19], v[1:2]
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v1, 0x70, v9
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v2, 28, v12
	v_add3_u32 v12, 0, v10, v11
	v_dual_mov_b32 v76, 0 :: v_dual_lshlrev_b32 v13, 1, v59
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v9, s14, v3
	s_mov_b32 s14, s12
	.loc	1 626 39 is_stmt 1              ; ragged.py:626:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s16, s15, s13
	.loc	1 652 25                        ; ragged.py:652:25
	s_mul_i32 s9, s34, s13
	v_mad_u64_u32 v[10:11], null, v80, s6, s[16:17]
	s_mov_b32 s13, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v84, 0, v4
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v85, 0, v5
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v86, 0, v6
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v87, 0, v7
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v88, 0, v8
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v89, v82, v1
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v90, v12, v2
	v_mov_b32_e32 v1, s12
	.loc	1 611 28                        ; ragged.py:611:28
	v_lshrrev_b32_e32 v81, 6, v0
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s0, s33, v80
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v83, 0, v0
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v91, 0, v13
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v8, s19
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v3, s14
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v7, s18
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	s_mov_b32 s28, s26
	.loc	1 564 20                        ; ragged.py:564:20
	s_and_b32 s8, s1, s5
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s29, s27, 0xffff
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
	.loc	1 611 28                        ; ragged.py:611:28
	v_or_b32_e32 v92, 4, v81
	v_or_b32_e32 v93, 8, v81
	.loc	1 616 28                        ; ragged.py:616:28
	s_lshl_b32 s1, s12, 4
	.loc	1 611 28                        ; ragged.py:611:28
	v_or_b32_e32 v94, 12, v81
	v_or_b32_e32 v95, s1, v81
	s_cmp_lt_i32 s1, s6
	v_add_nc_u32_e32 v98, s1, v10
	v_or_b32_e32 v92, s1, v92
	s_cselect_b32 s5, -1, 0
	v_or_b32_e32 v93, s1, v93
	v_or_b32_e32 v94, s1, v94
	s_and_b32 s1, s0, s5
	v_mad_u64_u32 v[96:97], null, v95, s7, v[9:10]
	v_cmp_gt_i32_e64 s5, s6, v95
	v_cndmask_b32_e64 v95, 0x80000000, v98, s1
	v_mad_u64_u32 v[97:98], null, v92, s7, v[9:10]
	v_mad_u64_u32 v[98:99], null, v93, s7, v[9:10]
	v_mad_u64_u32 v[99:100], null, v94, s7, v[9:10]
	s_and_b32 s1, s8, s5
	.loc	1 630 34                        ; ragged.py:630:34
	buffer_load_b128 v[92:95], v95, s[20:23], 0 offen
	v_cndmask_b32_e64 v96, 0x80000000, v96, s1
	v_cndmask_b32_e64 v97, 0x80000000, v97, s1
	v_cndmask_b32_e64 v98, 0x80000000, v98, s1
	v_cndmask_b32_e64 v99, 0x80000000, v99, s1
	.loc	1 629 34                        ; ragged.py:629:34
	s_clause 0x3
	buffer_load_u8 v96, v96, s[36:39], 0 offen
	buffer_load_u8 v97, v97, s[36:39], 0 offen
	buffer_load_u8 v98, v98, s[36:39], 0 offen
	buffer_load_u8 v99, v99, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 652 25                        ; ragged.py:652:25
	s_add_i32 s1, s12, s9
	.loc	1 629 34                        ; ragged.py:629:34
	s_waitcnt vmcnt(3)
	ds_store_b8 v83, v96
	s_waitcnt vmcnt(2)
	ds_store_b8 v83, v97 offset:256
	s_waitcnt vmcnt(1)
	ds_store_b8 v83, v98 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v84, v99
	.loc	1 630 34                        ; ragged.py:630:34
	v_lshrrev_b32_e32 v100, 8, v92
	v_lshrrev_b32_e32 v101, 8, v93
	v_lshrrev_b32_e32 v102, 8, v94
	v_lshrrev_b32_e32 v103, 8, v95
	.loc	1 629 34                        ; ragged.py:629:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 631 31                        ; ragged.py:631:31
	ds_load_u8 v96, v82 offset:192
	ds_load_u8 v97, v82 offset:128
	ds_load_u8 v98, v82 offset:208
	ds_load_u8 v99, v82 offset:144
	ds_load_u8 v104, v82 offset:224
	ds_load_u8 v105, v82 offset:160
	ds_load_u8 v106, v82 offset:240
	ds_load_u8 v107, v82 offset:176
	ds_load_u8 v108, v82 offset:448
	ds_load_u8 v109, v82 offset:384
	ds_load_u8 v110, v82 offset:464
	ds_load_u8 v111, v82 offset:400
	ds_load_u8 v112, v82 offset:480
	ds_load_u8 v113, v82 offset:416
	ds_load_u8 v114, v82 offset:496
	ds_load_u8 v115, v82 offset:432
	ds_load_u8 v116, v82 offset:320
	ds_load_u8 v117, v82 offset:256
	ds_load_u8 v118, v82 offset:336
	ds_load_u8 v119, v82 offset:272
	ds_load_u8 v120, v82 offset:352
	ds_load_u8 v121, v82 offset:288
	ds_load_u8 v122, v82 offset:368
	ds_load_u8 v123, v82 offset:304
	ds_load_u8 v124, v82 offset:64
	ds_load_u8 v125, v82 offset:80
	ds_load_u8 v126, v82 offset:96
	ds_load_u8 v127, v82 offset:112
	ds_load_u8 v128, v82
	ds_load_u8 v129, v82 offset:16
	ds_load_u8 v130, v82 offset:32
	ds_load_u8 v131, v82 offset:48
	ds_load_u8 v132, v82 offset:960
	ds_load_u8 v133, v82 offset:896
	ds_load_u8 v134, v82 offset:976
	ds_load_u8 v135, v82 offset:912
	ds_load_u8 v136, v82 offset:992
	ds_load_u8 v137, v82 offset:928
	ds_load_u8 v138, v85
	ds_load_u8 v139, v82 offset:944
	ds_load_u8 v140, v82 offset:832
	ds_load_u8 v141, v82 offset:768
	ds_load_u8 v142, v82 offset:848
	ds_load_u8 v143, v82 offset:784
	ds_load_u8 v144, v82 offset:864
	ds_load_u8 v145, v82 offset:800
	ds_load_u8 v146, v82 offset:880
	ds_load_u8 v147, v82 offset:816
	ds_load_u8 v148, v82 offset:704
	ds_load_u8 v149, v82 offset:640
	ds_load_u8 v150, v82 offset:720
	ds_load_u8 v151, v82 offset:656
	ds_load_u8 v152, v82 offset:736
	ds_load_u8 v153, v82 offset:672
	ds_load_u8 v154, v82 offset:752
	ds_load_u8 v155, v82 offset:688
	ds_load_u8 v156, v82 offset:576
	ds_load_u8 v157, v82 offset:512
	ds_load_u8 v158, v82 offset:592
	ds_load_u8 v159, v82 offset:528
	ds_load_u8 v160, v82 offset:608
	ds_load_u8 v161, v82 offset:544
	ds_load_u8 v162, v82 offset:624
	ds_load_u8 v163, v82 offset:560
	.loc	1 630 34                        ; ragged.py:630:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v83, v92
	ds_store_b8_d16_hi v83, v92 offset:512
	ds_store_b8 v83, v93 offset:1024
	ds_store_b8_d16_hi v83, v93 offset:1536
	ds_store_b8 v83, v94 offset:2048
	ds_store_b8_d16_hi v83, v94 offset:2560
	ds_store_b8 v83, v95 offset:3072
	v_lshrrev_b32_e32 v92, 24, v92
	ds_store_b8_d16_hi v83, v95 offset:3584
	v_lshrrev_b32_e32 v93, 24, v93
	v_lshrrev_b32_e32 v94, 24, v94
	v_lshrrev_b32_e32 v95, 24, v95
	ds_store_b8 v83, v100 offset:256
	ds_store_b8 v83, v101 offset:1280
	ds_store_b8 v83, v102 offset:2304
	ds_store_b8 v83, v103 offset:3328
	ds_store_b8 v84, v92
	ds_store_b8 v86, v93
	ds_store_b8 v87, v94
	ds_store_b8 v88, v95
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 631 31                        ; ragged.py:631:31
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v89 offset:1408
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v89 offset:3328
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v89 offset:3072
	ds_load_u8 v92, v89 offset:1280
	ds_load_u8 v93, v89 offset:1024
	ds_load_u8 v94, v89 offset:1792
	ds_load_u8 v95, v89 offset:1536
	ds_load_u8 v100, v89 offset:256
	ds_load_u8 v101, v89
	ds_load_u8 v102, v89 offset:1920
	ds_load_u8 v103, v89 offset:1664
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v89 offset:1152
	v_perm_b32 v124, v128, v124, 0xc0c0004
	ds_load_u8 v128, v89 offset:896
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v89 offset:640
	v_perm_b32 v157, v157, v156, 0xc0c0004
	ds_load_u8 v156, v89 offset:3968
	v_perm_b32 v148, v149, v148, 0xc0c0004
	v_perm_b32 v125, v129, v125, 0xc0c0004
	v_perm_b32 v98, v99, v98, 0xc0c0004
	v_perm_b32 v99, v143, v142, 0xc0c0004
	v_perm_b32 v142, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v89 offset:384
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v89 offset:128
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_perm_b32 v133, v133, v141, 0xc0c0004
	ds_load_u8 v141, v89 offset:3840
	ds_load_u8 v166, v89 offset:3584
	ds_load_u8 v101, v89 offset:768
	ds_load_u8 v164, v89 offset:512
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v117, v109, v117, 0xc0c0004
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_perm_b32 v143, v113, v112, 0xc0c0004
	v_perm_b32 v126, v130, v126, 0xc0c0004
	v_perm_b32 v104, v105, v104, 0xc0c0004
	v_perm_b32 v105, v145, v144, 0xc0c0004
	v_perm_b32 v130, v137, v136, 0xc0c0004
	v_perm_b32 v136, v161, v160, 0xc0c0004
	v_perm_b32 v137, v153, v152, 0xc0c0004
	v_lshl_or_b32 v109, v108, 16, v116
	v_lshl_or_b32 v108, v96, 16, v124
	v_lshl_or_b32 v117, v102, 16, v117
	v_lshl_or_b32 v120, v98, 16, v125
	v_lshl_or_b32 v125, v143, 16, v142
	v_lshl_or_b32 v124, v104, 16, v126
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v93, v95, v93, 0xc0c0004
	v_perm_b32 v95, v97, v128, 0xc0c0004
	v_perm_b32 v129, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v141, v166, v141, 0xc0c0004
	ds_load_u8 v166, v89 offset:2304
	ds_load_u8 v167, v89 offset:2048
	ds_load_u8 v168, v89 offset:2944
	ds_load_u8 v169, v89 offset:2688
	ds_load_u8 v170, v89 offset:2432
	ds_load_u8 v171, v89 offset:2176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v101, v164, v101, 0xc0c0004
	ds_load_u8 v149, v89 offset:3712
	ds_load_u8 v164, v89 offset:3456
	ds_load_u8 v165, v89 offset:3200
	v_lshl_or_b32 v116, v95, 16, v93
	v_perm_b32 v134, v159, v158, 0xc0c0004
	v_perm_b32 v135, v151, v150, 0xc0c0004
	v_perm_b32 v144, v123, v122, 0xc0c0004
	v_perm_b32 v145, v115, v114, 0xc0c0004
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_perm_b32 v107, v163, v162, 0xc0c0004
	v_perm_b32 v146, v147, v146, 0xc0c0004
	v_perm_b32 v138, v139, v138, 0xc0c0004
	v_lshl_or_b32 v112, v148, 16, v157
	v_lshl_or_b32 v151, v130, 16, v105
	v_lshl_or_b32 v150, v137, 16, v136
	v_perm_b32 v127, v131, v127, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v89 offset:2816
	ds_load_u8 v172, v89 offset:2560
	v_perm_b32 v131, v155, v154, 0xc0c0004
	v_lshl_or_b32 v115, v141, 16, v133
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v103, v149, v156, 0xc0c0004
	v_perm_b32 v128, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v97, v165, v164, 0xc0c0004
	v_perm_b32 v149, v169, v168, 0xc0c0004
	v_perm_b32 v164, v119, v118, 0xc0c0004
	v_perm_b32 v165, v111, v110, 0xc0c0004
	v_lshl_or_b32 v111, v94, 16, v92
	v_lshl_or_b32 v110, v101, 16, v100
	v_lshl_or_b32 v119, v103, 16, v97
	v_lshl_or_b32 v118, v149, 16, v128
	v_lshl_or_b32 v121, v165, 16, v164
	v_wmma_i32_16x16x16_iu4 v[157:164], v[116:117], v[124:125], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v153, v145, 16, v144
	v_lshl_or_b32 v155, v138, 16, v146
	v_wmma_i32_16x16x16_iu4 v[142:149], v[110:111], v[124:125], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v172, v167, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[157:164], v[118:119], v[150:151], v[157:164] neg_lo:[1,1,0]
	v_lshl_or_b32 v152, v106, 16, v127
	.loc	1 645 25                        ; ragged.py:645:25
	v_mul_lo_u32 v156, v58, s34
	.loc	1 652 25                        ; ragged.py:652:25
	s_mul_i32 s1, s1, s33
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v114, v167, 16, v166
	v_lshl_or_b32 v154, v131, 16, v107
	v_wmma_i32_16x16x16_iu4 v[165:172], v[110:111], v[152:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[116:117], v[152:153], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[114:115], v[150:151], v[142:149] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v150, v157
	.loc	1 645 25                        ; ragged.py:645:25
	v_mul_lo_u32 v157, v60, s34
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v151, v158
	.loc	1 645 25                        ; ragged.py:645:25
	v_mul_lo_u32 v158, v61, s34
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v152, v159
	.loc	1 645 25                        ; ragged.py:645:25
	v_mul_lo_u32 v159, v62, s34
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v153, v160
	.loc	1 651 40                        ; ragged.py:651:40
	v_add_lshl_u32 v160, v80, s1, 1
	.loc	1 644 40                        ; ragged.py:644:40
	v_add_lshl_u32 v156, s12, v156, 1
	v_add_lshl_u32 v157, s12, v157, 1
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[165:172], v[114:115], v[154:155], v[165:172] neg_lo:[1,1,0]
	.loc	1 644 40                        ; ragged.py:644:40
	v_add_lshl_u32 v158, s12, v158, 1
	.loc	1 651 40                        ; ragged.py:651:40
	v_cndmask_b32_e64 v160, 0x80000000, v160, s0
	.loc	1 644 40                        ; ragged.py:644:40
	v_add_lshl_u32 v159, s12, v159, 1
	v_cndmask_b32_e64 v156, 0x80000000, v156, s4
	v_cndmask_b32_e64 v157, 0x80000000, v157, s3
	v_cndmask_b32_e64 v158, 0x80000000, v158, s2
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[173:180], v[118:119], v[154:155], v[173:180] neg_lo:[1,1,0]
	.loc	1 644 40                        ; ragged.py:644:40
	v_cndmask_b32_e32 v159, 0x80000000, v159, vcc_lo
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v154, v161
	.loc	1 651 40                        ; ragged.py:651:40
	buffer_load_u16 v160, v160, s[28:31], 0 offen
	.loc	1 644 40                        ; ragged.py:644:40
	s_clause 0x3
	buffer_load_u16 v161, v156, s[24:27], 0 offen
	buffer_load_u16 v157, v157, s[24:27], 0 offen
	buffer_load_u16 v158, v158, s[24:27], 0 offen
	buffer_load_u16 v156, v159, s[24:27], 0 offen
	.loc	1 631 31                        ; ragged.py:631:31
	v_lshl_or_b32 v113, v132, 16, v140
	v_lshl_or_b32 v123, v129, 16, v99
	v_lshl_or_b32 v122, v135, 16, v134
	v_wmma_i32_16x16x16_iu4 v[92:99], v[110:111], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[110:111], v[120:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[116:117], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[116:117], v[120:121], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[92:99], v[114:115], v[112:113], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[126:133], v[114:115], v[122:123], v[126:133] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[100:107], v[118:119], v[112:113], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[118:119], v[122:123], v[134:141] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v112, v94
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v110, v92
	v_cvt_f32_i32_e32 v111, v93
	v_cvt_f32_i32_e32 v113, v95
	v_cvt_f32_i32_e32 v114, v96
	v_cvt_f32_i32_e32 v115, v97
	v_cvt_f32_i32_e32 v116, v98
	v_cvt_f32_i32_e32 v117, v99
	v_cvt_f32_i32_e32 v118, v100
	v_cvt_f32_i32_e32 v119, v101
	v_cvt_f32_i32_e32 v120, v102
	v_cvt_f32_i32_e32 v121, v103
	v_cvt_f32_i32_e32 v122, v104
	v_cvt_f32_i32_e32 v123, v105
	v_cvt_f32_i32_e32 v124, v106
	v_cvt_f32_i32_e32 v125, v107
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v155, v162
	v_cvt_f32_i32_e32 v108, v163
	v_cvt_f32_i32_e32 v109, v164
	v_cvt_f32_i32_e32 v104, v165
	v_cvt_f32_i32_e32 v105, v166
	v_cvt_f32_i32_e32 v106, v167
	v_cvt_f32_i32_e32 v107, v168
	v_cvt_f32_i32_e32 v103, v169
	v_cvt_f32_i32_e32 v92, v170
	v_cvt_f32_i32_e32 v93, v171
	v_cvt_f32_i32_e32 v94, v172
	v_cvt_f32_i32_e32 v95, v173
	v_cvt_f32_i32_e32 v96, v174
	v_cvt_f32_i32_e32 v97, v175
	v_cvt_f32_i32_e32 v98, v176
	v_cvt_f32_i32_e32 v99, v177
	v_cvt_f32_i32_e32 v100, v178
	v_cvt_f32_i32_e32 v101, v179
	v_cvt_f32_i32_e32 v102, v180
	.loc	1 656 21                        ; ragged.py:656:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 658 17                        ; ragged.py:658:17
	s_add_i32 s12, s12, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 614 19                        ; ragged.py:614:19
	s_cmp_lg_u32 s12, s34
	.loc	1 644 40                        ; ragged.py:644:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 651 40                        ; ragged.py:651:40
	v_lshlrev_b32_e32 v159, 16, v160
	.loc	1 644 40                        ; ragged.py:644:40
	v_lshlrev_b32_e32 v160, 16, v161
	.loc	1 649 21                        ; ragged.py:649:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v161, v111, v160 :: v_dual_lshlrev_b32 v158, 16, v158
	v_mul_f32_e32 v162, v112, v160
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v127, v127, v157 :: v_dual_lshlrev_b32 v156, 16, v156
	v_dual_mul_f32 v163, v113, v160 :: v_dual_mul_f32 v128, v128, v157
	v_dual_mul_f32 v114, v114, v160 :: v_dual_mul_f32 v129, v129, v157
	v_dual_mul_f32 v115, v115, v160 :: v_dual_mul_f32 v130, v130, v157
	v_dual_mul_f32 v116, v116, v160 :: v_dual_mul_f32 v131, v131, v157
	v_dual_mul_f32 v117, v117, v160 :: v_dual_mul_f32 v132, v132, v157
	v_dual_mul_f32 v118, v118, v160 :: v_dual_mul_f32 v133, v133, v157
	v_dual_mul_f32 v119, v119, v160 :: v_dual_mul_f32 v134, v134, v157
	v_dual_mul_f32 v120, v120, v160 :: v_dual_mul_f32 v135, v135, v157
	v_dual_mul_f32 v121, v121, v160 :: v_dual_mul_f32 v136, v136, v157
	v_dual_mul_f32 v122, v122, v160 :: v_dual_mul_f32 v137, v137, v157
	v_dual_mul_f32 v123, v123, v160 :: v_dual_mul_f32 v138, v138, v157
	v_dual_mul_f32 v124, v124, v160 :: v_dual_mul_f32 v139, v139, v157
	v_dual_mul_f32 v125, v125, v160 :: v_dual_mul_f32 v140, v140, v157
	v_mul_f32_e32 v126, v126, v157
	.loc	1 656 21                        ; ragged.py:656:21
	ds_store_b32 v90, v159
	.loc	1 649 21                        ; ragged.py:649:21
	v_mul_f32_e32 v159, v110, v160
	v_dual_mul_f32 v141, v141, v157 :: v_dual_mul_f32 v142, v142, v158
	v_dual_mul_f32 v143, v143, v158 :: v_dual_mul_f32 v104, v104, v156
	v_dual_mul_f32 v144, v144, v158 :: v_dual_mul_f32 v105, v105, v156
	v_dual_mul_f32 v145, v145, v158 :: v_dual_mul_f32 v106, v106, v156
	v_dual_mul_f32 v146, v146, v158 :: v_dual_mul_f32 v107, v107, v156
	v_mul_f32_e32 v147, v147, v158
	v_dual_mul_f32 v148, v148, v158 :: v_dual_mul_f32 v157, v103, v156
	v_dual_mul_f32 v149, v149, v158 :: v_dual_mul_f32 v164, v94, v156
	v_dual_mul_f32 v150, v150, v158 :: v_dual_mul_f32 v165, v95, v156
	v_dual_mul_f32 v151, v151, v158 :: v_dual_mul_f32 v160, v93, v156
	v_dual_mul_f32 v152, v152, v158 :: v_dual_mul_f32 v167, v97, v156
	v_dual_mul_f32 v153, v153, v158 :: v_dual_mul_f32 v166, v96, v156
	v_dual_mul_f32 v154, v154, v158 :: v_dual_mul_f32 v169, v99, v156
	v_dual_mul_f32 v155, v155, v158 :: v_dual_mul_f32 v168, v98, v156
	.loc	1 656 21                        ; ragged.py:656:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[110:113], v91
	.loc	1 649 21                        ; ragged.py:649:21
	v_dual_mul_f32 v108, v108, v158 :: v_dual_mul_f32 v171, v101, v156
	v_dual_mul_f32 v109, v109, v158 :: v_dual_mul_f32 v170, v100, v156
	v_mul_f32_e32 v158, v92, v156
	.loc	1 656 21                        ; ragged.py:656:21
	ds_load_b128 v[92:95], v91 offset:16
	.loc	1 649 21                        ; ragged.py:649:21
	v_mul_f32_e32 v156, v102, v156
	.loc	1 656 21                        ; ragged.py:656:21
	ds_load_b128 v[96:99], v91 offset:512
	ds_load_b128 v[100:103], v91 offset:528
	.loc	1 657 17                        ; ragged.py:657:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v56, v159, v110 :: v_dual_fmac_f32 v57, v128, v112
	v_dual_fmac_f32 v79, v161, v111 :: v_dual_fmac_f32 v78, v162, v112
	v_dual_fmac_f32 v77, v163, v113 :: v_dual_fmac_f32 v64, v126, v110
	v_fmac_f32_e32 v63, v127, v111
	v_dual_fmac_f32 v55, v129, v113 :: v_dual_fmac_f32 v42, v142, v110
	v_dual_fmac_f32 v41, v143, v111 :: v_dual_fmac_f32 v40, v144, v112
	v_dual_fmac_f32 v39, v145, v113 :: v_dual_fmac_f32 v26, v104, v110
	v_dual_fmac_f32 v25, v105, v111 :: v_dual_fmac_f32 v24, v106, v112
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v23, v107, v113 :: v_dual_fmac_f32 v76, v114, v92
	v_dual_fmac_f32 v75, v115, v93 :: v_dual_fmac_f32 v74, v116, v94
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v73, v117, v95 :: v_dual_fmac_f32 v72, v118, v96
	v_dual_fmac_f32 v71, v119, v97 :: v_dual_fmac_f32 v70, v120, v98
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v69, v121, v99 :: v_dual_fmac_f32 v68, v122, v100
	v_dual_fmac_f32 v67, v123, v101 :: v_dual_fmac_f32 v66, v124, v102
	v_dual_fmac_f32 v65, v125, v103 :: v_dual_fmac_f32 v54, v130, v92
	v_dual_fmac_f32 v53, v131, v93 :: v_dual_fmac_f32 v52, v132, v94
	v_dual_fmac_f32 v51, v133, v95 :: v_dual_fmac_f32 v50, v134, v96
	v_dual_fmac_f32 v49, v135, v97 :: v_dual_fmac_f32 v48, v136, v98
	v_dual_fmac_f32 v47, v137, v99 :: v_dual_fmac_f32 v46, v138, v100
	v_dual_fmac_f32 v45, v139, v101 :: v_dual_fmac_f32 v44, v140, v102
	v_dual_fmac_f32 v43, v141, v103 :: v_dual_fmac_f32 v38, v146, v92
	v_dual_fmac_f32 v37, v147, v93 :: v_dual_fmac_f32 v36, v148, v94
	v_dual_fmac_f32 v35, v149, v95 :: v_dual_fmac_f32 v34, v150, v96
	v_dual_fmac_f32 v33, v151, v97 :: v_dual_fmac_f32 v32, v152, v98
	v_dual_fmac_f32 v31, v153, v99 :: v_dual_fmac_f32 v30, v154, v100
	v_dual_fmac_f32 v29, v155, v101 :: v_dual_fmac_f32 v28, v108, v102
	v_dual_fmac_f32 v27, v109, v103 :: v_dual_fmac_f32 v20, v160, v94
	v_dual_fmac_f32 v22, v157, v92 :: v_dual_fmac_f32 v21, v158, v93
	v_dual_fmac_f32 v19, v164, v95 :: v_dual_fmac_f32 v18, v165, v96
	v_dual_fmac_f32 v17, v166, v97 :: v_dual_fmac_f32 v16, v167, v98
	v_dual_fmac_f32 v15, v168, v99 :: v_dual_fmac_f32 v14, v169, v100
	v_dual_fmac_f32 v13, v170, v101 :: v_dual_fmac_f32 v12, v171, v102
	v_fmac_f32_e32 v11, v156, v103
	.loc	1 614 19                        ; ragged.py:614:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 660 9                         ; ragged.py:660:9
	v_bfe_u32 v7, v56, 16, 1
	v_bfe_u32 v8, v79, 16, 1
	v_cmp_o_f32_e64 s5, v56, v56
	v_cmp_o_f32_e64 s6, v79, v79
	v_bfe_u32 v9, v78, 16, 1
	v_add3_u32 v7, v56, v7, 0x7fff
	v_add3_u32 v8, v79, v8, 0x7fff
	v_bfe_u32 v10, v77, 16, 1
	v_cmp_o_f32_e64 s7, v78, v78
	v_add3_u32 v9, v78, v9, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v76, 16, 1
	v_bfe_u32 v56, v75, 16, 1
	v_add3_u32 v10, v77, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v77, v77
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v6, v58, s33
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s7
	v_add3_u32 v8, v76, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v76, v76
	v_add3_u32 v56, v75, v56, 0x7fff
	v_cmp_o_f32_e64 s7, v75, v75
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s5
	v_bfe_u32 v10, v74, 16, 1
	v_bfe_u32 v58, v73, 16, 1
	.loc	1 563 36                        ; ragged.py:563:36
	v_lshrrev_b32_e32 v2, 1, v59
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v56.h, s7
	v_bfe_u32 v56, v72, 16, 1
	v_add3_u32 v10, v74, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v74, v74
	v_add3_u32 v58, v73, v58, 0x7fff
	v_cmp_o_f32_e64 s6, v73, v73
	v_bfe_u32 v59, v71, 16, 1
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v5, v60, s33
	.loc	1 660 9                         ; ragged.py:660:9
	v_add3_u32 v56, v72, v56, 0x7fff
	v_cmp_o_f32_e64 s7, v72, v72
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v58.h, s6
	v_bfe_u32 v58, v70, 16, 1
	v_bfe_u32 v60, v69, 16, 1
	v_add3_u32 v59, v71, v59, 0x7fff
	v_cmp_o_f32_e64 s5, v71, v71
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v4, v61, s33
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s7
	v_add3_u32 v58, v70, v58, 0x7fff
	v_cmp_o_f32_e64 s6, v70, v70
	v_add3_u32 v60, v69, v60, 0x7fff
	v_cmp_o_f32_e64 s7, v69, v69
	v_cndmask_b16 v56.h, 0x7fff, v59.h, s5
	v_bfe_u32 v59, v68, 16, 1
	v_bfe_u32 v61, v67, 16, 1
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v1, v62, s33
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s6
	v_cndmask_b16 v58.h, 0x7fff, v60.h, s7
	v_bfe_u32 v60, v66, 16, 1
	v_add3_u32 v59, v68, v59, 0x7fff
	v_cmp_o_f32_e64 s5, v68, v68
	v_add3_u32 v61, v67, v61, 0x7fff
	v_cmp_o_f32_e64 s6, v67, v67
	v_bfe_u32 v62, v65, 16, 1
	v_add3_u32 v60, v66, v60, 0x7fff
	v_cmp_o_f32_e64 s7, v66, v66
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s5
	v_cndmask_b16 v59.h, 0x7fff, v61.h, s6
	v_bfe_u32 v61, v64, 16, 1
	v_bfe_u32 v66, v63, 16, 1
	v_add3_u32 v62, v65, v62, 0x7fff
	v_cmp_o_f32_e64 s5, v65, v65
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s7
	v_add3_u32 v61, v64, v61, 0x7fff
	v_cmp_o_f32_e64 s6, v64, v64
	v_add3_u32 v64, v63, v66, 0x7fff
	v_cmp_o_f32_e64 s7, v63, v63
	v_cndmask_b16 v60.h, 0x7fff, v62.h, s5
	v_bfe_u32 v62, v57, 16, 1
	v_bfe_u32 v63, v55, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v61.h, s6
	v_cndmask_b16 v61.h, 0x7fff, v64.h, s7
	v_bfe_u32 v64, v54, 16, 1
	v_add3_u32 v62, v57, v62, 0x7fff
	v_cmp_o_f32_e64 s5, v57, v57
	v_add3_u32 v57, v55, v63, 0x7fff
	v_cmp_o_f32_e64 s6, v55, v55
	v_add3_u32 v55, v54, v64, 0x7fff
	v_cmp_o_f32_e64 s7, v54, v54
	v_cndmask_b16 v54.l, 0x7fff, v62.h, s5
	v_bfe_u32 v62, v53, 16, 1
	v_cndmask_b16 v54.h, 0x7fff, v57.h, s6
	v_bfe_u32 v57, v52, 16, 1
	v_bfe_u32 v63, v51, 16, 1
	v_cmp_o_f32_e64 s5, v53, v53
	v_add3_u32 v62, v53, v62, 0x7fff
	v_cmp_o_f32_e64 s6, v52, v52
	v_add3_u32 v53, v52, v57, 0x7fff
	v_add3_u32 v52, v51, v63, 0x7fff
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s7
	v_cmp_o_f32_e64 s7, v51, v51
	v_bfe_u32 v51, v50, 16, 1
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s6
	v_bfe_u32 v53, v49, 16, 1
	v_cndmask_b16 v55.h, 0x7fff, v62.h, s5
	v_bfe_u32 v57, v48, 16, 1
	v_add3_u32 v51, v50, v51, 0x7fff
	v_cmp_o_f32_e64 s5, v50, v50
	v_add3_u32 v50, v49, v53, 0x7fff
	v_cmp_o_f32_e64 s6, v49, v49
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s7
	v_add3_u32 v49, v48, v57, 0x7fff
	v_cmp_o_f32_e64 s7, v48, v48
	v_cndmask_b16 v48.l, 0x7fff, v51.h, s5
	v_bfe_u32 v51, v47, 16, 1
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s6
	v_bfe_u32 v50, v46, 16, 1
	v_bfe_u32 v53, v45, 16, 1
	v_cmp_o_f32_e64 s5, v47, v47
	v_add3_u32 v51, v47, v51, 0x7fff
	v_cmp_o_f32_e64 s6, v46, v46
	v_add3_u32 v47, v46, v50, 0x7fff
	v_add3_u32 v46, v45, v53, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s7
	v_cmp_o_f32_e64 s7, v45, v45
	v_bfe_u32 v45, v44, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s6
	v_bfe_u32 v47, v43, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s5
	v_bfe_u32 v50, v42, 16, 1
	v_add3_u32 v45, v44, v45, 0x7fff
	v_cmp_o_f32_e64 s5, v44, v44
	v_add3_u32 v44, v43, v47, 0x7fff
	v_cmp_o_f32_e64 s6, v43, v43
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s7
	v_add3_u32 v43, v42, v50, 0x7fff
	v_cmp_o_f32_e64 s7, v42, v42
	v_cndmask_b16 v42.l, 0x7fff, v45.h, s5
	v_bfe_u32 v45, v41, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s6
	v_bfe_u32 v44, v40, 16, 1
	v_bfe_u32 v47, v39, 16, 1
	v_cmp_o_f32_e64 s5, v41, v41
	v_add3_u32 v45, v41, v45, 0x7fff
	v_cmp_o_f32_e64 s6, v40, v40
	v_add3_u32 v41, v40, v44, 0x7fff
	v_add3_u32 v40, v39, v47, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s7
	v_cmp_o_f32_e64 s7, v39, v39
	v_bfe_u32 v39, v38, 16, 1
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s6
	v_bfe_u32 v41, v37, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s5
	v_bfe_u32 v44, v36, 16, 1
	v_add3_u32 v39, v38, v39, 0x7fff
	v_cmp_o_f32_e64 s5, v38, v38
	v_add3_u32 v38, v37, v41, 0x7fff
	v_cmp_o_f32_e64 s6, v37, v37
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s7
	v_add3_u32 v37, v36, v44, 0x7fff
	v_cmp_o_f32_e64 s7, v36, v36
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s5
	v_bfe_u32 v39, v35, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s6
	v_bfe_u32 v38, v34, 16, 1
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e64 s5, v35, v35
	v_add3_u32 v39, v35, v39, 0x7fff
	v_cmp_o_f32_e64 s6, v34, v34
	v_add3_u32 v35, v34, v38, 0x7fff
	v_add3_u32 v34, v33, v41, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s7
	v_cmp_o_f32_e64 s7, v33, v33
	v_bfe_u32 v33, v32, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s6
	v_bfe_u32 v35, v31, 16, 1
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s5
	v_bfe_u32 v38, v30, 16, 1
	v_add3_u32 v33, v32, v33, 0x7fff
	v_cmp_o_f32_e64 s5, v32, v32
	v_add3_u32 v32, v31, v35, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s7
	v_add3_u32 v31, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_cndmask_b16 v30.l, 0x7fff, v33.h, s5
	v_bfe_u32 v33, v29, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s6
	v_bfe_u32 v32, v28, 16, 1
	v_bfe_u32 v35, v27, 16, 1
	v_cmp_o_f32_e64 s5, v29, v29
	v_add3_u32 v33, v29, v33, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v29, v28, v32, 0x7fff
	v_add3_u32 v28, v27, v35, 0x7fff
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s7
	v_cmp_o_f32_e64 s7, v27, v27
	v_bfe_u32 v27, v26, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v25, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s5
	v_bfe_u32 v32, v24, 16, 1
	v_add3_u32 v27, v26, v27, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_add3_u32 v26, v25, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s7
	v_add3_u32 v25, v24, v32, 0x7fff
	v_cmp_o_f32_e64 s7, v24, v24
	v_cndmask_b16 v24.l, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v23, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s6
	v_bfe_u32 v26, v22, 16, 1
	v_bfe_u32 v29, v21, 16, 1
	v_cmp_o_f32_e64 s5, v23, v23
	v_add3_u32 v27, v23, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v23, v22, v26, 0x7fff
	v_add3_u32 v22, v21, v29, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s7
	v_cmp_o_f32_e64 s7, v21, v21
	v_bfe_u32 v21, v20, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s6
	v_bfe_u32 v23, v19, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s5
	v_bfe_u32 v26, v18, 16, 1
	v_add3_u32 v21, v20, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v20, v20
	v_add3_u32 v20, v19, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s7
	v_add3_u32 v19, v18, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v18, v18
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v17, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s6
	v_bfe_u32 v20, v16, 16, 1
	v_bfe_u32 v23, v15, 16, 1
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v21, v17, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_add3_u32 v17, v16, v20, 0x7fff
	v_add3_u32 v16, v15, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v15, v15
	v_bfe_u32 v15, v14, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s6
	v_bfe_u32 v17, v13, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s5
	v_bfe_u32 v20, v12, 16, 1
	v_add3_u32 v15, v14, v15, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_add3_u32 v14, v13, v17, 0x7fff
	v_bfe_u32 v17, v11, 16, 1
	v_cmp_o_f32_e64 s6, v13, v13
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s7
	v_add3_u32 v13, v12, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v12, v12
	v_add3_u32 v12, v11, v17, 0x7fff
	v_cmp_o_f32_e64 s8, v11, v11
	v_cndmask_b16 v11.l, 0x7fff, v15.h, s5
	v_cmp_eq_u32_e64 s5, 0, v0
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s6
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s7
	v_cndmask_b16 v0.h, 0x7fff, v12.h, s8
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v12, v8, v7, s5
	v_cndmask_b32_e64 v7, v7, v8, s5
	v_cndmask_b32_e64 v39, v22, v24, s5
	v_cndmask_b32_e64 v22, v24, v22, s5
	v_cndmask_b32_e64 v41, v11, v19, s5
	v_cndmask_b32_e64 v11, v19, v11, s5
	v_mov_b32_e32 v19, 0x5410
	v_mov_b32_e32 v24, 0x7632
	v_cndmask_b32_e64 v8, v9, v10, s5
	v_cndmask_b32_e64 v29, v42, v49, s5
	v_cndmask_b32_e64 v32, v49, v42, s5
	v_cndmask_b32_e64 v42, v0, v16, s5
	v_cndmask_b32_e64 v0, v16, v0, s5
	v_permlanex16_b32 v16, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x1054, v19, s5
	v_cndmask_b32_e64 v19, 0x3276, v24, s5
	v_permlanex16_b32 v24, v8, s6, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v13, v10, v9, s5
	v_cndmask_b32_e64 v9, v56, v59, s5
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v19, 8, v19
	v_cndmask_b32_e64 v10, v58, v60, s5
	v_cndmask_b32_e64 v20, v61, v55, s5
	v_cndmask_b32_e64 v23, v54, v52, s5
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_cndmask_b32_e64 v27, v48, v46, s5
	v_cndmask_b32_e64 v38, v31, v34, s5
	v_cndmask_b32_e64 v31, v34, v31, s5
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v2, s35, v2
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b32_e64 v14, v59, v56, s5
	v_cndmask_b32_e64 v15, v60, v58, s5
	v_cndmask_b32_e64 v17, v55, v61, s5
	v_cndmask_b32_e64 v21, v52, v54, s5
	v_cndmask_b32_e64 v33, v36, v43, s5
	v_cndmask_b32_e64 v35, v43, v36, s5
	v_cndmask_b32_e64 v36, v37, v40, s5
	v_cndmask_b32_e64 v37, v40, v37, s5
	v_cndmask_b32_e64 v34, v28, v30, s5
	v_cndmask_b32_e64 v28, v30, v28, s5
	v_cndmask_b32_e64 v40, v18, v25, s5
	v_cndmask_b32_e64 v18, v25, v18, s5
	v_permlanex16_b32 v25, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v20, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v23, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v27, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v32, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s6, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v44, 0x5040504, v7
	v_and_b32_e32 v45, 0x7060706, v8
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v3, 0x80, v2
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b32_e64 v26, v46, v48, s5
	v_permlanex16_b32 v32, v35, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v37, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v28, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v22, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v18, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v16, v12, v44
	v_perm_b32 v8, v16, v12, v45
	v_perm_b32 v9, v24, v13, v44
	v_perm_b32 v10, v24, v13, v45
	v_perm_b32 v11, v25, v14, v44
	v_perm_b32 v12, v25, v14, v45
	v_perm_b32 v13, v30, v15, v44
	v_perm_b32 v14, v30, v15, v45
	v_perm_b32 v15, v19, v17, v44
	v_perm_b32 v16, v19, v17, v45
	v_perm_b32 v17, v20, v21, v44
	v_perm_b32 v18, v20, v21, v45
	v_perm_b32 v21, v27, v29, v44
	v_perm_b32 v22, v27, v29, v45
	v_perm_b32 v27, v31, v38, v44
	v_perm_b32 v28, v31, v38, v45
	v_add_lshl_u32 v38, v2, v6, 1
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s0, s33, v3
	.loc	1 660 9                         ; ragged.py:660:9
	v_add_lshl_u32 v6, v3, v6, 1
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s5, s1, s4
	.loc	1 660 9                         ; ragged.py:660:9
	v_perm_b32 v19, v23, v26, v44
	v_perm_b32 v20, v23, v26, v45
	v_perm_b32 v23, v32, v33, v44
	v_perm_b32 v24, v32, v33, v45
	v_perm_b32 v29, v37, v34, v44
	v_perm_b32 v30, v37, v34, v45
	v_perm_b32 v33, v46, v40, v44
	v_perm_b32 v34, v46, v40, v45
	v_perm_b32 v37, v0, v42, v44
	v_cndmask_b32_e64 v40, 0x80000000, v38, s5
	v_perm_b32 v38, v0, v42, v45
	v_add_lshl_u32 v0, v3, v5, 1
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s4, s0, s4
	.loc	1 660 9                         ; ragged.py:660:9
	v_perm_b32 v31, v43, v39, v44
	v_perm_b32 v32, v43, v39, v45
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
	v_perm_b32 v25, v35, v36, v44
	v_perm_b32 v26, v35, v36, v45
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
	v_perm_b32 v35, v47, v41, v44
	v_perm_b32 v36, v47, v41, v45
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 181
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 181
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8512
; TotalNumSgprs: 42
; NumVgprs: 181
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 181
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     181
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
