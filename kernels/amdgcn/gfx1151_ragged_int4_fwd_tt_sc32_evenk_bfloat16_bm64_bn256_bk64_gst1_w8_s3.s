	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 544 0                         ; ragged.py:544:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[34:35], s[0:1], 0x54
.Ltmp0:
	.loc	1 572 25 prologue_end           ; ragged.py:572:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	v_dual_mov_b32 v94, 0 :: v_dual_and_b32 v95, 15, v0
	.loc	1 583 18                        ; ragged.py:583:18
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:570:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:570:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
.Ltmp2:
	.loc	1 572 25 is_stmt 1              ; ragged.py:572:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	s_xor_b32 s4, s4, s6
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v83, 0xf0, v0
	s_sub_i32 s4, s4, s6
	s_mov_b32 s36, 0
	.loc	1 574 33                        ; ragged.py:574:33
	s_sub_i32 s5, s35, s4
	.loc	1 575 24                        ; ragged.py:575:24
	s_mul_i32 s3, s4, s3
	.loc	1 574 22                        ; ragged.py:574:22
	s_min_i32 s5, s5, 1
	.loc	1 575 24                        ; ragged.py:575:24
	s_sub_i32 s2, s2, s3
	.loc	1 577 17                        ; ragged.py:577:17
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s8, s7
	s_xor_b32 s7, s2, s5
	s_mul_i32 s9, s3, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s3, 1
	s_sub_i32 s10, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s9, s3
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s3, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s9, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s7
	s_sub_i32 s6, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 576 34                        ; ragged.py:576:34
	s_mul_i32 s3, s6, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 576 20 is_stmt 0              ; ragged.py:576:20
	s_add_i32 s2, s2, s4
	.loc	1 579 20 is_stmt 1              ; ragged.py:579:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 580 23                        ; ragged.py:580:23
	s_lshl_b64 s[10:11], s[2:3], 3
	s_add_u32 s2, s20, s10
	s_addc_u32 s3, s21, s11
	s_load_b64 s[38:39], s[2:3], 0x0
	.loc	1 581 24                        ; ragged.py:581:24
	s_add_u32 s2, s22, s10
	s_addc_u32 s3, s23, s11
	.loc	1 582 22                        ; ragged.py:582:22
	s_add_u32 s4, s24, s10
	s_addc_u32 s5, s25, s11
	.loc	1 581 24                        ; ragged.py:581:24
	s_load_b64 s[12:13], s[2:3], 0x0
	.loc	1 582 22                        ; ragged.py:582:22
	s_load_b64 s[14:15], s[4:5], 0x0
	.loc	1 584 18                        ; ragged.py:584:18
	s_lshl_b32 s21, s6, 8
	.loc	1 583 18                        ; ragged.py:583:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s38, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s39, 0, s2
	.loc	1 664 25                        ; ragged.py:664:25
	v_add_nc_u32_e32 v67, s38, v95
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e32 vcc_lo, s[12:13], v[1:2]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s2, s[14:15], v[1:2]
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s3, s[12:13], v[3:4]
	v_cmp_le_i64_e64 s5, s[12:13], v[5:6]
	v_cmp_le_i64_e64 s6, s[12:13], v[7:8]
	.loc	1 585 48                        ; ragged.py:585:48
	v_cmp_gt_i64_e64 s7, s[14:15], v[3:4]
	v_cmp_gt_i64_e64 s8, s[14:15], v[5:6]
	v_cmp_gt_i64_e64 s9, s[14:15], v[7:8]
	.loc	1 664 25 is_stmt 1              ; ragged.py:664:25
	v_add_nc_u32_e32 v68, 16, v67
	v_add_nc_u32_e32 v70, 32, v67
	v_add_nc_u32_e32 v71, 48, v67
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 634 19                        ; ragged.py:634:19
	s_cmp_lt_i32 s34, 1
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s25, s[0:1], 0x50
	s_load_b32 s22, s[0:1], 0x48
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v9, 4, v0
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v10, 3, v0
	v_bfe_i32 v11, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v9, 0x70, v9
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v10, 0x700, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v11, 0x88, v11
	.loc	1 584 36 is_stmt 1              ; ragged.py:584:36
	v_lshrrev_b32_e32 v1, 4, v83
	v_bfe_i32 v12, v0, 7, 1
	.loc	1 583 18                        ; ragged.py:583:18
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v3, 63, v0
	v_or3_b32 v27, v9, v10, v11
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v9, 5, v0
	.loc	1 579 20                        ; ragged.py:579:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s10
	s_addc_u32 s7, s7, s11
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v4, s21, v1
	.loc	1 671 25                        ; ragged.py:671:25
	s_load_b32 s24, s[6:7], 0x0
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v10, 2, v83
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v11, 1, v0
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v9, 32, v9
	s_load_b256 s[40:47], s[0:1], 0x0
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v5, 16, v4
	.loc	1 645 39                        ; ragged.py:645:39
	s_mul_i32 s28, s25, s33
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v13, 0x7f, v0
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v12, 0x88, v12
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v6, 32, v4
	v_or_b32_e32 v7, 48, v4
	v_or_b32_e32 v8, 64, v4
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_u32 v1, s0, s38, v3
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v16, 0x50, v4
	.loc	1 671 25                        ; ragged.py:671:25
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s23, s34, s24
	.loc	1 645 39                        ; ragged.py:645:39
	s_mul_i32 s24, s28, s24
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v32, 28, v11
	v_add3_u32 v33, 0, v10, v9
	v_mad_u64_u32 v[10:11], null, v4, s25, s[24:25]
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v17, 0x60, v4
	v_xor_b32_e32 v30, v12, v13
	v_mad_u64_u32 v[11:12], null, s25, v5, s[24:25]
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_ci_u32_e64 v2, null, s39, 0, s0
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v18, 0x70, v4
	v_mad_u64_u32 v[12:13], null, s25, v6, s[24:25]
	v_or_b32_e32 v19, 0x80, v4
	v_mad_u64_u32 v[13:14], null, s25, v7, s[24:25]
	v_or_b32_e32 v20, 0x90, v4
	v_mad_u64_u32 v[14:15], null, s25, v8, s[24:25]
	v_or_b32_e32 v21, 0xa0, v4
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s9, s33, v16
	v_mad_u64_u32 v[15:16], null, s25, v16, s[24:25]
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v22, 0xb0, v4
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s10, s33, v17
	v_mad_u64_u32 v[16:17], null, s25, v17, s[24:25]
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s0, s[12:13], v[1:2]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s1, s[14:15], v[1:2]
	.loc	1 584 18 is_stmt 1              ; ragged.py:584:18
	v_or_b32_e32 v1, 0xc0, v4
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s11, s33, v18
	v_mad_u64_u32 v[17:18], null, s25, v18, s[24:25]
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v2, 0xd0, v4
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s12, s33, v19
	v_mad_u64_u32 v[18:19], null, s25, v19, s[24:25]
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v25, 0xe0, v4
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s13, s33, v20
	v_mad_u64_u32 v[19:20], null, s25, v20, s[24:25]
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v26, 0xf0, v4
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s14, s33, v21
	v_mad_u64_u32 v[20:21], null, s25, v21, s[24:25]
	v_cmp_gt_i32_e64 s15, s33, v22
	v_mad_u64_u32 v[21:22], null, s25, v22, s[24:25]
	v_mad_u64_u32 v[22:23], null, s25, v1, s[24:25]
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v96, s21, v0
	v_or_b32_e32 v28, 0x300, v0
	v_or_b32_e32 v29, 0x3f0, v0
	v_xor_b32_e32 v31, 8, v27
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v34, 1, v83
	v_mad_u64_u32 v[23:24], null, s25, v2, s[24:25]
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s18, s33, v25
	v_mad_u64_u32 v[24:25], null, s25, v25, s[24:25]
	v_cmp_gt_i32_e64 s19, s33, v26
	v_mad_u64_u32 v[25:26], null, s25, v26, s[24:25]
	s_and_b32 s29, s41, 0xffff
	s_mov_b32 s28, s40
	s_and_b32 s49, s43, 0xffff
	s_mov_b32 s48, s42
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v9, s38, v3
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 s0, s0, s1
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s1, s33, v4
	v_cmp_gt_i32_e64 s5, s33, v5
	v_cmp_gt_i32_e64 s6, s33, v6
	v_cmp_gt_i32_e64 s7, s33, v7
	v_cmp_gt_i32_e64 s8, s33, v8
	v_cmp_gt_i32_e64 s16, s33, v1
	v_cmp_gt_i32_e64 s17, s33, v2
	v_dual_mov_b32 v1, s36 :: v_dual_mov_b32 v2, s37
	.loc	1 631 28                        ; ragged.py:631:28
	v_lshrrev_b32_e32 v97, 6, v0
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s20, s33, v96
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v98, 0, v0
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v99, 0, v28
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v100, 0, v95
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v101, 0, v29
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v102, 0, v30
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v103, 0, v27
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v104, 0, v31
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v105, v33, v32
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v106, 0, v34
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v3, s38 :: v_dual_mov_b32 v4, s39
	v_dual_mov_b32 v5, s40 :: v_dual_mov_b32 v6, s41
	v_dual_mov_b32 v7, s42 :: v_dual_mov_b32 v8, s43
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s53, s47, 0xffff
	s_mov_b32 s52, s46
	s_mov_b32 s24, s36
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 631 28                        ; ragged.py:631:28
	v_or_b32_e32 v107, 4, v97
	v_or_b32_e32 v108, 8, v97
	.loc	1 636 28                        ; ragged.py:636:28
	s_lshl_b32 s25, s24, 4
	.loc	1 631 28                        ; ragged.py:631:28
	v_or_b32_e32 v109, 12, v97
	v_or_b32_e32 v110, s25, v97
	v_or_b32_e32 v112, s25, v107
	v_or_b32_e32 v113, s25, v108
	v_or_b32_e32 v111, s25, v95
	v_or_b32_e32 v109, s25, v109
	v_mad_u64_u32 v[107:108], null, v110, s22, v[9:10]
	v_mad_u64_u32 v[123:124], null, v112, s22, v[9:10]
	v_mad_u64_u32 v[124:125], null, v113, s22, v[9:10]
	v_add_nc_u32_e32 v108, v10, v111
	v_add_nc_u32_e32 v115, v13, v111
	v_add_nc_u32_e32 v118, v16, v111
	v_add_nc_u32_e32 v121, v19, v111
	v_add_nc_u32_e32 v128, v22, v111
	v_mad_u64_u32 v[125:126], null, v109, s22, v[9:10]
	v_add_nc_u32_e32 v110, v11, v111
	v_add_nc_u32_e32 v114, v12, v111
	v_add_nc_u32_e32 v116, v14, v111
	v_add_nc_u32_e32 v117, v15, v111
	v_add_nc_u32_e32 v119, v17, v111
	v_add_nc_u32_e32 v120, v18, v111
	v_add_nc_u32_e32 v122, v20, v111
	v_add_nc_u32_e32 v127, v21, v111
	v_add_nc_u32_e32 v129, v23, v111
	v_add_nc_u32_e32 v130, v24, v111
	v_add_nc_u32_e32 v111, v25, v111
	v_cndmask_b32_e64 v108, 0x80000000, v108, s1
	v_cndmask_b32_e64 v112, 0x80000000, v115, s7
	v_cndmask_b32_e64 v115, 0x80000000, v118, s10
	v_cndmask_b32_e64 v118, 0x80000000, v121, s13
	v_cndmask_b32_e64 v121, 0x80000000, v128, s16
	v_cndmask_b32_e64 v128, 0x80000000, v107, s0
	v_cndmask_b32_e64 v109, 0x80000000, v110, s5
	v_cndmask_b32_e64 v123, 0x80000000, v123, s0
	v_cndmask_b32_e64 v110, 0x80000000, v114, s6
	v_cndmask_b32_e64 v124, 0x80000000, v124, s0
	.loc	1 649 34                        ; ragged.py:649:34
	s_mov_b32 s50, s30
	s_mov_b32 s51, s31
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	v_cndmask_b32_e64 v113, 0x80000000, v116, s8
	v_cndmask_b32_e64 v114, 0x80000000, v117, s9
	v_cndmask_b32_e64 v116, 0x80000000, v119, s11
	v_cndmask_b32_e64 v117, 0x80000000, v120, s12
	v_cndmask_b32_e64 v119, 0x80000000, v122, s14
	v_cndmask_b32_e64 v120, 0x80000000, v127, s15
	v_cndmask_b32_e64 v122, 0x80000000, v129, s17
	v_cndmask_b32_e64 v126, 0x80000000, v130, s18
	v_cndmask_b32_e64 v127, 0x80000000, v111, s19
	s_clause 0xf
	buffer_load_u8 v107, v108, s[48:51], 0 offen
	buffer_load_u8 v108, v109, s[48:51], 0 offen
	buffer_load_u8 v109, v110, s[48:51], 0 offen
	buffer_load_u8 v110, v112, s[48:51], 0 offen
	buffer_load_u8 v111, v113, s[48:51], 0 offen
	buffer_load_u8 v112, v114, s[48:51], 0 offen
	buffer_load_u8 v113, v115, s[48:51], 0 offen
	buffer_load_u8 v114, v116, s[48:51], 0 offen
	buffer_load_u8 v115, v117, s[48:51], 0 offen
	buffer_load_u8 v116, v118, s[48:51], 0 offen
	buffer_load_u8 v117, v119, s[48:51], 0 offen
	buffer_load_u8 v118, v120, s[48:51], 0 offen
	buffer_load_u8 v119, v121, s[48:51], 0 offen
	buffer_load_u8 v120, v122, s[48:51], 0 offen
	buffer_load_u8 v121, v126, s[48:51], 0 offen
	buffer_load_u8 v122, v127, s[48:51], 0 offen
	.loc	1 648 34                        ; ragged.py:648:34
	s_clause 0x3
	buffer_load_u8 v126, v128, s[28:31], 0 offen
	buffer_load_u8 v123, v123, s[28:31], 0 offen
	buffer_load_u8 v124, v124, s[28:31], 0 offen
	buffer_load_u8 v125, v125, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 25                        ; ragged.py:671:25
	s_add_i32 s25, s24, s23
	.loc	1 670 40                        ; ragged.py:670:40
	s_mov_b32 s54, s30
	.loc	1 671 25                        ; ragged.py:671:25
	s_mul_i32 s25, s25, s33
	.loc	1 670 40                        ; ragged.py:670:40
	s_mov_b32 s55, s31
	.loc	1 663 40                        ; ragged.py:663:40
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	.loc	1 648 34                        ; ragged.py:648:34
	s_waitcnt vmcnt(3)
	ds_store_b8 v98, v126
	s_waitcnt vmcnt(2)
	ds_store_b8 v98, v123 offset:256
	s_waitcnt vmcnt(1)
	ds_store_b8 v98, v124 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v99, v125
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 650 31                        ; ragged.py:650:31
	ds_load_u8 v123, v100 offset:320
	ds_load_u8 v124, v100 offset:256
	ds_load_u8 v135, v100 offset:336
	ds_load_u8 v136, v100 offset:272
	ds_load_u8 v137, v100 offset:352
	ds_load_u8 v138, v100 offset:288
	ds_load_u8 v139, v100 offset:368
	ds_load_u8 v140, v100 offset:304
	ds_load_u8 v125, v100 offset:448
	ds_load_u8 v126, v100 offset:384
	ds_load_u8 v141, v100 offset:464
	ds_load_u8 v142, v100 offset:400
	ds_load_u8 v143, v100 offset:480
	ds_load_u8 v144, v100 offset:416
	ds_load_u8 v145, v100 offset:496
	ds_load_u8 v146, v100 offset:432
	ds_load_u8 v127, v100 offset:64
	ds_load_u8 v128, v100
	ds_load_u8 v147, v100 offset:80
	ds_load_u8 v148, v100 offset:96
	ds_load_u8 v149, v100 offset:112
	ds_load_u8 v150, v100 offset:16
	ds_load_u8 v151, v100 offset:32
	ds_load_u8 v152, v100 offset:48
	ds_load_u8 v129, v100 offset:192
	ds_load_u8 v130, v100 offset:128
	ds_load_u8 v153, v100 offset:208
	ds_load_u8 v154, v100 offset:144
	ds_load_u8 v155, v100 offset:224
	ds_load_u8 v156, v100 offset:160
	ds_load_u8 v157, v100 offset:240
	ds_load_u8 v158, v100 offset:176
	ds_load_u8 v131, v100 offset:832
	ds_load_u8 v132, v100 offset:768
	ds_load_u8 v159, v100 offset:848
	ds_load_u8 v160, v100 offset:784
	ds_load_u8 v161, v100 offset:864
	ds_load_u8 v162, v100 offset:800
	ds_load_u8 v163, v100 offset:880
	ds_load_u8 v164, v100 offset:816
	ds_load_u8 v133, v100 offset:960
	ds_load_u8 v134, v100 offset:896
	ds_load_u8 v165, v100 offset:976
	ds_load_u8 v166, v100 offset:912
	ds_load_u8 v167, v100 offset:992
	ds_load_u8 v168, v100 offset:928
	ds_load_u8 v169, v101
	ds_load_u8 v170, v100 offset:944
	ds_load_u8 v171, v100 offset:576
	ds_load_u8 v172, v100 offset:512
	ds_load_u8 v173, v100 offset:592
	ds_load_u8 v174, v100 offset:528
	ds_load_u8 v175, v100 offset:608
	ds_load_u8 v176, v100 offset:544
	ds_load_u8 v177, v100 offset:624
	ds_load_u8 v178, v100 offset:560
	ds_load_u8 v179, v100 offset:704
	ds_load_u8 v180, v100 offset:640
	ds_load_u8 v181, v100 offset:720
	ds_load_u8 v182, v100 offset:656
	ds_load_u8 v183, v100 offset:736
	ds_load_u8 v184, v100 offset:672
	ds_load_u8 v185, v100 offset:752
	ds_load_u8 v186, v100 offset:688
	.loc	1 649 34                        ; ragged.py:649:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v102, v107
	ds_store_b8 v102, v108 offset:256
	ds_store_b8 v102, v109 offset:512
	ds_store_b8 v102, v110 offset:768
	ds_store_b8 v102, v111 offset:1024
	ds_store_b8 v102, v112 offset:1280
	ds_store_b8 v102, v113 offset:1536
	ds_store_b8 v102, v114 offset:1792
	ds_store_b8 v102, v115 offset:2048
	ds_store_b8 v102, v116 offset:2304
	ds_store_b8 v102, v117 offset:2560
	ds_store_b8 v102, v118 offset:2816
	ds_store_b8 v102, v119 offset:3072
	ds_store_b8 v102, v120 offset:3328
	ds_store_b8 v102, v121 offset:3584
	ds_store_b8 v102, v122 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 650 31                        ; ragged.py:650:31
	v_perm_b32 v107, v124, v123, 0xc0c0004
	v_perm_b32 v108, v126, v125, 0xc0c0004
	.loc	1 649 34                        ; ragged.py:649:34
	ds_load_2addr_stride64_b64 v[123:126], v103 offset1:4
	.loc	1 650 31                        ; ragged.py:650:31
	v_perm_b32 v109, v128, v127, 0xc0c0004
	v_perm_b32 v110, v130, v129, 0xc0c0004
	.loc	1 649 34                        ; ragged.py:649:34
	ds_load_2addr_stride64_b64 v[127:130], v104 offset1:4
	.loc	1 650 31                        ; ragged.py:650:31
	v_perm_b32 v111, v132, v131, 0xc0c0004
	v_perm_b32 v112, v134, v133, 0xc0c0004
	v_perm_b32 v113, v172, v171, 0xc0c0004
	v_perm_b32 v114, v180, v179, 0xc0c0004
	v_lshl_or_b32 v132, v108, 16, v107
	v_lshl_or_b32 v131, v110, 16, v109
	v_lshl_or_b32 v134, v112, 16, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v133, v114, 16, v113
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[123:124], v[131:132], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[107:114], v[127:128], v[133:134], v[107:114] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v171, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v172, v108
	v_cvt_f32_i32_e32 v179, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v180, v110
	v_cvt_f32_i32_e32 v187, v111
	v_cvt_f32_i32_e32 v188, v112
	v_cvt_f32_i32_e32 v189, v113
	v_cvt_f32_i32_e32 v190, v114
	.loc	1 650 31                        ; ragged.py:650:31
	v_dual_mov_b32 v114, s43 :: v_dual_mov_b32 v113, s42
	v_dual_mov_b32 v112, s41 :: v_dual_mov_b32 v111, s40
	v_dual_mov_b32 v110, s39 :: v_dual_mov_b32 v109, s38
	v_dual_mov_b32 v108, s37 :: v_dual_mov_b32 v107, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[125:126], v[131:132], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[129:130], v[133:134], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v191, v115
	v_cvt_f32_i32_e32 v192, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v193, v117
	v_cvt_f32_i32_e32 v194, v118
	.loc	1 650 31                        ; ragged.py:650:31
	v_perm_b32 v115, v136, v135, 0xc0c0004
	v_perm_b32 v116, v142, v141, 0xc0c0004
	v_perm_b32 v117, v150, v147, 0xc0c0004
	v_perm_b32 v118, v154, v153, 0xc0c0004
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v195, v119
	v_cvt_f32_i32_e32 v196, v120
	.loc	1 650 31                        ; ragged.py:650:31
	v_lshl_or_b32 v132, v116, 16, v115
	v_perm_b32 v115, v160, v159, 0xc0c0004
	v_lshl_or_b32 v131, v118, 16, v117
	v_perm_b32 v116, v166, v165, 0xc0c0004
	v_perm_b32 v117, v174, v173, 0xc0c0004
	v_perm_b32 v118, v182, v181, 0xc0c0004
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v197, v121
	v_cvt_f32_i32_e32 v198, v122
	.loc	1 650 31                        ; ragged.py:650:31
	v_lshl_or_b32 v134, v116, 16, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v118, 16, v117
	v_wmma_i32_16x16x16_iu4 v[115:122], v[123:124], v[131:132], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[127:128], v[133:134], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v135, v115
	v_cvt_f32_i32_e32 v136, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v141, v117
	v_cvt_f32_i32_e32 v142, v118
	v_cvt_f32_i32_e32 v147, v119
	v_cvt_f32_i32_e32 v150, v120
	v_cvt_f32_i32_e32 v153, v121
	v_cvt_f32_i32_e32 v154, v122
	.loc	1 650 31                        ; ragged.py:650:31
	v_wmma_i32_16x16x16_iu4 v[115:122], v[125:126], v[131:132], v[107:114] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[129:130], v[133:134], v[115:122] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v159, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v160, v116
	v_cvt_f32_i32_e32 v165, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v166, v118
	.loc	1 650 31                        ; ragged.py:650:31
	v_perm_b32 v115, v138, v137, 0xc0c0004
	v_perm_b32 v116, v144, v143, 0xc0c0004
	v_perm_b32 v117, v151, v148, 0xc0c0004
	v_perm_b32 v118, v156, v155, 0xc0c0004
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v173, v119
	v_cvt_f32_i32_e32 v174, v120
	.loc	1 650 31                        ; ragged.py:650:31
	v_lshl_or_b32 v132, v116, 16, v115
	v_perm_b32 v115, v162, v161, 0xc0c0004
	v_lshl_or_b32 v131, v118, 16, v117
	v_perm_b32 v116, v168, v167, 0xc0c0004
	v_perm_b32 v117, v176, v175, 0xc0c0004
	v_perm_b32 v118, v184, v183, 0xc0c0004
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v181, v121
	v_cvt_f32_i32_e32 v182, v122
	.loc	1 650 31                        ; ragged.py:650:31
	v_lshl_or_b32 v134, v116, 16, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v118, 16, v117
	v_wmma_i32_16x16x16_iu4 v[115:122], v[123:124], v[131:132], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[127:128], v[133:134], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v137, v115
	v_cvt_f32_i32_e32 v138, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v143, v117
	v_cvt_f32_i32_e32 v144, v118
	v_cvt_f32_i32_e32 v148, v119
	v_cvt_f32_i32_e32 v151, v120
	v_cvt_f32_i32_e32 v155, v121
	v_cvt_f32_i32_e32 v156, v122
	.loc	1 650 31                        ; ragged.py:650:31
	v_wmma_i32_16x16x16_iu4 v[115:122], v[125:126], v[131:132], v[107:114] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[129:130], v[133:134], v[115:122] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v161, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v162, v116
	v_cvt_f32_i32_e32 v167, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v168, v118
	.loc	1 650 31                        ; ragged.py:650:31
	v_perm_b32 v115, v140, v139, 0xc0c0004
	v_perm_b32 v116, v146, v145, 0xc0c0004
	v_perm_b32 v117, v152, v149, 0xc0c0004
	v_perm_b32 v118, v158, v157, 0xc0c0004
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v175, v119
	v_cvt_f32_i32_e32 v176, v120
	.loc	1 650 31                        ; ragged.py:650:31
	v_lshl_or_b32 v132, v116, 16, v115
	v_perm_b32 v115, v164, v163, 0xc0c0004
	v_lshl_or_b32 v131, v118, 16, v117
	v_perm_b32 v116, v170, v169, 0xc0c0004
	v_perm_b32 v117, v178, v177, 0xc0c0004
	v_perm_b32 v118, v186, v185, 0xc0c0004
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v183, v121
	v_cvt_f32_i32_e32 v184, v122
	.loc	1 650 31                        ; ragged.py:650:31
	v_lshl_or_b32 v134, v116, 16, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v133, v118, 16, v117
	v_wmma_i32_16x16x16_iu4 v[115:122], v[123:124], v[131:132], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[115:122], v[127:128], v[133:134], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v123, v115
	v_cvt_f32_i32_e32 v124, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v127, v117
	v_cvt_f32_i32_e32 v128, v118
	v_cvt_f32_i32_e32 v139, v119
	v_cvt_f32_i32_e32 v140, v120
	v_cvt_f32_i32_e32 v145, v121
	v_cvt_f32_i32_e32 v146, v122
	.loc	1 650 31                        ; ragged.py:650:31
	v_wmma_i32_16x16x16_iu4 v[115:122], v[125:126], v[131:132], v[107:114] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[115:122], v[129:130], v[133:134], v[115:122] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v107, v115
	.loc	1 664 25                        ; ragged.py:664:25
	v_mul_lo_u32 v115, v67, s34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v108, v116
	.loc	1 664 25                        ; ragged.py:664:25
	v_mul_lo_u32 v116, v68, s34
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v109, v117
	.loc	1 664 25                        ; ragged.py:664:25
	v_mul_lo_u32 v117, v70, s34
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v110, v118
	.loc	1 664 25                        ; ragged.py:664:25
	v_mul_lo_u32 v118, v71, s34
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v111, v119
	.loc	1 670 40                        ; ragged.py:670:40
	v_add_lshl_u32 v119, v96, s25, 1
	.loc	1 663 40                        ; ragged.py:663:40
	v_add_lshl_u32 v115, s24, v115, 1
	v_add_lshl_u32 v116, s24, v116, 1
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v112, v120
	.loc	1 663 40                        ; ragged.py:663:40
	v_add_lshl_u32 v117, s24, v117, 1
	.loc	1 670 40                        ; ragged.py:670:40
	v_cndmask_b32_e64 v119, 0x80000000, v119, s20
	.loc	1 663 40                        ; ragged.py:663:40
	v_add_lshl_u32 v118, s24, v118, 1
	v_cndmask_b32_e64 v115, 0x80000000, v115, s4
	v_cndmask_b32_e64 v116, 0x80000000, v116, s3
	v_cndmask_b32_e64 v117, 0x80000000, v117, s2
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v113, v121
	.loc	1 663 40                        ; ragged.py:663:40
	v_cndmask_b32_e32 v118, 0x80000000, v118, vcc_lo
	.loc	1 670 40                        ; ragged.py:670:40
	buffer_load_u16 v119, v119, s[52:55], 0 offen
	.loc	1 663 40                        ; ragged.py:663:40
	s_clause 0x3
	buffer_load_u16 v115, v115, s[44:47], 0 offen
	buffer_load_u16 v116, v116, s[44:47], 0 offen
	buffer_load_u16 v117, v117, s[44:47], 0 offen
	buffer_load_u16 v118, v118, s[44:47], 0 offen
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v114, v122
	.loc	1 675 21                        ; ragged.py:675:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 677 17                        ; ragged.py:677:17
	s_add_i32 s24, s24, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 634 19                        ; ragged.py:634:19
	s_cmp_lg_u32 s24, s34
	.loc	1 670 40                        ; ragged.py:670:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v119, 16, v119
	.loc	1 663 40                        ; ragged.py:663:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v115, 16, v115
	.loc	1 675 21                        ; ragged.py:675:21
	ds_store_b32 v105, v119
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v119, v171, v115
	v_mul_f32_e32 v120, v172, v115
	v_mul_f32_e32 v121, v179, v115
	v_mul_f32_e32 v122, v180, v115
	v_mul_f32_e32 v125, v187, v115
	v_mul_f32_e32 v126, v188, v115
	v_mul_f32_e32 v129, v189, v115
	v_mul_f32_e32 v130, v190, v115
	v_mul_f32_e32 v131, v191, v115
	v_mul_f32_e32 v132, v192, v115
	v_mul_f32_e32 v133, v193, v115
	v_mul_f32_e32 v134, v194, v115
	v_mul_f32_e32 v149, v195, v115
	v_mul_f32_e32 v152, v196, v115
	v_mul_f32_e32 v157, v197, v115
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v158, v198, v115 :: v_dual_lshlrev_b32 v115, 16, v116
	.loc	1 675 21                        ; ragged.py:675:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v116, v135, v115
	v_mul_f32_e32 v135, v136, v115
	v_mul_f32_e32 v136, v141, v115
	v_mul_f32_e32 v141, v142, v115
	v_mul_f32_e32 v142, v147, v115
	v_mul_f32_e32 v147, v150, v115
	v_mul_f32_e32 v150, v153, v115
	v_mul_f32_e32 v153, v154, v115
	v_mul_f32_e32 v154, v159, v115
	v_mul_f32_e32 v159, v160, v115
	v_mul_f32_e32 v160, v165, v115
	v_mul_f32_e32 v163, v166, v115
	v_mul_f32_e32 v164, v173, v115
	v_mul_f32_e32 v165, v174, v115
	v_mul_f32_e32 v166, v181, v115
	v_mul_f32_e32 v169, v182, v115
	.loc	1 663 40                        ; ragged.py:663:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v115, 16, v117
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v117, 16, v118
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v145, v145, v117
	v_mul_f32_e32 v146, v146, v117
	v_mul_f32_e32 v170, v108, v117
	v_mul_f32_e32 v171, v109, v117
	v_mul_f32_e32 v118, v137, v115
	v_mul_f32_e32 v172, v110, v117
	v_mul_f32_e32 v177, v111, v117
	v_mul_f32_e32 v178, v112, v117
	v_mul_f32_e32 v179, v113, v117
	v_mul_f32_e32 v137, v138, v115
	v_mul_f32_e32 v138, v143, v115
	v_mul_f32_e32 v143, v144, v115
	v_mul_f32_e32 v144, v148, v115
	v_mul_f32_e32 v148, v151, v115
	v_mul_f32_e32 v151, v155, v115
	v_mul_f32_e32 v155, v156, v115
	v_mul_f32_e32 v156, v161, v115
	v_mul_f32_e32 v161, v162, v115
	v_mul_f32_e32 v162, v167, v115
	v_dual_mul_f32 v167, v168, v115 :: v_dual_mul_f32 v168, v107, v117
	v_mul_f32_e32 v180, v114, v117
	.loc	1 675 21                        ; ragged.py:675:21
	ds_load_b128 v[107:110], v106
	ds_load_b128 v[111:114], v106 offset:16
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v123, v123, v117
	v_mul_f32_e32 v124, v124, v117
	v_mul_f32_e32 v127, v127, v117
	v_mul_f32_e32 v128, v128, v117
	v_mul_f32_e32 v139, v139, v117
	v_dual_mul_f32 v140, v140, v117 :: v_dual_mul_f32 v173, v175, v115
	v_mul_f32_e32 v175, v183, v115
	v_mul_f32_e32 v174, v176, v115
	v_mul_f32_e32 v176, v184, v115
	.loc	1 676 17                        ; ragged.py:676:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v66, v119, v107
	v_dual_fmac_f32 v94, v120, v108 :: v_dual_fmac_f32 v93, v121, v109
	v_fmac_f32_e32 v92, v122, v110
	v_fmac_f32_e32 v57, v118, v107
	.loc	1 675 21                        ; ragged.py:675:21
	ds_load_b128 v[119:122], v106 offset:528
	.loc	1 676 17                        ; ragged.py:676:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v35, v145, v113
	v_dual_fmac_f32 v55, v138, v109 :: v_dual_fmac_f32 v78, v116, v107
	.loc	1 675 21                        ; ragged.py:675:21
	ds_load_b128 v[115:118], v106 offset:512
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v41, v123, v107 :: v_dual_fmac_f32 v40, v124, v108
	v_fmac_f32_e32 v39, v127, v109
	v_fmac_f32_e32 v76, v136, v109
	v_fmac_f32_e32 v38, v128, v110
	v_dual_fmac_f32 v90, v126, v112 :: v_dual_fmac_f32 v89, v129, v113
	v_fmac_f32_e32 v88, v130, v114
	v_fmac_f32_e32 v54, v143, v110
	v_dual_fmac_f32 v75, v141, v110 :: v_dual_fmac_f32 v74, v142, v111
	v_dual_fmac_f32 v73, v147, v112 :: v_dual_fmac_f32 v72, v150, v113
	v_fmac_f32_e32 v69, v153, v114
	v_dual_fmac_f32 v51, v151, v113 :: v_dual_fmac_f32 v36, v140, v112
	v_fmac_f32_e32 v34, v146, v114
	v_fmac_f32_e32 v50, v155, v114
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v37, v139, v111 :: v_dual_fmac_f32 v60, v165, v120
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v87, v131, v115 :: v_dual_fmac_f32 v58, v169, v122
	v_fmac_f32_e32 v86, v132, v116
	v_fmac_f32_e32 v56, v137, v108
	v_fmac_f32_e32 v77, v135, v108
	v_fmac_f32_e32 v85, v133, v117
	v_dual_fmac_f32 v53, v144, v111 :: v_dual_fmac_f32 v80, v157, v121
	v_dual_fmac_f32 v84, v134, v118 :: v_dual_fmac_f32 v91, v125, v111
	v_fmac_f32_e32 v46, v167, v118
	v_dual_fmac_f32 v64, v159, v116 :: v_dual_fmac_f32 v63, v160, v117
	v_dual_fmac_f32 v48, v161, v116 :: v_dual_fmac_f32 v47, v162, v117
	v_dual_fmac_f32 v33, v168, v115 :: v_dual_fmac_f32 v28, v178, v120
	v_dual_fmac_f32 v32, v170, v116 :: v_dual_fmac_f32 v31, v171, v117
	v_fmac_f32_e32 v30, v172, v118
	v_dual_fmac_f32 v82, v149, v119 :: v_dual_fmac_f32 v81, v152, v120
	v_fmac_f32_e32 v52, v148, v112
	v_fmac_f32_e32 v62, v163, v118
	v_fmac_f32_e32 v79, v158, v122
	v_fmac_f32_e32 v61, v164, v119
	v_fmac_f32_e32 v59, v166, v121
	v_dual_fmac_f32 v45, v173, v119 :: v_dual_fmac_f32 v26, v180, v122
	v_fmac_f32_e32 v43, v175, v121
	v_dual_fmac_f32 v49, v156, v115 :: v_dual_fmac_f32 v44, v174, v120
	v_fmac_f32_e32 v29, v177, v119
	v_fmac_f32_e32 v27, v179, v121
	v_dual_fmac_f32 v65, v154, v115 :: v_dual_fmac_f32 v42, v176, v122
	.loc	1 634 19                        ; ragged.py:634:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 679 9                         ; ragged.py:679:9
	v_bfe_u32 v21, v66, 16, 1
	v_bfe_u32 v22, v94, 16, 1
	v_cmp_o_f32_e64 s19, v66, v66
	.loc	1 584 36                        ; ragged.py:584:36
	v_lshrrev_b32_e32 v1, 1, v83
	.loc	1 679 9                         ; ragged.py:679:9
	v_bfe_u32 v24, v93, 16, 1
	v_add3_u32 v23, v66, v21, 0x7fff
	v_add3_u32 v22, v94, v22, 0x7fff
	v_cmp_o_f32_e64 s20, v94, v94
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v11, s21, v1
	.loc	1 679 9                         ; ragged.py:679:9
	v_add3_u32 v24, v93, v24, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v92, 16, 1
	v_cmp_o_f32_e64 s21, v93, v93
	v_bfe_u32 v25, v91, 16, 1
	v_bfe_u32 v66, v90, 16, 1
	v_cmp_o_f32_e64 s19, v92, v92
	v_add3_u32 v23, v92, v23, 0x7fff
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v20, v67, s33
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v25, v91, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v91, v91
	v_add3_u32 v66, v90, v66, 0x7fff
	v_cmp_o_f32_e64 s21, v90, v90
	v_cndmask_b16 v24.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v89, 16, 1
	v_bfe_u32 v67, v88, 16, 1
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v19, v68, s33
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s20
	v_cndmask_b16 v25.h, 0x7fff, v66.h, s21
	v_bfe_u32 v66, v87, 16, 1
	v_add3_u32 v23, v89, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v89, v89
	v_add3_u32 v67, v88, v67, 0x7fff
	v_cmp_o_f32_e64 s20, v88, v88
	v_bfe_u32 v68, v86, 16, 1
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v18, v70, s33
	.loc	1 679 9                         ; ragged.py:679:9
	v_add3_u32 v66, v87, v66, 0x7fff
	v_cmp_o_f32_e64 s21, v87, v87
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v67.h, s20
	v_bfe_u32 v67, v85, 16, 1
	v_bfe_u32 v70, v84, 16, 1
	v_add3_u32 v68, v86, v68, 0x7fff
	v_cmp_o_f32_e64 s19, v86, v86
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v17, v71, s33
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b16 v66.l, 0x7fff, v66.h, s21
	v_add3_u32 v67, v85, v67, 0x7fff
	v_cmp_o_f32_e64 s20, v85, v85
	v_add3_u32 v70, v84, v70, 0x7fff
	v_cmp_o_f32_e64 s21, v84, v84
	v_cndmask_b16 v66.h, 0x7fff, v68.h, s19
	v_bfe_u32 v68, v82, 16, 1
	v_bfe_u32 v71, v81, 16, 1
	v_cndmask_b16 v67.l, 0x7fff, v67.h, s20
	v_cndmask_b16 v67.h, 0x7fff, v70.h, s21
	v_bfe_u32 v70, v80, 16, 1
	v_add3_u32 v68, v82, v68, 0x7fff
	v_cmp_o_f32_e64 s19, v82, v82
	v_add3_u32 v71, v81, v71, 0x7fff
	v_cmp_o_f32_e64 s20, v81, v81
	v_add3_u32 v70, v80, v70, 0x7fff
	v_cmp_o_f32_e64 s21, v80, v80
	v_cndmask_b16 v68.l, 0x7fff, v68.h, s19
	v_bfe_u32 v80, v79, 16, 1
	v_cndmask_b16 v68.h, 0x7fff, v71.h, s20
	v_bfe_u32 v71, v78, 16, 1
	v_bfe_u32 v81, v77, 16, 1
	v_cndmask_b16 v70.l, 0x7fff, v70.h, s21
	v_add3_u32 v80, v79, v80, 0x7fff
	v_cmp_o_f32_e64 s19, v79, v79
	v_add3_u32 v71, v78, v71, 0x7fff
	v_cmp_o_f32_e64 s20, v78, v78
	v_add3_u32 v78, v77, v81, 0x7fff
	v_cmp_o_f32_e64 s21, v77, v77
	v_bfe_u32 v77, v76, 16, 1
	v_bfe_u32 v79, v75, 16, 1
	v_cndmask_b16 v70.h, 0x7fff, v80.h, s19
	v_cndmask_b16 v71.l, 0x7fff, v71.h, s20
	v_cndmask_b16 v71.h, 0x7fff, v78.h, s21
	v_bfe_u32 v78, v74, 16, 1
	v_add3_u32 v77, v76, v77, 0x7fff
	v_cmp_o_f32_e64 s19, v76, v76
	v_add3_u32 v76, v75, v79, 0x7fff
	v_cmp_o_f32_e64 s20, v75, v75
	v_add3_u32 v75, v74, v78, 0x7fff
	v_cmp_o_f32_e64 s21, v74, v74
	v_cndmask_b16 v74.l, 0x7fff, v77.h, s19
	v_bfe_u32 v77, v73, 16, 1
	v_cndmask_b16 v74.h, 0x7fff, v76.h, s20
	v_bfe_u32 v76, v72, 16, 1
	v_bfe_u32 v78, v69, 16, 1
	v_cmp_o_f32_e64 s19, v73, v73
	v_add3_u32 v77, v73, v77, 0x7fff
	v_cmp_o_f32_e64 s20, v72, v72
	v_add3_u32 v73, v72, v76, 0x7fff
	v_add3_u32 v72, v69, v78, 0x7fff
	v_cndmask_b16 v75.l, 0x7fff, v75.h, s21
	v_cmp_o_f32_e64 s21, v69, v69
	v_bfe_u32 v69, v65, 16, 1
	v_cndmask_b16 v72.l, 0x7fff, v73.h, s20
	v_bfe_u32 v73, v64, 16, 1
	v_cndmask_b16 v75.h, 0x7fff, v77.h, s19
	v_bfe_u32 v76, v63, 16, 1
	v_add3_u32 v69, v65, v69, 0x7fff
	v_cmp_o_f32_e64 s19, v65, v65
	v_add3_u32 v65, v64, v73, 0x7fff
	v_cmp_o_f32_e64 s20, v64, v64
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s21
	v_add3_u32 v64, v63, v76, 0x7fff
	v_cmp_o_f32_e64 s21, v63, v63
	v_cndmask_b16 v63.l, 0x7fff, v69.h, s19
	v_bfe_u32 v69, v62, 16, 1
	v_cndmask_b16 v63.h, 0x7fff, v65.h, s20
	v_bfe_u32 v65, v61, 16, 1
	v_bfe_u32 v73, v60, 16, 1
	v_cmp_o_f32_e64 s19, v62, v62
	v_add3_u32 v69, v62, v69, 0x7fff
	v_cmp_o_f32_e64 s20, v61, v61
	v_add3_u32 v62, v61, v65, 0x7fff
	v_add3_u32 v61, v60, v73, 0x7fff
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s21
	v_cmp_o_f32_e64 s21, v60, v60
	v_bfe_u32 v60, v59, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s20
	v_bfe_u32 v62, v58, 16, 1
	v_cndmask_b16 v64.h, 0x7fff, v69.h, s19
	v_bfe_u32 v65, v57, 16, 1
	v_add3_u32 v60, v59, v60, 0x7fff
	v_cmp_o_f32_e64 s19, v59, v59
	v_add3_u32 v59, v58, v62, 0x7fff
	v_cmp_o_f32_e64 s20, v58, v58
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s21
	v_add3_u32 v58, v57, v65, 0x7fff
	v_cmp_o_f32_e64 s21, v57, v57
	v_cndmask_b16 v57.l, 0x7fff, v60.h, s19
	v_bfe_u32 v60, v56, 16, 1
	v_cndmask_b16 v57.h, 0x7fff, v59.h, s20
	v_bfe_u32 v59, v55, 16, 1
	v_bfe_u32 v62, v54, 16, 1
	v_cmp_o_f32_e64 s19, v56, v56
	v_add3_u32 v60, v56, v60, 0x7fff
	v_cmp_o_f32_e64 s20, v55, v55
	v_add3_u32 v56, v55, v59, 0x7fff
	v_add3_u32 v55, v54, v62, 0x7fff
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s21
	v_cmp_o_f32_e64 s21, v54, v54
	v_bfe_u32 v54, v53, 16, 1
	v_cndmask_b16 v55.l, 0x7fff, v56.h, s20
	v_bfe_u32 v56, v52, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v60.h, s19
	v_bfe_u32 v59, v51, 16, 1
	v_add3_u32 v54, v53, v54, 0x7fff
	v_cmp_o_f32_e64 s19, v53, v53
	v_add3_u32 v53, v52, v56, 0x7fff
	v_cmp_o_f32_e64 s20, v52, v52
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s21
	v_add3_u32 v52, v51, v59, 0x7fff
	v_cmp_o_f32_e64 s21, v51, v51
	v_cndmask_b16 v51.l, 0x7fff, v54.h, s19
	v_bfe_u32 v54, v50, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s20
	v_bfe_u32 v53, v49, 16, 1
	v_bfe_u32 v56, v48, 16, 1
	v_cmp_o_f32_e64 s19, v50, v50
	v_add3_u32 v54, v50, v54, 0x7fff
	v_cmp_o_f32_e64 s20, v49, v49
	v_add3_u32 v50, v49, v53, 0x7fff
	v_add3_u32 v49, v48, v56, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v52.h, s21
	v_cmp_o_f32_e64 s21, v48, v48
	v_bfe_u32 v48, v47, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v50.h, s20
	v_bfe_u32 v50, v46, 16, 1
	v_cndmask_b16 v52.h, 0x7fff, v54.h, s19
	v_bfe_u32 v53, v45, 16, 1
	v_add3_u32 v48, v47, v48, 0x7fff
	v_cmp_o_f32_e64 s19, v47, v47
	v_add3_u32 v47, v46, v50, 0x7fff
	v_cmp_o_f32_e64 s20, v46, v46
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s21
	v_add3_u32 v46, v45, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v45, v45
	v_cndmask_b16 v45.l, 0x7fff, v48.h, s19
	v_bfe_u32 v48, v44, 16, 1
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s20
	v_bfe_u32 v47, v43, 16, 1
	v_bfe_u32 v50, v42, 16, 1
	v_cmp_o_f32_e64 s19, v44, v44
	v_add3_u32 v48, v44, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v43, v43
	v_add3_u32 v44, v43, v47, 0x7fff
	v_add3_u32 v43, v42, v50, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s21
	v_cmp_o_f32_e64 s21, v42, v42
	v_bfe_u32 v42, v41, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s20
	v_bfe_u32 v44, v40, 16, 1
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s19
	v_bfe_u32 v47, v39, 16, 1
	v_add3_u32 v42, v41, v42, 0x7fff
	v_cmp_o_f32_e64 s19, v41, v41
	v_add3_u32 v41, v40, v44, 0x7fff
	v_cmp_o_f32_e64 s20, v40, v40
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s21
	v_add3_u32 v40, v39, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v39, v39
	v_cndmask_b16 v39.l, 0x7fff, v42.h, s19
	v_bfe_u32 v42, v38, 16, 1
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s20
	v_bfe_u32 v41, v37, 16, 1
	v_bfe_u32 v44, v36, 16, 1
	v_cmp_o_f32_e64 s19, v38, v38
	v_add3_u32 v42, v38, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v37, v37
	v_add3_u32 v38, v37, v41, 0x7fff
	v_add3_u32 v37, v36, v44, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s21
	v_cmp_o_f32_e64 s21, v36, v36
	v_bfe_u32 v36, v35, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s20
	v_bfe_u32 v38, v34, 16, 1
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s19
	v_bfe_u32 v41, v33, 16, 1
	v_add3_u32 v36, v35, v36, 0x7fff
	v_cmp_o_f32_e64 s19, v35, v35
	v_add3_u32 v35, v34, v38, 0x7fff
	v_cmp_o_f32_e64 s20, v34, v34
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s21
	v_add3_u32 v34, v33, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v33, v33
	v_cndmask_b16 v33.l, 0x7fff, v36.h, s19
	v_bfe_u32 v36, v32, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s20
	v_bfe_u32 v35, v31, 16, 1
	v_bfe_u32 v38, v30, 16, 1
	v_cmp_o_f32_e64 s19, v32, v32
	v_add3_u32 v36, v32, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v31, v31
	v_add3_u32 v32, v31, v35, 0x7fff
	v_add3_u32 v31, v30, v38, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s21
	v_cmp_o_f32_e64 s21, v30, v30
	v_bfe_u32 v30, v29, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s20
	v_bfe_u32 v32, v28, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s19
	v_bfe_u32 v35, v27, 16, 1
	v_add3_u32 v30, v29, v30, 0x7fff
	v_cmp_o_f32_e64 s19, v29, v29
	v_add3_u32 v29, v28, v32, 0x7fff
	v_bfe_u32 v32, v26, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s21
	v_cmp_o_f32_e64 s20, v28, v28
	v_add3_u32 v28, v27, v35, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v27, v27
	v_add3_u32 v27, v26, v32, 0x7fff
	v_cmp_o_f32_e64 s22, v26, v26
	v_cndmask_b16 v26.l, 0x7fff, v30.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v26.h, 0x7fff, v29.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v28.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v27.h, s22
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v48, v51, v58, s19
	v_cndmask_b32_e64 v50, v58, v51, s19
	v_cndmask_b32_e64 v51, v52, v55, s19
	v_cndmask_b32_e64 v52, v55, v52, s19
	v_cndmask_b32_e64 v53, v46, v49, s19
	v_cndmask_b32_e64 v46, v49, v46, s19
	v_cndmask_b32_e64 v49, v43, v45, s19
	v_cndmask_b32_e64 v43, v45, v43, s19
	v_cndmask_b32_e64 v45, v37, v39, s19
	v_cndmask_b32_e64 v37, v39, v37, s19
	v_cndmask_b32_e64 v39, v33, v40, s19
	v_cndmask_b32_e64 v33, v40, v33, s19
	v_cndmask_b32_e64 v40, v26, v34, s19
	v_cndmask_b32_e64 v26, v34, v26, s19
	v_cndmask_b32_e64 v34, v0, v31, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v31, v0, s19
	v_cndmask_b32_e64 v31, 0x1054, v54, s19
	v_cndmask_b32_e64 v27, v25, v22, s19
	v_cndmask_b32_e64 v22, v22, v25, s19
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v16, 1, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_lshl_or_b32 v31, v31, 8, v31
	s_mov_b32 s20, 0x76543210
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v15, 2, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_lshl_or_b32 v54, v54, 8, v54
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s18, s33, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_and_b32_e32 v31, 0x540054, v31
	v_cndmask_b32_e64 v25, v23, v24, s19
	v_cndmask_b32_e64 v23, v24, v23, s19
	v_and_b32_e32 v54, 0x760076, v54
	v_cndmask_b32_e64 v28, v66, v68, s19
	v_lshl_or_b32 v31, v31, 4, v31
	v_cndmask_b32_e64 v30, v67, v70, s19
	v_cndmask_b32_e64 v35, v71, v75, s19
	v_cndmask_b32_e64 v38, v74, v72, s19
	v_cndmask_b32_e64 v42, v63, v61, s19
	v_cndmask_b32_e64 v47, v64, v57, s19
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v31, 0x5040504, v31
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s17, s33, v16
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v84, v11, v20, 1
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s16, s33, v15
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v85, v16, v20, 1
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v21.h, 0
	v_cndmask_b32_e64 v24, v68, v66, s19
	v_cndmask_b32_e64 v29, v70, v67, s19
	v_cndmask_b32_e64 v32, v75, v71, s19
	v_cndmask_b32_e64 v36, v72, v74, s19
	v_cndmask_b32_e64 v41, v61, v63, s19
	v_cndmask_b32_e64 v44, v57, v64, s19
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v47, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v52, v52, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v37, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v33, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v27, v31
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s18, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s17, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s16, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s15, s33, v14
	.loc	1 679 9                         ; ragged.py:679:9
	v_perm_b32 v22, v22, v27, v54
	v_perm_b32 v27, v23, v25, v31
	v_perm_b32 v23, v23, v25, v54
	v_perm_b32 v25, v28, v24, v31
	v_perm_b32 v24, v28, v24, v54
	v_perm_b32 v28, v30, v29, v31
	v_perm_b32 v29, v30, v29, v54
	v_perm_b32 v30, v35, v32, v31
	v_perm_b32 v32, v35, v32, v54
	v_perm_b32 v35, v38, v36, v31
	v_perm_b32 v36, v38, v36, v54
	v_perm_b32 v38, v42, v41, v31
	v_perm_b32 v41, v42, v41, v54
	v_perm_b32 v42, v47, v44, v31
	v_perm_b32 v44, v47, v44, v54
	v_perm_b32 v47, v50, v48, v31
	v_perm_b32 v48, v50, v48, v54
	v_perm_b32 v50, v52, v51, v31
	v_perm_b32 v51, v52, v51, v54
	v_perm_b32 v52, v46, v53, v31
	v_perm_b32 v46, v46, v53, v54
	v_perm_b32 v53, v43, v49, v31
	v_perm_b32 v43, v43, v49, v54
	v_perm_b32 v49, v37, v45, v31
	v_perm_b32 v37, v37, v45, v54
	v_perm_b32 v45, v33, v39, v31
	v_perm_b32 v33, v33, v39, v54
	v_perm_b32 v39, v26, v40, v31
	v_perm_b32 v31, v0, v34, v31
	v_perm_b32 v0, v0, v34, v54
	v_mov_b16_e32 v34.l, v55.h
	v_mov_b16_e32 v34.h, v21.h
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s26
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 679 9                         ; ragged.py:679:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s14, s33, v13
	v_cmp_gt_i32_e64 s13, s33, v12
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v21.l, v22.h
	s_clause 0x1
	buffer_store_b16 v34, v85, s[20:23], 0 offen
	buffer_store_b16 v22, v86, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s15, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s12, s33, v10
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v34, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v12, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s14, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v84, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s13, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s11, s33, v9
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s12, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_perm_b32 v26, v26, v40, v54
	v_mov_b16_e32 v54.l, v27.h
	v_mov_b16_e32 v54.h, v21.h
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s10, s33, v8
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v40.h, v21.h
	v_mov_b16_e32 v56.h, v21.h
	v_mov_b16_e32 v57.h, v21.h
	v_mov_b16_e32 v58.h, v21.h
	v_mov_b16_e32 v59.h, v21.h
	v_mov_b16_e32 v60.h, v21.h
	v_mov_b16_e32 v61.h, v21.h
	v_mov_b16_e32 v62.h, v21.h
	v_mov_b16_e32 v63.h, v21.h
	v_mov_b16_e32 v64.h, v21.h
	v_mov_b16_e32 v65.h, v21.h
	v_mov_b16_e32 v66.h, v21.h
	v_mov_b16_e32 v67.h, v21.h
	v_mov_b16_e32 v68.h, v21.h
	v_mov_b16_e32 v69.h, v21.h
	v_mov_b16_e32 v70.h, v21.h
	v_mov_b16_e32 v71.h, v21.h
	v_mov_b16_e32 v72.h, v21.h
	v_mov_b16_e32 v73.h, v21.h
	v_mov_b16_e32 v74.h, v21.h
	v_mov_b16_e32 v75.h, v21.h
	v_mov_b16_e32 v76.h, v21.h
	v_mov_b16_e32 v77.h, v21.h
	v_mov_b16_e32 v78.h, v21.h
	v_mov_b16_e32 v79.h, v21.h
	v_mov_b16_e32 v80.h, v21.h
	v_mov_b16_e32 v81.h, v21.h
	v_mov_b16_e32 v82.h, v21.h
	v_mov_b16_e32 v83.h, v21.h
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	s_clause 0x1
	buffer_store_b16 v21, v34, s[20:23], 0 offen
	buffer_store_b16 v27, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v9, v20, 1
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s9, s33, v7
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s11, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s8, s33, v6
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v40.l, v23.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v23, v84, s[20:23], 0 offen
	v_add_lshl_u32 v23, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s10, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v27, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s9, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s7, s33, v5
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s8, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v57.l, v25.h
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s6, s33, v4
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s19
	s_clause 0x1
	buffer_store_b16 v40, v21, s[20:23], 0 offen
	buffer_store_b16 v25, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v5, v20, 1
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s5, s33, v3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s7, s4
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[20:23], 0 offen
	buffer_store_b16 v24, v27, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s6, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v56.l, v24.h
	v_add_lshl_u32 v24, v2, v20, 1
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s5, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s1, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v59.l, v28.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[20:23], 0 offen
	buffer_store_b16 v28, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v11, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s0, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v22, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s18, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v58.l, v29.h
	s_clause 0x1
	buffer_store_b16 v59, v23, s[20:23], 0 offen
	buffer_store_b16 v29, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v15, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s17, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v61.l, v30.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s16, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v30, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v14, v19, 1
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s15, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v61, v22, s[20:23], 0 offen
	buffer_store_b16 v32, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s14, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v60.l, v32.h
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s13, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v63.l, v35.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s12, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[20:23], 0 offen
	buffer_store_b16 v35, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v9, v19, 1
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s11, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v63, v22, s[20:23], 0 offen
	buffer_store_b16 v36, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s10, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v62.l, v36.h
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s9, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v65.l, v38.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s8, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[20:23], 0 offen
	buffer_store_b16 v38, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v5, v19, 1
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s7, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v65, v22, s[20:23], 0 offen
	buffer_store_b16 v41, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s6, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v64.l, v41.h
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s5, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s1, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v67.l, v42.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	s_clause 0x1
	buffer_store_b16 v64, v20, s[20:23], 0 offen
	buffer_store_b16 v42, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v11, v18, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s0, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v21, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s18, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v66.l, v44.h
	s_clause 0x1
	buffer_store_b16 v67, v22, s[20:23], 0 offen
	buffer_store_b16 v44, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v15, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s17, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v69.l, v47.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s16, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[20:23], 0 offen
	buffer_store_b16 v47, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v14, v18, 1
	v_add_lshl_u32 v20, v13, v18, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s15, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[20:23], 0 offen
	buffer_store_b16 v48, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s14, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v68.l, v48.h
	v_add_lshl_u32 v22, v10, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s13, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v71.l, v50.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s12, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[20:23], 0 offen
	buffer_store_b16 v50, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v9, v18, 1
	v_add_lshl_u32 v20, v8, v18, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s11, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[20:23], 0 offen
	buffer_store_b16 v51, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s10, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v70.l, v51.h
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s9, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v73.l, v52.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s8, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v70, v19, s[20:23], 0 offen
	buffer_store_b16 v52, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v5, v18, 1
	v_add_lshl_u32 v20, v4, v18, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s7, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[20:23], 0 offen
	buffer_store_b16 v46, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s6, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v22, v2, v18, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s5, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v72.l, v46.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v74.l, v43.h
	v_mov_b16_e32 v75.l, v53.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v16, v16, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v15, v15, v17, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x5
	buffer_store_b16 v72, v19, s[20:23], 0 offen
	buffer_store_b16 v53, v20, s[20:23], 0 offen
	buffer_store_b16 v75, v21, s[20:23], 0 offen
	buffer_store_b16 v43, v22, s[20:23], 0 offen
	buffer_store_b16 v74, v18, s[20:23], 0 offen
	buffer_store_b16 v49, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v13, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v5, v5, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_add_lshl_u32 v1, v1, v17, 1
	v_mov_b16_e32 v76.l, v37.h
	v_mov_b16_e32 v77.l, v49.h
	v_mov_b16_e32 v78.l, v33.h
	v_mov_b16_e32 v79.l, v45.h
	v_mov_b16_e32 v80.l, v26.h
	v_mov_b16_e32 v81.l, v39.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v83.l, v31.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v77, v16, s[20:23], 0 offen
	buffer_store_b16 v37, v15, s[20:23], 0 offen
	buffer_store_b16 v76, v11, s[20:23], 0 offen
	buffer_store_b16 v45, v13, s[20:23], 0 offen
	buffer_store_b16 v79, v12, s[20:23], 0 offen
	buffer_store_b16 v33, v10, s[20:23], 0 offen
	buffer_store_b16 v78, v9, s[20:23], 0 offen
	buffer_store_b16 v39, v8, s[20:23], 0 offen
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v26, v6, s[20:23], 0 offen
	buffer_store_b16 v80, v5, s[20:23], 0 offen
	buffer_store_b16 v31, v4, s[20:23], 0 offen
	buffer_store_b16 v83, v3, s[20:23], 0 offen
	buffer_store_b16 v0, v2, s[20:23], 0 offen
	buffer_store_b16 v82, v1, s[20:23], 0 offen
	.loc	1 544 5                         ; ragged.py:544:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 199
		.amdhsa_next_free_sgpr 56
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 199
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11148
; TotalNumSgprs: 58
; NumVgprs: 199
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 199
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
	.short	570                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     199
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
