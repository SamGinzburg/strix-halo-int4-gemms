	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v62, 0
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
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v54, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v58, 0xf0, v0
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
	s_min_i32 s14, s4, 1
	.loc	1 554 24                        ; ragged.py:554:24
	s_sub_i32 s2, s2, s3
	.loc	1 556 17                        ; ragged.py:556:17
	s_abs_i32 s15, s14
	s_cvt_f32_u32 s4, s15
	s_sub_i32 s5, 0, s15
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
	s_xor_b32 s4, s2, s14
	s_mul_i32 s6, s3, s15
	s_ashr_i32 s13, s4, 31
	s_sub_i32 s16, s5, s6
	s_add_i32 s17, s3, 1
	s_sub_i32 s18, s16, s15
	s_cmp_ge_u32 s16, s15
	s_load_b256 s[4:11], s[0:1], 0x28
	s_cselect_b32 s3, s17, s3
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s3, 1
	s_cmp_ge_u32 s16, s15
	s_cselect_b32 s3, s17, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s36, s3, s13
	s_sub_i32 s20, s36, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 555 34                        ; ragged.py:555:34
	s_mul_i32 s3, s20, s14
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
	v_mov_b32_e32 v79, 0
	.loc	1 563 18                        ; ragged.py:563:18
	s_lshl_b32 s35, s20, 8
	.loc	1 562 18                        ; ragged.py:562:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s14, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s15, 0, s2
	.loc	1 645 25                        ; ragged.py:645:25
	v_add_nc_u32_e32 v56, s14, v1
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
	v_add_nc_u32_e32 v59, 16, v56
	v_add_nc_u32_e32 v60, 32, v56
	v_add_nc_u32_e32 v61, 48, v56
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
	s_load_b64 s[8:9], s[0:1], 0x20
	s_load_b32 s6, s[0:1], 0x50
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 562 32 is_stmt 1              ; ragged.py:562:32
	v_lshrrev_b32_e32 v4, 2, v0
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v8, 4, v0
	v_bfe_i32 v10, v0, 3, 1
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v11, 2, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 562 18 is_stmt 0              ; ragged.py:562:18
	v_add_co_u32 v2, s0, s14, v4
	v_add_co_ci_u32_e64 v3, null, s15, 0, s0
	.loc	1 563 18 is_stmt 1              ; ragged.py:563:18
	v_or_b32_e32 v5, s35, v0
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v6, 2, v0
	v_mov_b32_e32 v79, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e64 s1, s[18:19], v[2:3]
	.loc	1 564 48 is_stmt 0              ; ragged.py:564:48
	v_cmp_gt_i64_e64 s5, s[28:29], v[2:3]
	v_and_b32_e32 v2, 0x70, v8
	.loc	1 558 20 is_stmt 1              ; ragged.py:558:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s8, s16
	s_addc_u32 s9, s9, s17
	v_mov_b32_e32 v71, 0
	v_bfe_i32 v7, v0, 5, 1
	.loc	1 564 20                        ; ragged.py:564:20
	s_and_b32 s5, s1, s5
	.loc	1 652 25                        ; ragged.py:652:25
	s_load_b32 s1, s[8:9], 0x0
	v_and_or_b32 v2, 0x88, v10, v2
	v_lshlrev_b32_e32 v10, 5, v0
	.loc	1 614 19                        ; ragged.py:614:19
	s_lshl_b32 s8, s36, 8
	s_lshl_b32 s9, s13, 8
	v_mov_b32_e32 v67, 0
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s0, s33, v5
	v_and_b32_e32 v10, 32, v10
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v9, 12, v6
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v3, 0x37c, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v16, 0, v11, v10
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v5, 0x88, v7
	v_lshrrev_b32_e32 v6, 1, v0
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v14, 1, v0
	.loc	1 614 19                        ; ragged.py:614:19
	v_mul_lo_u32 v11, s34, v61
	v_mul_lo_u32 v18, s34, v59
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s1, s33, s1
	v_mul_lo_u32 v20, s34, v56
	s_mul_i32 s7, s1, s34
	v_add3_u32 v19, s1, s8, v0
	v_add3_u32 v15, s7, s8, v0
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v4, s14, v4
	.loc	1 562 18                        ; ragged.py:562:18
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 614 19                        ; ragged.py:614:19
	v_subrev_nc_u32_e32 v10, s9, v15
	v_mul_lo_u32 v15, s34, v60
	v_xor_b32_e32 v3, v5, v3
	v_xor_b32_e32 v5, 8, v2
	v_or_b32_e32 v7, 0x300, v0
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v80, 1, v10
	v_subrev_nc_u32_e32 v10, s9, v19
	v_or_b32_e32 v8, 0x700, v0
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v6, 0x70, v6
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v14, 28, v14
	v_or_b32_e32 v12, 0xb00, v0
	v_or_b32_e32 v13, 0xf00, v0
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v17, 1, v58
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v81, 1, v11
	v_mul_lo_u32 v85, s6, v10
	v_mad_u64_u32 v[10:11], null, v4, s6, v[9:10]
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v86, 0, v3
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v87, 0, v2
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v88, 0, v5
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v90, 0, v7
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v91, 0, v8
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v94, v1, v6
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v95, v16, v14
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v1, s12
	v_dual_mov_b32 v55, 0 :: v_dual_lshlrev_b32 v82, 1, v15
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v83, 1, v18
	v_dual_mov_b32 v53, 0 :: v_dual_lshlrev_b32 v84, 1, v20
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v89, 0, v0
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v92, 0, v12
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v93, 0, v13
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v96, 0, v17
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v4, s15
	v_mov_b32_e32 v6, s17
	v_mov_b32_e32 v8, s19
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s23, s23, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s29, s27, 0xffff
	s_mov_b32 s28, s26
	s_lshl_b32 s7, s33, 1
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
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_cmp_lt_i32 s12, s6
	v_add_nc_u32_e32 v97, s12, v9
	v_add_nc_u32_e32 v98, s12, v85
	s_cselect_b32 s1, -1, 0
	v_add_nc_u32_e32 v101, s12, v10
	s_and_b32 s1, s0, s1
	.loc	1 651 40 is_stmt 1              ; ragged.py:651:40
	v_cndmask_b32_e64 v102, 0x80000000, v80, s0
	v_cndmask_b32_e64 v98, 0x80000000, v98, s1
	v_cmp_gt_i32_e64 s1, s6, v97
	.loc	1 644 40                        ; ragged.py:644:40
	v_cndmask_b32_e64 v103, 0x80000000, v84, s4
	v_cndmask_b32_e64 v104, 0x80000000, v83, s3
	v_cndmask_b32_e64 v105, 0x80000000, v82, s2
	.loc	1 630 34                        ; ragged.py:630:34
	buffer_load_b128 v[97:100], v98, s[20:23], 0 offen
	s_and_b32 s1, s5, s1
	.loc	1 644 40                        ; ragged.py:644:40
	v_dual_cndmask_b32 v106, 0x80000000, v81 :: v_dual_add_nc_u32 v83, 2, v83
	v_cndmask_b32_e64 v101, 0x80000000, v101, s1
	.loc	1 614 19                        ; ragged.py:614:19
	s_add_i32 s34, s34, -1
	s_add_i32 s12, s12, 16
	s_cmp_lg_u32 s34, 0
	.loc	1 629 34                        ; ragged.py:629:34
	buffer_load_b32 v101, v101, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 34                        ; ragged.py:630:34
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v107, 8, v97
	v_lshrrev_b32_e32 v110, 8, v98
	v_lshrrev_b32_e32 v112, 8, v99
	v_lshrrev_b32_e32 v108, 24, v97
	v_lshrrev_b32_e32 v109, 8, v100
	v_lshrrev_b32_e32 v111, 24, v98
	v_lshrrev_b32_e32 v113, 24, v99
	v_lshrrev_b32_e32 v114, 24, v100
	.loc	1 629 34                        ; ragged.py:629:34
	s_waitcnt vmcnt(0)
	ds_store_b32 v86, v101
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[127:130], v87 offset1:32
	ds_load_2addr_b64 v[159:162], v87 offset0:64 offset1:96
	ds_load_2addr_b64 v[163:166], v88 offset1:32
	ds_load_2addr_b64 v[167:170], v88 offset0:64 offset1:96
	.loc	1 630 34                        ; ragged.py:630:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v89, v107 offset:256
	ds_store_b8_d16_hi v89, v97 offset:512
	ds_store_b8 v89, v110 offset:1280
	ds_store_b8_d16_hi v89, v98 offset:1536
	ds_store_b8 v89, v112 offset:2304
	ds_store_b8 v89, v97
	ds_store_b8 v89, v98 offset:1024
	ds_store_b8 v89, v99 offset:2048
	ds_store_b8_d16_hi v89, v99 offset:2560
	ds_store_b8 v89, v109 offset:3328
	ds_store_b8 v90, v108
	ds_store_b8 v89, v100 offset:3072
	ds_store_b8 v91, v111
	ds_store_b8 v92, v113
	ds_store_b8_d16_hi v89, v100 offset:3584
	ds_store_b8 v93, v114
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 651 40                        ; ragged.py:651:40
	buffer_load_u16 v177, v102, s[28:31], 0 offen
	.loc	1 644 40                        ; ragged.py:644:40
	s_clause 0x3
	buffer_load_u16 v178, v103, s[24:27], 0 offen
	buffer_load_u16 v179, v104, s[24:27], 0 offen
	buffer_load_u16 v180, v105, s[24:27], 0 offen
	buffer_load_u16 v181, v106, s[24:27], 0 offen
	.loc	1 631 31                        ; ragged.py:631:31
	ds_load_u8 v97, v94 offset:1280
	ds_load_u8 v98, v94 offset:1024
	ds_load_u8 v99, v94 offset:1792
	ds_load_u8 v100, v94 offset:1920
	ds_load_u8 v101, v94 offset:1664
	ds_load_u8 v102, v94 offset:1408
	ds_load_u8 v103, v94 offset:1536
	ds_load_u8 v104, v94 offset:1152
	ds_load_u8 v105, v94 offset:256
	ds_load_u8 v106, v94
	ds_load_u8 v107, v94 offset:896
	ds_load_u8 v108, v94 offset:640
	ds_load_u8 v109, v94 offset:384
	ds_load_u8 v110, v94 offset:768
	ds_load_u8 v111, v94 offset:512
	ds_load_u8 v112, v94 offset:128
	ds_load_u8 v113, v94 offset:3328
	ds_load_u8 v114, v94 offset:3072
	ds_load_u8 v115, v94 offset:3840
	ds_load_u8 v116, v94 offset:3584
	ds_load_u8 v117, v94 offset:2304
	ds_load_u8 v118, v94 offset:2048
	ds_load_u8 v119, v94 offset:2816
	ds_load_u8 v120, v94 offset:2560
	ds_load_u8 v121, v94 offset:3968
	ds_load_u8 v122, v94 offset:3712
	ds_load_u8 v123, v94 offset:3456
	ds_load_u8 v124, v94 offset:3200
	ds_load_u8 v125, v94 offset:2944
	ds_load_u8 v126, v94 offset:2688
	ds_load_u8 v131, v94 offset:2432
	ds_load_u8 v132, v94 offset:2176
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v98, v103, v99, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v99, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v103, v111, v110, 0xc0c0004
	v_perm_b32 v102, v104, v102, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v105, v114, v113, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v106, v116, v115, 0xc0c0004
	v_perm_b32 v101, v112, v109, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v110, v118, v117, 0xc0c0004
	v_perm_b32 v104, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v120, v119, 0xc0c0004
	v_lshl_or_b32 v154, v98, 16, v97
	v_lshl_or_b32 v153, v103, 16, v99
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v108, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v107, v124, v123, 0xc0c0004
	v_lshl_or_b32 v172, v106, 16, v105
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v112, v126, v125, 0xc0c0004
	v_lshl_or_b32 v171, v111, 16, v110
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v132, v131, 0xc0c0004
	v_lshl_or_b32 v174, v100, 16, v102
	v_lshl_or_b32 v173, v104, 16, v101
	v_wmma_i32_16x16x16_iu4 v[97:104], v[153:154], v[127:128], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[153:154], v[129:130], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v176, v108, 16, v107
	v_lshl_or_b32 v175, v112, 16, v109
	v_wmma_i32_16x16x16_iu4 v[105:112], v[173:174], v[127:128], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[171:172], v[163:164], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[171:172], v[165:166], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[173:174], v[129:130], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[175:176], v[163:164], v[105:112] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v104, v104
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[129:136], v[153:154], v[159:160], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[173:174], v[159:160], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[153:154], v[161:162], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[173:174], v[161:162], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[175:176], v[165:166], v[121:128] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	.loc	1 656 21                        ; ragged.py:656:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 631 31                        ; ragged.py:631:31
	v_wmma_i32_16x16x16_iu4 v[129:136], v[171:172], v[167:168], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[175:176], v[167:168], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[171:172], v[169:170], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[175:176], v[169:170], v[153:160] neg_lo:[1,1,0]
	.loc	1 642 27                        ; ragged.py:642:27
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
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
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	.loc	1 644 40                        ; ragged.py:644:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v163, 16, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 649 21                        ; ragged.py:649:21
	v_dual_mul_f32 v115, v115, v163 :: v_dual_lshlrev_b32 v162, 16, v178
	v_dual_mul_f32 v170, v102, v162 :: v_dual_lshlrev_b32 v161, 16, v177
	v_dual_mul_f32 v167, v99, v162 :: v_dual_add_nc_u32 v80, s7, v80
	v_dual_mul_f32 v168, v100, v162 :: v_dual_add_nc_u32 v81, 2, v81
	v_dual_mul_f32 v169, v101, v162 :: v_dual_add_nc_u32 v84, 2, v84
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v171, v103, v162 :: v_dual_lshlrev_b32 v164, 16, v180
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v174, v106, v162 :: v_dual_lshlrev_b32 v165, 16, v181
	.loc	1 656 21                        ; ragged.py:656:21
	ds_store_b32 v95, v161
	.loc	1 649 21                        ; ragged.py:649:21
	v_mul_f32_e32 v161, v97, v162
	v_mul_f32_e32 v166, v98, v162
	v_mul_f32_e32 v172, v104, v162
	v_dual_mul_f32 v173, v105, v162 :: v_dual_mul_f32 v116, v116, v163
	v_dual_mul_f32 v175, v107, v162 :: v_dual_mul_f32 v118, v118, v163
	v_dual_mul_f32 v176, v108, v162 :: v_dual_mul_f32 v117, v117, v163
	v_dual_mul_f32 v177, v109, v162 :: v_dual_mul_f32 v120, v120, v163
	v_dual_mul_f32 v178, v110, v162 :: v_dual_mul_f32 v119, v119, v163
	v_dual_mul_f32 v179, v111, v162 :: v_dual_mul_f32 v122, v122, v163
	v_dual_mul_f32 v162, v112, v162 :: v_dual_mul_f32 v121, v121, v163
	.loc	1 656 21                        ; ragged.py:656:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[97:100], v96
	ds_load_b128 v[101:104], v96 offset:16
	ds_load_b128 v[105:108], v96 offset:512
	ds_load_b128 v[109:112], v96 offset:528
	.loc	1 649 21                        ; ragged.py:649:21
	v_dual_mul_f32 v113, v113, v163 :: v_dual_add_nc_u32 v82, 2, v82
	v_mul_f32_e32 v114, v114, v163
	v_dual_mul_f32 v123, v123, v163 :: v_dual_mul_f32 v130, v130, v164
	v_dual_mul_f32 v124, v124, v163 :: v_dual_mul_f32 v129, v129, v164
	v_dual_mul_f32 v125, v125, v163 :: v_dual_mul_f32 v132, v132, v164
	v_dual_mul_f32 v126, v126, v163 :: v_dual_mul_f32 v131, v131, v164
	v_dual_mul_f32 v127, v127, v163 :: v_dual_mul_f32 v134, v134, v164
	v_dual_mul_f32 v128, v128, v163 :: v_dual_mul_f32 v133, v133, v164
	v_dual_mul_f32 v135, v135, v164 :: v_dual_mul_f32 v146, v146, v165
	v_dual_mul_f32 v136, v136, v164 :: v_dual_mul_f32 v145, v145, v165
	v_dual_mul_f32 v137, v137, v164 :: v_dual_mul_f32 v148, v148, v165
	v_dual_mul_f32 v138, v138, v164 :: v_dual_mul_f32 v147, v147, v165
	v_dual_mul_f32 v139, v139, v164 :: v_dual_mul_f32 v150, v150, v165
	v_dual_mul_f32 v140, v140, v164 :: v_dual_mul_f32 v149, v149, v165
	v_dual_mul_f32 v141, v141, v164 :: v_dual_mul_f32 v152, v152, v165
	v_dual_mul_f32 v142, v142, v164 :: v_dual_mul_f32 v151, v151, v165
	v_dual_mul_f32 v143, v143, v164 :: v_dual_mul_f32 v154, v154, v165
	v_dual_mul_f32 v144, v144, v164 :: v_dual_mul_f32 v153, v153, v165
	v_mul_f32_e32 v155, v155, v165
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v156, v156, v165 :: v_dual_fmac_f32 v79, v166, v98
	v_dual_mul_f32 v157, v157, v165 :: v_dual_fmac_f32 v78, v167, v99
	v_dual_mul_f32 v158, v158, v165 :: v_dual_fmac_f32 v77, v168, v100
	v_mul_f32_e32 v159, v159, v165
	v_dual_mul_f32 v160, v160, v165 :: v_dual_fmac_f32 v63, v114, v98
	.loc	1 657 17                        ; ragged.py:657:17
	v_dual_fmac_f32 v54, v161, v97 :: v_dual_fmac_f32 v57, v116, v100
	v_dual_fmac_f32 v64, v113, v97 :: v_dual_fmac_f32 v41, v130, v98
	v_dual_fmac_f32 v62, v115, v99 :: v_dual_fmac_f32 v39, v132, v100
	v_dual_fmac_f32 v42, v129, v97 :: v_dual_fmac_f32 v25, v146, v98
	v_dual_fmac_f32 v40, v131, v99 :: v_dual_fmac_f32 v23, v148, v100
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v26, v145, v97 :: v_dual_fmac_f32 v75, v170, v102
	v_dual_fmac_f32 v24, v147, v99 :: v_dual_fmac_f32 v73, v172, v104
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v76, v169, v101 :: v_dual_fmac_f32 v71, v174, v106
	v_dual_fmac_f32 v74, v171, v103 :: v_dual_fmac_f32 v69, v176, v108
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v72, v173, v105 :: v_dual_fmac_f32 v67, v178, v110
	v_dual_fmac_f32 v70, v175, v107 :: v_dual_fmac_f32 v65, v162, v112
	v_dual_fmac_f32 v68, v177, v109 :: v_dual_fmac_f32 v53, v118, v102
	v_dual_fmac_f32 v66, v179, v111 :: v_dual_fmac_f32 v55, v117, v101
	v_dual_fmac_f32 v52, v119, v103 :: v_dual_fmac_f32 v51, v120, v104
	v_dual_fmac_f32 v50, v121, v105 :: v_dual_fmac_f32 v49, v122, v106
	v_dual_fmac_f32 v48, v123, v107 :: v_dual_fmac_f32 v47, v124, v108
	v_dual_fmac_f32 v46, v125, v109 :: v_dual_fmac_f32 v45, v126, v110
	v_dual_fmac_f32 v44, v127, v111 :: v_dual_fmac_f32 v43, v128, v112
	v_dual_fmac_f32 v38, v133, v101 :: v_dual_fmac_f32 v37, v134, v102
	v_dual_fmac_f32 v36, v135, v103 :: v_dual_fmac_f32 v35, v136, v104
	v_dual_fmac_f32 v34, v137, v105 :: v_dual_fmac_f32 v33, v138, v106
	v_dual_fmac_f32 v32, v139, v107 :: v_dual_fmac_f32 v31, v140, v108
	v_dual_fmac_f32 v30, v141, v109 :: v_dual_fmac_f32 v29, v142, v110
	v_dual_fmac_f32 v28, v143, v111 :: v_dual_fmac_f32 v27, v144, v112
	v_dual_fmac_f32 v22, v149, v101 :: v_dual_fmac_f32 v21, v150, v102
	v_dual_fmac_f32 v20, v151, v103 :: v_dual_fmac_f32 v19, v152, v104
	v_dual_fmac_f32 v18, v153, v105 :: v_dual_fmac_f32 v17, v154, v106
	v_dual_fmac_f32 v16, v155, v107 :: v_dual_fmac_f32 v15, v156, v108
	v_dual_fmac_f32 v14, v157, v109 :: v_dual_fmac_f32 v13, v158, v110
	v_dual_fmac_f32 v12, v159, v111 :: v_dual_fmac_f32 v11, v160, v112
	.loc	1 614 19                        ; ragged.py:614:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 660 9                         ; ragged.py:660:9
	v_bfe_u32 v7, v54, 16, 1
	v_bfe_u32 v8, v79, 16, 1
	v_cmp_o_f32_e64 s5, v54, v54
	v_cmp_o_f32_e64 s6, v79, v79
	v_bfe_u32 v9, v78, 16, 1
	v_add3_u32 v7, v54, v7, 0x7fff
	v_add3_u32 v8, v79, v8, 0x7fff
	v_bfe_u32 v10, v77, 16, 1
	v_cmp_o_f32_e64 s7, v78, v78
	v_add3_u32 v9, v78, v9, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s5
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s6
	v_bfe_u32 v8, v76, 16, 1
	v_bfe_u32 v54, v75, 16, 1
	v_add3_u32 v10, v77, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v77, v77
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v6, v56, s33
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s7
	v_add3_u32 v8, v76, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v76, v76
	v_add3_u32 v54, v75, v54, 0x7fff
	v_cmp_o_f32_e64 s7, v75, v75
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s5
	v_bfe_u32 v10, v74, 16, 1
	v_bfe_u32 v56, v73, 16, 1
	.loc	1 563 36                        ; ragged.py:563:36
	v_lshrrev_b32_e32 v2, 1, v58
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s6
	v_cndmask_b16 v8.h, 0x7fff, v54.h, s7
	v_bfe_u32 v54, v72, 16, 1
	v_add3_u32 v10, v74, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v74, v74
	v_add3_u32 v56, v73, v56, 0x7fff
	v_cmp_o_f32_e64 s6, v73, v73
	v_bfe_u32 v58, v71, 16, 1
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v5, v59, s33
	.loc	1 660 9                         ; ragged.py:660:9
	v_add3_u32 v54, v72, v54, 0x7fff
	v_cmp_o_f32_e64 s7, v72, v72
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v56.h, s6
	v_bfe_u32 v56, v70, 16, 1
	v_bfe_u32 v59, v69, 16, 1
	v_add3_u32 v58, v71, v58, 0x7fff
	v_cmp_o_f32_e64 s5, v71, v71
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v4, v60, s33
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b16 v54.l, 0x7fff, v54.h, s7
	v_add3_u32 v56, v70, v56, 0x7fff
	v_cmp_o_f32_e64 s6, v70, v70
	v_add3_u32 v59, v69, v59, 0x7fff
	v_cmp_o_f32_e64 s7, v69, v69
	v_cndmask_b16 v54.h, 0x7fff, v58.h, s5
	v_bfe_u32 v58, v68, 16, 1
	v_bfe_u32 v60, v67, 16, 1
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v1, v61, s33
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s6
	v_cndmask_b16 v56.h, 0x7fff, v59.h, s7
	v_bfe_u32 v59, v66, 16, 1
	v_add3_u32 v58, v68, v58, 0x7fff
	v_cmp_o_f32_e64 s5, v68, v68
	v_add3_u32 v60, v67, v60, 0x7fff
	v_cmp_o_f32_e64 s6, v67, v67
	v_bfe_u32 v61, v65, 16, 1
	v_add3_u32 v59, v66, v59, 0x7fff
	v_cmp_o_f32_e64 s7, v66, v66
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s5
	v_cndmask_b16 v58.h, 0x7fff, v60.h, s6
	v_bfe_u32 v60, v64, 16, 1
	v_bfe_u32 v66, v63, 16, 1
	v_add3_u32 v61, v65, v61, 0x7fff
	v_cmp_o_f32_e64 s5, v65, v65
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s7
	v_add3_u32 v60, v64, v60, 0x7fff
	v_cmp_o_f32_e64 s6, v64, v64
	v_add3_u32 v64, v63, v66, 0x7fff
	v_cmp_o_f32_e64 s7, v63, v63
	v_cndmask_b16 v59.h, 0x7fff, v61.h, s5
	v_bfe_u32 v61, v62, 16, 1
	v_bfe_u32 v63, v57, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s6
	v_cndmask_b16 v60.h, 0x7fff, v64.h, s7
	v_bfe_u32 v64, v55, 16, 1
	v_add3_u32 v61, v62, v61, 0x7fff
	v_cmp_o_f32_e64 s5, v62, v62
	v_add3_u32 v62, v57, v63, 0x7fff
	v_cmp_o_f32_e64 s6, v57, v57
	v_add3_u32 v57, v55, v64, 0x7fff
	v_cmp_o_f32_e64 s7, v55, v55
	v_cndmask_b16 v55.l, 0x7fff, v61.h, s5
	v_bfe_u32 v61, v53, 16, 1
	v_cndmask_b16 v55.h, 0x7fff, v62.h, s6
	v_bfe_u32 v62, v52, 16, 1
	v_bfe_u32 v63, v51, 16, 1
	v_cmp_o_f32_e64 s5, v53, v53
	v_add3_u32 v61, v53, v61, 0x7fff
	v_cmp_o_f32_e64 s6, v52, v52
	v_add3_u32 v53, v52, v62, 0x7fff
	v_add3_u32 v52, v51, v63, 0x7fff
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s7
	v_cmp_o_f32_e64 s7, v51, v51
	v_bfe_u32 v51, v50, 16, 1
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s6
	v_bfe_u32 v53, v49, 16, 1
	v_cndmask_b16 v57.h, 0x7fff, v61.h, s5
	v_bfe_u32 v61, v48, 16, 1
	v_add3_u32 v51, v50, v51, 0x7fff
	v_cmp_o_f32_e64 s5, v50, v50
	v_add3_u32 v50, v49, v53, 0x7fff
	v_cmp_o_f32_e64 s6, v49, v49
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s7
	v_add3_u32 v49, v48, v61, 0x7fff
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
	v_cndmask_b32_e64 v9, v54, v58, s5
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v19, 8, v19
	v_cndmask_b32_e64 v10, v56, v59, s5
	v_cndmask_b32_e64 v20, v60, v57, s5
	v_cndmask_b32_e64 v23, v55, v52, s5
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
	v_cndmask_b32_e64 v14, v58, v54, s5
	v_cndmask_b32_e64 v15, v59, v56, s5
	v_cndmask_b32_e64 v17, v57, v60, s5
	v_cndmask_b32_e64 v21, v52, v55, s5
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 182
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 182
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7472
; TotalNumSgprs: 42
; NumVgprs: 182
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 182
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     182
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
