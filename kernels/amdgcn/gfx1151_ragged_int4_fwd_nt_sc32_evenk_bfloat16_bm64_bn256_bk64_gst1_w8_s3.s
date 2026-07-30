	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
	.loc	1 583 18                        ; ragged.py:583:18
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v86, 15, v0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v32, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:570:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:570:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
.Ltmp2:
	.loc	1 572 25 is_stmt 1              ; ragged.py:572:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v51, 0
	s_xor_b32 s4, s4, s6
	.loc	1 583 32                        ; ragged.py:583:32
	v_and_b32_e32 v71, 0xf0, v0
	.loc	1 572 25                        ; ragged.py:572:25
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
	s_lshl_b64 s[14:15], s[2:3], 3
	s_add_u32 s2, s20, s14
	s_addc_u32 s3, s21, s15
	s_load_b64 s[38:39], s[2:3], 0x0
	.loc	1 581 24                        ; ragged.py:581:24
	s_add_u32 s2, s22, s14
	s_addc_u32 s3, s23, s15
	.loc	1 582 22                        ; ragged.py:582:22
	s_add_u32 s4, s24, s14
	s_addc_u32 s5, s25, s15
	.loc	1 581 24                        ; ragged.py:581:24
	s_load_b64 s[12:13], s[2:3], 0x0
	.loc	1 582 22                        ; ragged.py:582:22
	s_load_b64 s[10:11], s[4:5], 0x0
	.loc	1 584 18                        ; ragged.py:584:18
	s_lshl_b32 s24, s6, 8
	.loc	1 583 18                        ; ragged.py:583:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s38, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s39, 0, s2
	.loc	1 664 25                        ; ragged.py:664:25
	v_add_nc_u32_e32 v55, s38, v86
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
	v_cmp_gt_i64_e64 s2, s[10:11], v[1:2]
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s3, s[12:13], v[3:4]
	v_cmp_le_i64_e64 s5, s[12:13], v[5:6]
	v_cmp_le_i64_e64 s6, s[12:13], v[7:8]
	.loc	1 585 48                        ; ragged.py:585:48
	v_cmp_gt_i64_e64 s7, s[10:11], v[3:4]
	v_cmp_gt_i64_e64 s8, s[10:11], v[5:6]
	v_cmp_gt_i64_e64 s9, s[10:11], v[7:8]
	.loc	1 664 25 is_stmt 1              ; ragged.py:664:25
	v_add_nc_u32_e32 v56, 16, v55
	v_add_nc_u32_e32 v59, 32, v55
	v_add_nc_u32_e32 v60, 48, v55
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
	s_load_b64 s[6:7], s[0:1], 0x20
	.loc	1 583 32 is_stmt 1              ; ragged.py:583:32
	v_lshrrev_b32_e32 v9, 4, v71
	s_clause 0x1
	s_load_b32 s35, s[0:1], 0x50
	s_load_b256 s[40:47], s[0:1], 0x0
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v87, s24, v0
	v_dual_mov_b32 v62, 0 :: v_dual_lshlrev_b32 v33, 1, v71
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_u32 v1, s0, s38, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s39, 0, s0
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v10, s24, v9
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_u32 v3, s0, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, s0
	v_add_co_u32 v5, s0, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, s0
	v_add_co_u32 v7, s0, v1, 48
	.loc	1 579 20                        ; ragged.py:579:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s14, s6, s14
	s_addc_u32 s15, s7, s15
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_ci_u32_e64 v8, null, 0, v2, s0
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s0, s[12:13], v[1:2]
	v_cmp_le_i64_e64 s1, s[12:13], v[3:4]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s7, s[10:11], v[1:2]
	v_cmp_gt_i64_e64 s8, s[10:11], v[3:4]
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v1, 4, v0
	v_bfe_i32 v2, v0, 3, 1
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v3, 3, v0
	.loc	1 671 25 is_stmt 1              ; ragged.py:671:25
	s_load_b32 s28, s[14:15], 0x0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 583 18                        ; ragged.py:583:18
	v_dual_mov_b32 v51, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_bfe_i32 v4, v0, 7, 1
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v1, 0x70, v1
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v3, 0x700, v3
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s5, s[12:13], v[5:6]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s9, s[10:11], v[5:6]
	v_dual_mov_b32 v76, 0 :: v_dual_and_b32 v5, 0x7f, v0
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v4, 0x88, v4
	v_or_b32_e32 v26, v2, v1
	v_or3_b32 v27, v1, v3, v2
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v1, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v28, v4, v5
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v2, 2, v71
	v_dual_mov_b32 v70, 0 :: v_dual_and_b32 v1, 32, v1
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v4, s38, v9
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v32, 0, v2, v1
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v1, 16, v4
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v2, 32, v4
	.loc	1 584 18 is_stmt 1              ; ragged.py:584:18
	v_or_b32_e32 v11, 16, v10
	.loc	1 645 39                        ; ragged.py:645:39
	s_mul_i32 s29, s35, s33
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v31, 28, v3
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v3, 48, v4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v12, 32, v10
	v_or_b32_e32 v13, 48, v10
	.loc	1 645 39                        ; ragged.py:645:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s50, s29, s28
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v14, 64, v10
	v_or_b32_e32 v15, 0x50, v10
	v_mul_lo_u32 v93, v1, s35
	v_mul_lo_u32 v94, v2, s35
	v_mad_u64_u32 v[1:2], null, v10, s35, s[50:51]
	v_or_b32_e32 v16, 0x60, v10
	v_mul_lo_u32 v95, v3, s35
	v_mad_u64_u32 v[2:3], null, v11, s35, s[50:51]
	v_or_b32_e32 v17, 0x70, v10
	v_mul_lo_u32 v92, v4, s35
	v_mad_u64_u32 v[3:4], null, v12, s35, s[50:51]
	v_or_b32_e32 v18, 0x80, v10
	v_mad_u64_u32 v[4:5], null, v13, s35, s[50:51]
	v_or_b32_e32 v19, 0x90, v10
	v_mad_u64_u32 v[5:6], null, s35, v14, s[50:51]
	v_or_b32_e32 v20, 0xa0, v10
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s6, s[12:13], v[7:8]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s10, s[10:11], v[7:8]
	v_mad_u64_u32 v[6:7], null, s35, v15, s[50:51]
	.loc	1 584 18 is_stmt 1              ; ragged.py:584:18
	v_or_b32_e32 v21, 0xb0, v10
	v_mad_u64_u32 v[7:8], null, s35, v16, s[50:51]
	v_or_b32_e32 v22, 0xc0, v10
	v_mad_u64_u32 v[8:9], null, s35, v17, s[50:51]
	v_or_b32_e32 v23, 0xd0, v10
	v_or_b32_e32 v24, 0xe0, v10
	v_or_b32_e32 v25, 0xf0, v10
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 s0, s0, s7
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s7, s33, v10
	v_mad_u64_u32 v[9:10], null, s35, v18, s[50:51]
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 s1, s1, s8
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s8, s33, v11
	v_mad_u64_u32 v[10:11], null, s35, v19, s[50:51]
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 s5, s5, s9
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s9, s33, v12
	v_mad_u64_u32 v[11:12], null, s35, v20, s[50:51]
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 s6, s6, s10
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s10, s33, v13
	v_mad_u64_u32 v[12:13], null, s35, v21, s[50:51]
	v_cmp_gt_i32_e64 s11, s33, v14
	v_mad_u64_u32 v[13:14], null, s35, v22, s[50:51]
	v_cmp_gt_i32_e64 s12, s33, v15
	v_xor_b32_e32 v29, 8, v26
	v_xor_b32_e32 v30, 8, v27
	v_mad_u64_u32 v[14:15], null, s35, v23, s[50:51]
	v_cmp_gt_i32_e64 s13, s33, v16
	v_mad_u64_u32 v[15:16], null, s35, v24, s[50:51]
	v_cmp_gt_i32_e64 s14, s33, v17
	.loc	1 664 25                        ; ragged.py:664:25
	v_mul_lo_u32 v88, v55, s34
	v_mul_lo_u32 v89, v56, s34
	v_mul_lo_u32 v90, v59, s34
	v_mul_lo_u32 v91, v60, s34
	v_mad_u64_u32 v[16:17], null, s35, v25, s[50:51]
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s15, s33, v18
	v_cmp_gt_i32_e64 s16, s33, v19
	v_cmp_gt_i32_e64 s17, s33, v20
	v_cmp_gt_i32_e64 s18, s33, v21
	v_cmp_gt_i32_e64 s19, s33, v22
	v_cmp_gt_i32_e64 s20, s33, v23
	v_cmp_gt_i32_e64 s21, s33, v24
	v_cmp_gt_i32_e64 s22, s33, v25
	v_cmp_gt_i32_e64 s23, s33, v87
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v96, 0, v28
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v97, 0, v26
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v98, 0, v29
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v99, 0, v27
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v100, 0, v30
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v101, v32, v31
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v102, 0, v33
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v17, 0
	.loc	1 671 25                        ; ragged.py:671:25
	s_mul_i32 s25, s34, s28
	s_and_b32 s29, s41, 0xffff
	s_mov_b32 s28, s40
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s49, s43, 0xffff
	s_mov_b32 s48, s42
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s53, s47, 0xffff
	s_mov_b32 s52, s46
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s35, s36
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_delay_alu instid0(SALU_CYCLE_1)
	v_lshl_or_b32 v103, s35, 4, v86
	.loc	1 649 34 is_stmt 1              ; ragged.py:649:34
	s_mov_b32 s50, s30
	s_mov_b32 s51, s31
	.loc	1 670 40                        ; ragged.py:670:40
	s_mov_b32 s54, s30
	s_mov_b32 s55, s31
	v_add_nc_u32_e32 v104, v92, v103
	v_add_nc_u32_e32 v105, v93, v103
	v_add_nc_u32_e32 v106, v94, v103
	v_add_nc_u32_e32 v107, v95, v103
	v_add_nc_u32_e32 v108, v1, v103
	v_add_nc_u32_e32 v111, v4, v103
	v_add_nc_u32_e32 v112, v5, v103
	v_add_nc_u32_e32 v113, v6, v103
	v_add_nc_u32_e32 v114, v7, v103
	v_add_nc_u32_e32 v115, v8, v103
	v_add_nc_u32_e32 v116, v9, v103
	v_add_nc_u32_e32 v117, v10, v103
	v_add_nc_u32_e32 v118, v11, v103
	v_add_nc_u32_e32 v119, v12, v103
	v_add_nc_u32_e32 v120, v13, v103
	v_add_nc_u32_e32 v121, v14, v103
	v_add_nc_u32_e32 v122, v15, v103
	v_add_nc_u32_e32 v109, v2, v103
	v_add_nc_u32_e32 v110, v3, v103
	v_add_nc_u32_e32 v103, v16, v103
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s1
	v_cndmask_b32_e64 v106, 0x80000000, v106, s5
	v_cndmask_b32_e64 v107, 0x80000000, v107, s6
	v_cndmask_b32_e64 v108, 0x80000000, v108, s7
	v_cndmask_b32_e64 v111, 0x80000000, v111, s10
	v_cndmask_b32_e64 v112, 0x80000000, v112, s11
	v_cndmask_b32_e64 v113, 0x80000000, v113, s12
	v_cndmask_b32_e64 v114, 0x80000000, v114, s13
	v_cndmask_b32_e64 v115, 0x80000000, v115, s14
	v_cndmask_b32_e64 v116, 0x80000000, v116, s15
	v_cndmask_b32_e64 v117, 0x80000000, v117, s16
	v_cndmask_b32_e64 v118, 0x80000000, v118, s17
	v_cndmask_b32_e64 v119, 0x80000000, v119, s18
	v_cndmask_b32_e64 v120, 0x80000000, v120, s19
	v_cndmask_b32_e64 v121, 0x80000000, v121, s20
	v_cndmask_b32_e64 v122, 0x80000000, v122, s21
	v_cndmask_b32_e64 v109, 0x80000000, v109, s8
	v_cndmask_b32_e64 v110, 0x80000000, v110, s9
	v_cndmask_b32_e64 v103, 0x80000000, v103, s22
	.loc	1 648 34                        ; ragged.py:648:34
	s_clause 0x3
	buffer_load_u8 v123, v104, s[28:31], 0 offen
	buffer_load_u8 v124, v105, s[28:31], 0 offen
	buffer_load_u8 v125, v106, s[28:31], 0 offen
	buffer_load_u8 v126, v107, s[28:31], 0 offen
	.loc	1 649 34                        ; ragged.py:649:34
	s_clause 0xf
	buffer_load_u8 v127, v108, s[48:51], 0 offen
	buffer_load_u8 v128, v109, s[48:51], 0 offen
	buffer_load_u8 v129, v110, s[48:51], 0 offen
	buffer_load_u8 v111, v111, s[48:51], 0 offen
	buffer_load_u8 v112, v112, s[48:51], 0 offen
	buffer_load_u8 v113, v113, s[48:51], 0 offen
	buffer_load_u8 v114, v114, s[48:51], 0 offen
	buffer_load_u8 v115, v115, s[48:51], 0 offen
	buffer_load_u8 v116, v116, s[48:51], 0 offen
	buffer_load_u8 v117, v117, s[48:51], 0 offen
	buffer_load_u8 v118, v118, s[48:51], 0 offen
	buffer_load_u8 v119, v119, s[48:51], 0 offen
	buffer_load_u8 v120, v120, s[48:51], 0 offen
	buffer_load_u8 v121, v121, s[48:51], 0 offen
	buffer_load_u8 v122, v122, s[48:51], 0 offen
	buffer_load_u8 v130, v103, s[48:51], 0 offen
	.loc	1 648 34                        ; ragged.py:648:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 650 31                        ; ragged.py:650:31
	v_dual_mov_b32 v110, s43 :: v_dual_mov_b32 v109, s42
	v_dual_mov_b32 v108, s41 :: v_dual_mov_b32 v107, s40
	v_dual_mov_b32 v106, s39 :: v_dual_mov_b32 v105, s38
	v_dual_mov_b32 v104, s37 :: v_dual_mov_b32 v103, s36
	.loc	1 671 25                        ; ragged.py:671:25
	s_add_i32 s50, s35, s25
	.loc	1 663 40                        ; ragged.py:663:40
	s_mov_b32 s46, s30
	.loc	1 671 25                        ; ragged.py:671:25
	s_mul_i32 s50, s50, s33
	.loc	1 663 40                        ; ragged.py:663:40
	s_mov_b32 s47, s31
	.loc	1 648 34                        ; ragged.py:648:34
	s_waitcnt vmcnt(19)
	ds_store_b8 v96, v123
	s_waitcnt vmcnt(18)
	ds_store_b8 v96, v124 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v96, v125 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b8 v96, v126 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[141:144], v97 offset1:32
	ds_load_2addr_b64 v[173:176], v97 offset0:64 offset1:96
	ds_load_2addr_b64 v[177:180], v98 offset1:32
	ds_load_2addr_b64 v[181:184], v98 offset0:64 offset1:96
	.loc	1 649 34                        ; ragged.py:649:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v96, v127
	s_waitcnt vmcnt(14)
	ds_store_b8 v96, v128 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v96, v129 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v96, v111 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b8 v96, v112 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v96, v113 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v96, v114 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v96, v115 offset:1792
	s_waitcnt vmcnt(7)
	ds_store_b8 v96, v116 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v96, v117 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v96, v118 offset:2560
	s_waitcnt vmcnt(4)
	ds_store_b8 v96, v119 offset:2816
	s_waitcnt vmcnt(3)
	ds_store_b8 v96, v120 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v96, v121 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v96, v122 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v96, v130 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[185:188], v99 offset1:4
	.loc	1 650 31                        ; ragged.py:650:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[185:186], v[141:142], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[187:188], v[141:142], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[185:186], v[143:144], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[187:188], v[143:144], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[143:150], v[185:186], v[173:174], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[187:188], v[173:174], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[185:186], v[175:176], v[103:110] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[187:188], v[175:176], v[103:110] neg_lo:[1,1,0]
	.loc	1 649 34                        ; ragged.py:649:34
	ds_load_2addr_stride64_b64 v[103:106], v100 offset1:4
	.loc	1 663 40                        ; ragged.py:663:40
	v_add_lshl_u32 v107, s35, v88, 1
	v_add_lshl_u32 v108, s35, v89, 1
	v_add_lshl_u32 v109, s35, v90, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v107, 0x80000000, v107, s4
	v_cndmask_b32_e64 v108, 0x80000000, v108, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v109, 0x80000000, v109, s2
	.loc	1 650 31                        ; ragged.py:650:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[103:104], v[177:178], v[111:118] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[105:106], v[177:178], v[119:126] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[127:134], v[103:104], v[179:180], v[127:134] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[135:142], v[105:106], v[179:180], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[143:150], v[103:104], v[181:182], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[105:106], v[181:182], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[103:104], v[183:184], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[105:106], v[183:184], v[167:174] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v104, v111
	v_cvt_f32_i32_e32 v111, v115
	v_cvt_f32_i32_e32 v115, v119
	v_cvt_f32_i32_e32 v119, v123
	v_cvt_f32_i32_e32 v123, v127
	v_cvt_f32_i32_e32 v127, v131
	v_cvt_f32_i32_e32 v131, v135
	v_cvt_f32_i32_e32 v135, v139
	v_cvt_f32_i32_e32 v139, v143
	v_cvt_f32_i32_e32 v143, v147
	v_cvt_f32_i32_e32 v147, v151
	v_cvt_f32_i32_e32 v151, v155
	v_cvt_f32_i32_e32 v155, v159
	v_cvt_f32_i32_e32 v159, v163
	v_cvt_f32_i32_e32 v163, v167
	v_cvt_f32_i32_e32 v167, v171
	.loc	1 670 40                        ; ragged.py:670:40
	v_add_lshl_u32 v171, v87, s50, 1
	.loc	1 663 40                        ; ragged.py:663:40
	v_add_lshl_u32 v103, s35, v91, 1
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v105, v112
	v_cvt_f32_i32_e32 v106, v113
	v_cvt_f32_i32_e32 v110, v114
	.loc	1 670 40                        ; ragged.py:670:40
	v_cndmask_b32_e64 v171, 0x80000000, v171, s23
	.loc	1 663 40                        ; ragged.py:663:40
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 670 40                        ; ragged.py:670:40
	buffer_load_u16 v171, v171, s[52:55], 0 offen
	.loc	1 663 40                        ; ragged.py:663:40
	s_clause 0x3
	buffer_load_u16 v107, v107, s[44:47], 0 offen
	buffer_load_u16 v108, v108, s[44:47], 0 offen
	buffer_load_u16 v109, v109, s[44:47], 0 offen
	buffer_load_u16 v103, v103, s[44:47], 0 offen
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v112, v116
	v_cvt_f32_i32_e32 v113, v117
	v_cvt_f32_i32_e32 v114, v118
	v_cvt_f32_i32_e32 v116, v120
	v_cvt_f32_i32_e32 v117, v121
	v_cvt_f32_i32_e32 v118, v122
	v_cvt_f32_i32_e32 v120, v124
	v_cvt_f32_i32_e32 v121, v125
	v_cvt_f32_i32_e32 v122, v126
	v_cvt_f32_i32_e32 v124, v128
	v_cvt_f32_i32_e32 v126, v130
	v_cvt_f32_i32_e32 v128, v132
	v_cvt_f32_i32_e32 v130, v134
	v_cvt_f32_i32_e32 v132, v136
	v_cvt_f32_i32_e32 v136, v140
	v_cvt_f32_i32_e32 v140, v144
	v_cvt_f32_i32_e32 v144, v148
	v_cvt_f32_i32_e32 v148, v152
	v_cvt_f32_i32_e32 v152, v156
	v_cvt_f32_i32_e32 v156, v160
	v_cvt_f32_i32_e32 v160, v164
	v_cvt_f32_i32_e32 v164, v168
	v_cvt_f32_i32_e32 v168, v172
	v_cvt_f32_i32_e32 v125, v129
	v_cvt_f32_i32_e32 v129, v133
	v_cvt_f32_i32_e32 v133, v137
	v_cvt_f32_i32_e32 v134, v138
	v_cvt_f32_i32_e32 v137, v141
	v_cvt_f32_i32_e32 v138, v142
	v_cvt_f32_i32_e32 v141, v145
	v_cvt_f32_i32_e32 v142, v146
	v_cvt_f32_i32_e32 v145, v149
	v_cvt_f32_i32_e32 v146, v150
	v_cvt_f32_i32_e32 v149, v153
	v_cvt_f32_i32_e32 v150, v154
	v_cvt_f32_i32_e32 v153, v157
	v_cvt_f32_i32_e32 v154, v158
	v_cvt_f32_i32_e32 v157, v161
	v_cvt_f32_i32_e32 v158, v162
	v_cvt_f32_i32_e32 v161, v165
	v_cvt_f32_i32_e32 v162, v166
	v_cvt_f32_i32_e32 v165, v169
	v_cvt_f32_i32_e32 v166, v170
	v_cvt_f32_i32_e32 v169, v173
	v_cvt_f32_i32_e32 v170, v174
	.loc	1 675 21                        ; ragged.py:675:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 677 17                        ; ragged.py:677:17
	s_add_i32 s35, s35, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 634 19                        ; ragged.py:634:19
	s_cmp_lg_u32 s35, s34
	.loc	1 663 40                        ; ragged.py:663:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v172, 16, v108
	.loc	1 670 40                        ; ragged.py:670:40
	v_lshlrev_b32_e32 v171, 16, v171
	.loc	1 663 40                        ; ragged.py:663:40
	v_lshlrev_b32_e32 v107, 16, v107
	.loc	1 668 21                        ; ragged.py:668:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v127, v127, v172 :: v_dual_lshlrev_b32 v174, 16, v103
	v_mul_f32_e32 v128, v128, v172
	.loc	1 675 21                        ; ragged.py:675:21
	ds_store_b32 v101, v171
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 668 21                        ; ragged.py:668:21
	v_dual_mul_f32 v130, v130, v172 :: v_dual_lshlrev_b32 v173, 16, v109
	v_mul_f32_e32 v176, v106, v107
	v_mul_f32_e32 v171, v104, v107
	v_mul_f32_e32 v175, v105, v107
	v_dual_mul_f32 v177, v110, v107 :: v_dual_mul_f32 v160, v160, v174
	v_dual_mul_f32 v178, v111, v107 :: v_dual_mul_f32 v129, v129, v172
	v_dual_mul_f32 v179, v112, v107 :: v_dual_mul_f32 v162, v162, v174
	v_dual_mul_f32 v180, v113, v107 :: v_dual_mul_f32 v143, v143, v173
	v_dual_mul_f32 v181, v114, v107 :: v_dual_mul_f32 v132, v132, v172
	v_dual_mul_f32 v182, v115, v107 :: v_dual_mul_f32 v145, v145, v173
	v_dual_mul_f32 v183, v116, v107 :: v_dual_mul_f32 v134, v134, v172
	v_dual_mul_f32 v184, v117, v107 :: v_dual_mul_f32 v159, v159, v174
	v_dual_mul_f32 v185, v118, v107 :: v_dual_mul_f32 v148, v148, v173
	v_dual_mul_f32 v119, v119, v107 :: v_dual_mul_f32 v150, v150, v173
	v_dual_mul_f32 v120, v120, v107 :: v_dual_mul_f32 v161, v161, v174
	v_dual_mul_f32 v121, v121, v107 :: v_dual_mul_f32 v164, v164, v174
	v_dual_mul_f32 v122, v122, v107 :: v_dual_mul_f32 v131, v131, v172
	.loc	1 675 21                        ; ragged.py:675:21
	ds_load_b128 v[103:106], v102
	ds_load_b128 v[107:110], v102 offset:16
	ds_load_b128 v[111:114], v102 offset:512
	ds_load_b128 v[115:118], v102 offset:528
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v123, v123, v172
	v_mul_f32_e32 v124, v124, v172
	v_mul_f32_e32 v125, v125, v172
	v_dual_mul_f32 v126, v126, v172 :: v_dual_mul_f32 v139, v139, v173
	v_mul_f32_e32 v140, v140, v173
	v_mul_f32_e32 v141, v141, v173
	v_dual_mul_f32 v142, v142, v173 :: v_dual_mul_f32 v155, v155, v174
	v_mul_f32_e32 v156, v156, v174
	v_mul_f32_e32 v157, v157, v174
	v_mul_f32_e32 v158, v158, v174
	v_mul_f32_e32 v144, v144, v173
	v_dual_mul_f32 v146, v146, v173 :: v_dual_mul_f32 v133, v133, v172
	v_dual_mul_f32 v166, v166, v174 :: v_dual_mul_f32 v147, v147, v173
	v_dual_mul_f32 v136, v136, v172 :: v_dual_mul_f32 v149, v149, v173
	v_dual_mul_f32 v138, v138, v172 :: v_dual_mul_f32 v163, v163, v174
	v_dual_mul_f32 v152, v152, v173 :: v_dual_mul_f32 v165, v165, v174
	v_dual_mul_f32 v154, v154, v173 :: v_dual_mul_f32 v135, v135, v172
	v_dual_mul_f32 v168, v168, v174 :: v_dual_mul_f32 v137, v137, v172
	v_dual_mul_f32 v170, v170, v174 :: v_dual_mul_f32 v151, v151, v173
	.loc	1 676 17                        ; ragged.py:676:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v68, v124, v104 :: v_dual_mul_f32 v153, v153, v173
	v_fmac_f32_e32 v66, v126, v106
	.loc	1 668 21                        ; ragged.py:668:21
	v_dual_mul_f32 v167, v167, v174 :: v_dual_fmac_f32 v84, v176, v105
	v_dual_mul_f32 v169, v169, v174 :: v_dual_fmac_f32 v48, v139, v103
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v51, v171, v103 :: v_dual_fmac_f32 v46, v141, v105
	v_dual_fmac_f32 v85, v175, v104 :: v_dual_fmac_f32 v30, v157, v105
	v_dual_fmac_f32 v83, v177, v106 :: v_dual_fmac_f32 v32, v155, v103
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v69, v123, v103 :: v_dual_fmac_f32 v80, v180, v109
	v_dual_fmac_f32 v67, v125, v105 :: v_dual_fmac_f32 v82, v178, v107
	v_dual_fmac_f32 v47, v140, v104 :: v_dual_fmac_f32 v62, v130, v110
	v_dual_fmac_f32 v45, v142, v106 :: v_dual_fmac_f32 v64, v128, v108
	v_dual_fmac_f32 v31, v156, v104 :: v_dual_fmac_f32 v44, v143, v107
	v_dual_fmac_f32 v29, v158, v106 :: v_dual_fmac_f32 v42, v145, v109
	v_dual_fmac_f32 v81, v179, v108 :: v_dual_fmac_f32 v26, v161, v109
	v_dual_fmac_f32 v79, v181, v110 :: v_dual_fmac_f32 v28, v159, v107
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v65, v127, v107 :: v_dual_fmac_f32 v76, v184, v113
	v_dual_fmac_f32 v63, v129, v109 :: v_dual_fmac_f32 v78, v182, v111
	v_dual_fmac_f32 v43, v144, v108 :: v_dual_fmac_f32 v54, v134, v114
	v_dual_fmac_f32 v41, v146, v110 :: v_dual_fmac_f32 v58, v132, v112
	v_dual_fmac_f32 v27, v160, v108 :: v_dual_fmac_f32 v40, v147, v111
	v_dual_fmac_f32 v25, v162, v110 :: v_dual_fmac_f32 v38, v149, v113
	v_dual_fmac_f32 v77, v183, v112 :: v_dual_fmac_f32 v22, v165, v113
	v_dual_fmac_f32 v75, v185, v114 :: v_dual_fmac_f32 v24, v163, v111
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v61, v131, v111 :: v_dual_fmac_f32 v72, v121, v117
	v_dual_fmac_f32 v57, v133, v113 :: v_dual_fmac_f32 v74, v119, v115
	v_dual_fmac_f32 v39, v148, v112 :: v_dual_fmac_f32 v70, v122, v118
	v_dual_fmac_f32 v37, v150, v114 :: v_dual_fmac_f32 v52, v136, v116
	v_dual_fmac_f32 v23, v164, v112 :: v_dual_fmac_f32 v50, v137, v117
	v_dual_fmac_f32 v21, v166, v114 :: v_dual_fmac_f32 v36, v151, v115
	v_dual_fmac_f32 v73, v120, v116 :: v_dual_fmac_f32 v34, v153, v117
	v_dual_fmac_f32 v53, v135, v115 :: v_dual_fmac_f32 v18, v169, v117
	v_dual_fmac_f32 v49, v138, v118 :: v_dual_fmac_f32 v20, v167, v115
	v_fmac_f32_e32 v35, v152, v116
	v_fmac_f32_e32 v33, v154, v118
	v_fmac_f32_e32 v19, v168, v116
	v_fmac_f32_e32 v17, v170, v118
	.loc	1 634 19                        ; ragged.py:634:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 679 9                         ; ragged.py:679:9
	v_bfe_u32 v87, v51, 16, 1
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v86, v55, s33
	v_mul_lo_u32 v55, v60, s33
	.loc	1 679 9                         ; ragged.py:679:9
	v_bfe_u32 v60, v85, 16, 1
	v_bfe_u32 v88, v84, 16, 1
	v_add3_u32 v87, v51, v87, 0x7fff
	v_cmp_o_f32_e64 s19, v51, v51
	v_cmp_o_f32_e64 s20, v85, v85
	v_add3_u32 v51, v85, v60, 0x7fff
	v_add3_u32 v60, v84, v88, 0x7fff
	v_cmp_o_f32_e64 s21, v84, v84
	v_bfe_u32 v84, v83, 16, 1
	v_bfe_u32 v85, v82, 16, 1
	v_cndmask_b16 v51.l, 0x7fff, v87.h, s19
	v_bfe_u32 v87, v81, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s20
	v_add3_u32 v84, v83, v84, 0x7fff
	v_cmp_o_f32_e64 s19, v83, v83
	v_add3_u32 v83, v82, v85, 0x7fff
	v_cmp_o_f32_e64 s20, v82, v82
	v_add3_u32 v82, v81, v87, 0x7fff
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s21
	v_cmp_o_f32_e64 s21, v81, v81
	v_bfe_u32 v81, v80, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v83.h, s20
	v_bfe_u32 v83, v79, 16, 1
	v_cndmask_b16 v60.h, 0x7fff, v84.h, s19
	v_bfe_u32 v84, v78, 16, 1
	v_add3_u32 v81, v80, v81, 0x7fff
	v_cmp_o_f32_e64 s19, v80, v80
	v_add3_u32 v80, v79, v83, 0x7fff
	v_cmp_o_f32_e64 s20, v79, v79
	v_cndmask_b16 v82.h, 0x7fff, v82.h, s21
	v_add3_u32 v79, v78, v84, 0x7fff
	v_cmp_o_f32_e64 s21, v78, v78
	v_cndmask_b16 v78.l, 0x7fff, v81.h, s19
	v_bfe_u32 v81, v77, 16, 1
	v_cndmask_b16 v78.h, 0x7fff, v80.h, s20
	v_bfe_u32 v80, v76, 16, 1
	v_bfe_u32 v83, v75, 16, 1
	v_cmp_o_f32_e64 s19, v77, v77
	v_add3_u32 v81, v77, v81, 0x7fff
	v_cmp_o_f32_e64 s20, v76, v76
	v_add3_u32 v77, v76, v80, 0x7fff
	v_add3_u32 v76, v75, v83, 0x7fff
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s21
	v_cmp_o_f32_e64 s21, v75, v75
	v_bfe_u32 v75, v74, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v77.h, s20
	v_bfe_u32 v77, v73, 16, 1
	v_cndmask_b16 v79.h, 0x7fff, v81.h, s19
	v_bfe_u32 v80, v72, 16, 1
	v_add3_u32 v75, v74, v75, 0x7fff
	v_cmp_o_f32_e64 s19, v74, v74
	v_add3_u32 v74, v73, v77, 0x7fff
	v_cmp_o_f32_e64 s20, v73, v73
	v_cndmask_b16 v76.h, 0x7fff, v76.h, s21
	v_add3_u32 v73, v72, v80, 0x7fff
	v_cmp_o_f32_e64 s21, v72, v72
	v_cndmask_b16 v72.l, 0x7fff, v75.h, s19
	v_bfe_u32 v75, v70, 16, 1
	v_cndmask_b16 v72.h, 0x7fff, v74.h, s20
	v_bfe_u32 v74, v69, 16, 1
	v_bfe_u32 v77, v68, 16, 1
	v_cmp_o_f32_e64 s19, v70, v70
	v_add3_u32 v75, v70, v75, 0x7fff
	v_cmp_o_f32_e64 s20, v69, v69
	v_add3_u32 v70, v69, v74, 0x7fff
	v_add3_u32 v69, v68, v77, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s21
	v_cmp_o_f32_e64 s21, v68, v68
	v_bfe_u32 v68, v67, 16, 1
	v_cndmask_b16 v69.l, 0x7fff, v70.h, s20
	v_bfe_u32 v70, v66, 16, 1
	v_cndmask_b16 v73.h, 0x7fff, v75.h, s19
	v_bfe_u32 v74, v65, 16, 1
	v_add3_u32 v68, v67, v68, 0x7fff
	v_cmp_o_f32_e64 s19, v67, v67
	v_add3_u32 v67, v66, v70, 0x7fff
	v_cmp_o_f32_e64 s20, v66, v66
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s21
	v_add3_u32 v66, v65, v74, 0x7fff
	v_cmp_o_f32_e64 s21, v65, v65
	v_cndmask_b16 v65.l, 0x7fff, v68.h, s19
	v_bfe_u32 v68, v64, 16, 1
	v_cndmask_b16 v65.h, 0x7fff, v67.h, s20
	v_bfe_u32 v67, v63, 16, 1
	v_bfe_u32 v70, v62, 16, 1
	v_cmp_o_f32_e64 s19, v64, v64
	v_add3_u32 v68, v64, v68, 0x7fff
	v_cmp_o_f32_e64 s20, v63, v63
	v_add3_u32 v64, v63, v67, 0x7fff
	v_add3_u32 v63, v62, v70, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v66.h, s21
	v_cmp_o_f32_e64 s21, v62, v62
	v_bfe_u32 v62, v61, 16, 1
	v_cndmask_b16 v63.l, 0x7fff, v64.h, s20
	v_bfe_u32 v64, v58, 16, 1
	v_cndmask_b16 v66.h, 0x7fff, v68.h, s19
	v_bfe_u32 v67, v57, 16, 1
	v_add3_u32 v62, v61, v62, 0x7fff
	v_cmp_o_f32_e64 s19, v61, v61
	v_add3_u32 v61, v58, v64, 0x7fff
	v_cmp_o_f32_e64 s20, v58, v58
	v_cndmask_b16 v63.h, 0x7fff, v63.h, s21
	v_add3_u32 v58, v57, v67, 0x7fff
	v_cmp_o_f32_e64 s21, v57, v57
	v_cndmask_b16 v57.l, 0x7fff, v62.h, s19
	v_bfe_u32 v62, v54, 16, 1
	v_cndmask_b16 v57.h, 0x7fff, v61.h, s20
	v_bfe_u32 v61, v53, 16, 1
	v_bfe_u32 v64, v52, 16, 1
	v_cmp_o_f32_e64 s19, v54, v54
	v_add3_u32 v62, v54, v62, 0x7fff
	v_cmp_o_f32_e64 s20, v53, v53
	v_add3_u32 v54, v53, v61, 0x7fff
	v_add3_u32 v53, v52, v64, 0x7fff
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s21
	v_cmp_o_f32_e64 s21, v52, v52
	v_bfe_u32 v52, v50, 16, 1
	v_cndmask_b16 v53.l, 0x7fff, v54.h, s20
	v_bfe_u32 v54, v49, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v62.h, s19
	v_bfe_u32 v61, v48, 16, 1
	v_add3_u32 v52, v50, v52, 0x7fff
	v_cmp_o_f32_e64 s19, v50, v50
	v_add3_u32 v50, v49, v54, 0x7fff
	v_cmp_o_f32_e64 s20, v49, v49
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s21
	v_add3_u32 v49, v48, v61, 0x7fff
	v_cmp_o_f32_e64 s21, v48, v48
	v_cndmask_b16 v48.l, 0x7fff, v52.h, s19
	v_bfe_u32 v52, v47, 16, 1
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s20
	v_bfe_u32 v50, v46, 16, 1
	v_bfe_u32 v54, v45, 16, 1
	v_cmp_o_f32_e64 s19, v47, v47
	v_add3_u32 v52, v47, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v46, v46
	v_add3_u32 v47, v46, v50, 0x7fff
	v_add3_u32 v46, v45, v54, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s21
	v_cmp_o_f32_e64 s21, v45, v45
	v_bfe_u32 v45, v44, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s20
	v_bfe_u32 v47, v43, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v52.h, s19
	v_bfe_u32 v50, v42, 16, 1
	v_add3_u32 v45, v44, v45, 0x7fff
	v_cmp_o_f32_e64 s19, v44, v44
	v_add3_u32 v44, v43, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v43, v43
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s21
	v_add3_u32 v43, v42, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v42, v42
	v_cndmask_b16 v42.l, 0x7fff, v45.h, s19
	v_bfe_u32 v45, v41, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s20
	v_bfe_u32 v44, v40, 16, 1
	v_bfe_u32 v47, v39, 16, 1
	v_cmp_o_f32_e64 s19, v41, v41
	v_add3_u32 v45, v41, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v40, v40
	v_add3_u32 v41, v40, v44, 0x7fff
	v_add3_u32 v40, v39, v47, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s21
	v_cmp_o_f32_e64 s21, v39, v39
	v_bfe_u32 v39, v38, 16, 1
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s20
	v_bfe_u32 v41, v37, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s19
	v_bfe_u32 v44, v36, 16, 1
	v_add3_u32 v39, v38, v39, 0x7fff
	v_cmp_o_f32_e64 s19, v38, v38
	v_add3_u32 v38, v37, v41, 0x7fff
	v_cmp_o_f32_e64 s20, v37, v37
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s21
	v_add3_u32 v37, v36, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v36, v36
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s19
	v_bfe_u32 v39, v35, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s20
	v_bfe_u32 v38, v34, 16, 1
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e64 s19, v35, v35
	v_add3_u32 v39, v35, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v34, v34
	v_add3_u32 v35, v34, v38, 0x7fff
	v_add3_u32 v34, v33, v41, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s21
	v_cmp_o_f32_e64 s21, v33, v33
	v_bfe_u32 v33, v32, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s20
	v_bfe_u32 v35, v31, 16, 1
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s19
	v_bfe_u32 v38, v30, 16, 1
	v_add3_u32 v33, v32, v33, 0x7fff
	v_cmp_o_f32_e64 s19, v32, v32
	v_add3_u32 v32, v31, v35, 0x7fff
	v_cmp_o_f32_e64 s20, v31, v31
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s21
	v_add3_u32 v31, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v30, v30
	v_cndmask_b16 v30.l, 0x7fff, v33.h, s19
	v_bfe_u32 v33, v29, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s20
	v_bfe_u32 v32, v28, 16, 1
	v_bfe_u32 v35, v27, 16, 1
	v_cmp_o_f32_e64 s19, v29, v29
	v_add3_u32 v33, v29, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v28, v28
	v_add3_u32 v29, v28, v32, 0x7fff
	v_add3_u32 v28, v27, v35, 0x7fff
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s21
	v_cmp_o_f32_e64 s21, v27, v27
	v_bfe_u32 v27, v26, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s20
	v_bfe_u32 v29, v25, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s19
	v_bfe_u32 v32, v24, 16, 1
	v_add3_u32 v27, v26, v27, 0x7fff
	v_cmp_o_f32_e64 s19, v26, v26
	v_add3_u32 v26, v25, v29, 0x7fff
	v_cmp_o_f32_e64 s20, v25, v25
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s21
	v_add3_u32 v25, v24, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v24, v24
	v_cndmask_b16 v24.l, 0x7fff, v27.h, s19
	v_bfe_u32 v27, v23, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s20
	v_bfe_u32 v26, v22, 16, 1
	v_bfe_u32 v29, v21, 16, 1
	v_cmp_o_f32_e64 s19, v23, v23
	v_add3_u32 v27, v23, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v22, v22
	v_add3_u32 v23, v22, v26, 0x7fff
	v_add3_u32 v22, v21, v29, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s21
	v_cmp_o_f32_e64 s21, v21, v21
	v_bfe_u32 v21, v20, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s20
	v_bfe_u32 v23, v19, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s19
	v_bfe_u32 v26, v18, 16, 1
	v_add3_u32 v21, v20, v21, 0x7fff
	v_cmp_o_f32_e64 s19, v20, v20
	v_add3_u32 v20, v19, v23, 0x7fff
	v_bfe_u32 v23, v17, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s21
	v_cmp_o_f32_e64 s20, v19, v19
	v_add3_u32 v19, v18, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v18, v18
	v_add3_u32 v18, v17, v23, 0x7fff
	v_cmp_o_f32_e64 s22, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v21.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v17.h, 0x7fff, v20.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v19.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v18.h, s22
	v_mov_b32_e32 v50, 0x7632
	v_cndmask_b32_e64 v47, v42, v49, s19
	v_cndmask_b32_e64 v42, v49, v42, s19
	v_mov_b32_e32 v49, 0x5410
	v_cndmask_b32_e64 v44, v48, v58, s19
	v_cndmask_b32_e64 v45, v58, v48, s19
	v_cndmask_b32_e64 v48, v43, v46, s19
	v_cndmask_b32_e64 v43, v46, v43, s19
	v_cndmask_b32_e64 v46, v37, v40, s19
	v_cndmask_b32_e64 v37, v40, v37, s19
	v_cndmask_b32_e64 v40, v34, v36, s19
	v_cndmask_b32_e64 v34, v36, v34, s19
	v_cndmask_b32_e64 v36, v28, v30, s19
	v_cndmask_b32_e64 v28, v30, v28, s19
	v_cndmask_b32_e64 v30, v24, v31, s19
	v_cndmask_b32_e64 v24, v31, v24, s19
	v_cndmask_b32_e64 v31, v17, v25, s19
	v_cndmask_b32_e64 v17, v25, v17, s19
	v_cndmask_b32_e64 v25, v0, v22, s19
	v_cndmask_b32_e64 v0, v22, v0, s19
	v_cndmask_b32_e64 v22, 0x1054, v49, s19
	v_cndmask_b32_e64 v49, 0x3276, v50, s19
	.loc	1 584 36                        ; ragged.py:584:36
	v_lshrrev_b32_e32 v1, 1, v71
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v19, v51, v82, s19
	s_mov_b32 s20, 0x76543210
	v_lshl_or_b32 v22, v22, 8, v22
	v_lshl_or_b32 v49, v49, 8, v49
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v11, s24, v1
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v18, v82, v51, s19
	v_cndmask_b32_e64 v21, v60, v78, s19
	v_and_b32_e32 v22, 0x540054, v22
	v_and_b32_e32 v49, 0x760076, v49
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v16, 1, v11
	v_or_b32_e32 v15, 2, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s18, s33, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_lshl_or_b32 v22, v22, 4, v22
	v_cndmask_b32_e64 v26, v79, v72, s19
	v_cndmask_b32_e64 v29, v76, v73, s19
	v_cndmask_b32_e64 v33, v69, v66, s19
	v_cndmask_b32_e64 v38, v65, v63, s19
	v_cndmask_b32_e64 v41, v57, v53, s19
	v_permlanex16_b32 v19, v19, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v49, v49, 4, v49
	v_and_b32_e32 v22, 0x5040504, v22
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s17, s33, v16
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v83, v11, v86, 1
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s16, s33, v15
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v84, v16, v86, 1
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v71, v56, s33
	v_mul_lo_u32 v56, v59, s33
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v59.h, 0
	v_cndmask_b32_e64 v20, v78, v60, s19
	v_cndmask_b32_e64 v23, v72, v79, s19
	v_cndmask_b32_e64 v27, v73, v76, s19
	v_cndmask_b32_e64 v32, v66, v69, s19
	v_cndmask_b32_e64 v35, v63, v65, s19
	v_cndmask_b32_e64 v39, v53, v57, s19
	v_permlanex16_b32 v21, v21, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v41, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v45, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v37, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v49, 0x7060706, v49
	v_permlanex16_b32 v24, v24, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v17, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v50, v19, v18, v22
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s18, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v85, v15, v86, 1
	v_cndmask_b32_e64 v83, 0x80000000, v83, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s17, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s16, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_perm_b32 v18, v19, v18, v49
	v_perm_b32 v19, v21, v20, v22
	v_perm_b32 v20, v21, v20, v49
	v_perm_b32 v21, v26, v23, v22
	v_perm_b32 v23, v26, v23, v49
	v_perm_b32 v26, v29, v27, v22
	v_perm_b32 v27, v29, v27, v49
	v_perm_b32 v29, v33, v32, v22
	v_perm_b32 v32, v33, v32, v49
	v_perm_b32 v33, v38, v35, v22
	v_perm_b32 v35, v38, v35, v49
	v_perm_b32 v38, v41, v39, v22
	v_perm_b32 v39, v41, v39, v49
	v_perm_b32 v41, v45, v44, v22
	v_perm_b32 v44, v45, v44, v49
	v_perm_b32 v45, v42, v47, v22
	v_perm_b32 v42, v42, v47, v49
	v_perm_b32 v47, v43, v48, v22
	v_perm_b32 v43, v43, v48, v49
	v_perm_b32 v48, v37, v46, v22
	v_perm_b32 v37, v37, v46, v49
	v_perm_b32 v46, v34, v40, v22
	v_perm_b32 v34, v34, v40, v49
	v_perm_b32 v40, v28, v36, v22
	v_perm_b32 v28, v28, v36, v49
	v_perm_b32 v36, v24, v30, v22
	v_perm_b32 v24, v24, v30, v49
	v_perm_b32 v30, v17, v31, v22
	v_perm_b32 v22, v0, v25, v22
	v_perm_b32 v0, v0, v25, v49
	v_mov_b16_e32 v25.l, v50.h
	v_mov_b16_e32 v25.h, v59.h
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s15, s33, v14
	.loc	1 679 9                         ; ragged.py:679:9
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s26
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s14, s33, v13
	.loc	1 679 9                         ; ragged.py:679:9
	buffer_store_b16 v50, v83, s[20:23], 0 offen
	v_add_lshl_u32 v50, v14, v86, 1
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v59.l, v18.h
	s_clause 0x1
	buffer_store_b16 v25, v84, s[20:23], 0 offen
	buffer_store_b16 v18, v85, s[20:23], 0 offen
	v_add_lshl_u32 v18, v13, v86, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s15, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s13, s33, v12
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v25, 0x80000000, v50, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s14, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s12, s33, v10
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v50, v12, v86, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s19
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s11, s33, v9
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v83, v10, v86, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s13, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s10, s33, v8
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v59, v25, s[20:23], 0 offen
	buffer_store_b16 v19, v18, s[20:23], 0 offen
	v_add_lshl_u32 v18, v9, v86, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s12, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_perm_b32 v17, v17, v31, v49
	v_mov_b16_e32 v49.l, v19.h
	v_mov_b16_e32 v49.h, v59.h
	v_add_lshl_u32 v19, v8, v86, 1
	v_cndmask_b32_e64 v83, 0x80000000, v83, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s11, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s9, s33, v7
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s10, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v31.l, v20.h
	v_mov_b16_e32 v31.h, v59.h
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s8, s33, v6
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v49, v50, s[20:23], 0 offen
	buffer_store_b16 v20, v83, s[20:23], 0 offen
	v_add_lshl_u32 v20, v7, v86, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s19
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s7, s33, v5
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v25, v6, v86, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s9, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s6, s33, v4
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v31, v18, s[20:23], 0 offen
	buffer_store_b16 v21, v19, s[20:23], 0 offen
	v_add_lshl_u32 v18, v5, v86, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s8, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v52.l, v21.h
	v_mov_b16_e32 v52.h, v59.h
	v_add_lshl_u32 v19, v4, v86, 1
	v_cndmask_b32_e64 v25, 0x80000000, v25, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s7, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s5, s33, v3
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s6, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v51.l, v23.h
	v_mov_b16_e32 v51.h, v59.h
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v52, v20, s[20:23], 0 offen
	buffer_store_b16 v23, v25, s[20:23], 0 offen
	v_add_lshl_u32 v20, v3, v86, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s19
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v21, v2, v86, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s5, s4
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v51, v18, s[20:23], 0 offen
	buffer_store_b16 v26, v19, s[20:23], 0 offen
	v_add_lshl_u32 v18, v1, v86, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s1, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v54.l, v26.h
	v_mov_b16_e32 v54.h, v59.h
	v_add_lshl_u32 v19, v11, v71, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s0, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v53.l, v27.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s18, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v53.h, v59.h
	s_clause 0x1
	buffer_store_b16 v54, v20, s[20:23], 0 offen
	buffer_store_b16 v27, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v16, v71, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	v_add_lshl_u32 v21, v15, v71, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s17, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v53, v18, s[20:23], 0 offen
	buffer_store_b16 v29, v19, s[20:23], 0 offen
	v_add_lshl_u32 v18, v14, v71, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s16, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v58.l, v29.h
	v_mov_b16_e32 v58.h, v59.h
	v_add_lshl_u32 v19, v13, v71, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s15, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v57.l, v32.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s14, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v57.h, v59.h
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v32, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v12, v71, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	v_add_lshl_u32 v21, v10, v71, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s13, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v57, v18, s[20:23], 0 offen
	buffer_store_b16 v33, v19, s[20:23], 0 offen
	v_add_lshl_u32 v18, v9, v71, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s12, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v61.l, v33.h
	v_mov_b16_e32 v61.h, v59.h
	v_add_lshl_u32 v19, v8, v71, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s11, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v60.l, v35.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s10, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v60.h, v59.h
	s_clause 0x1
	buffer_store_b16 v61, v20, s[20:23], 0 offen
	buffer_store_b16 v35, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v7, v71, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	v_add_lshl_u32 v21, v6, v71, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s9, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v60, v18, s[20:23], 0 offen
	buffer_store_b16 v38, v19, s[20:23], 0 offen
	v_add_lshl_u32 v18, v5, v71, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s8, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v63.l, v38.h
	v_mov_b16_e32 v63.h, v59.h
	v_add_lshl_u32 v19, v4, v71, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s7, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v62.l, v39.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s6, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v62.h, v59.h
	s_clause 0x1
	buffer_store_b16 v63, v20, s[20:23], 0 offen
	buffer_store_b16 v39, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v3, v71, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	v_add_lshl_u32 v21, v2, v71, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s5, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v62, v18, s[20:23], 0 offen
	buffer_store_b16 v41, v19, s[20:23], 0 offen
	v_add_lshl_u32 v18, v1, v71, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s1, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v65.l, v41.h
	v_mov_b16_e32 v65.h, v59.h
	v_add_lshl_u32 v19, v11, v56, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s0, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v64.l, v44.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s18, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v64.h, v59.h
	s_clause 0x1
	buffer_store_b16 v65, v20, s[20:23], 0 offen
	buffer_store_b16 v44, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v16, v56, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_lshl_u32 v21, v15, v56, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s17, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v64, v18, s[20:23], 0 offen
	buffer_store_b16 v45, v19, s[20:23], 0 offen
	v_add_lshl_u32 v18, v14, v56, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s16, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v67.l, v45.h
	v_mov_b16_e32 v67.h, v59.h
	v_add_lshl_u32 v19, v13, v56, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s15, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v66.l, v42.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s14, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v66.h, v59.h
	s_clause 0x1
	buffer_store_b16 v67, v20, s[20:23], 0 offen
	buffer_store_b16 v42, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v12, v56, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_lshl_u32 v21, v10, v56, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s13, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v66, v18, s[20:23], 0 offen
	buffer_store_b16 v47, v19, s[20:23], 0 offen
	v_add_lshl_u32 v18, v9, v56, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s12, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v69.l, v47.h
	v_mov_b16_e32 v69.h, v59.h
	v_add_lshl_u32 v19, v8, v56, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s11, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v68.l, v43.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s10, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v68.h, v59.h
	s_clause 0x1
	buffer_store_b16 v69, v20, s[20:23], 0 offen
	buffer_store_b16 v43, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v7, v56, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_lshl_u32 v21, v6, v56, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s9, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v68, v18, s[20:23], 0 offen
	buffer_store_b16 v48, v19, s[20:23], 0 offen
	v_add_lshl_u32 v18, v5, v56, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s8, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v19, v4, v56, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s7, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v72.l, v48.h
	v_mov_b16_e32 v72.h, v59.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s6, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v70.l, v37.h
	v_mov_b16_e32 v70.h, v59.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b16 v72, v20, s[20:23], 0 offen
	buffer_store_b16 v37, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v3, v56, 1
	s_clause 0x1
	buffer_store_b16 v70, v18, s[20:23], 0 offen
	buffer_store_b16 v46, v19, s[20:23], 0 offen
	v_add_lshl_u32 v18, v1, v56, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s5, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v21, v2, v56, 1
	v_add_lshl_u32 v11, v11, v55, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v73.l, v34.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v73.h, v59.h
	v_mov_b16_e32 v74.l, v46.h
	v_mov_b16_e32 v74.h, v59.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v16, v16, v55, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v15, v15, v55, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x3
	buffer_store_b16 v74, v20, s[20:23], 0 offen
	buffer_store_b16 v34, v21, s[20:23], 0 offen
	buffer_store_b16 v73, v18, s[20:23], 0 offen
	buffer_store_b16 v40, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v55, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v13, v13, v55, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v12, v12, v55, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v10, v10, v55, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v9, v9, v55, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v8, v8, v55, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v7, v7, v55, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v6, v6, v55, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v5, v5, v55, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v4, v4, v55, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v3, v3, v55, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v2, v2, v55, 1
	v_add_lshl_u32 v1, v1, v55, 1
	v_mov_b16_e32 v75.l, v28.h
	v_mov_b16_e32 v75.h, v59.h
	v_mov_b16_e32 v76.l, v40.h
	v_mov_b16_e32 v76.h, v59.h
	v_mov_b16_e32 v77.l, v24.h
	v_mov_b16_e32 v77.h, v59.h
	v_mov_b16_e32 v78.l, v36.h
	v_mov_b16_e32 v78.h, v59.h
	v_mov_b16_e32 v79.l, v17.h
	v_mov_b16_e32 v79.h, v59.h
	v_mov_b16_e32 v80.l, v30.h
	v_mov_b16_e32 v80.h, v59.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v82.l, v22.h
	v_mov_b16_e32 v82.h, v59.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_mov_b16_e32 v81.l, v0.h
	v_mov_b16_e32 v81.h, v59.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v76, v16, s[20:23], 0 offen
	buffer_store_b16 v28, v15, s[20:23], 0 offen
	buffer_store_b16 v75, v11, s[20:23], 0 offen
	buffer_store_b16 v36, v13, s[20:23], 0 offen
	buffer_store_b16 v78, v12, s[20:23], 0 offen
	buffer_store_b16 v24, v10, s[20:23], 0 offen
	buffer_store_b16 v77, v9, s[20:23], 0 offen
	buffer_store_b16 v30, v8, s[20:23], 0 offen
	buffer_store_b16 v80, v7, s[20:23], 0 offen
	buffer_store_b16 v17, v6, s[20:23], 0 offen
	buffer_store_b16 v79, v5, s[20:23], 0 offen
	buffer_store_b16 v22, v4, s[20:23], 0 offen
	buffer_store_b16 v82, v3, s[20:23], 0 offen
	buffer_store_b16 v0, v2, s[20:23], 0 offen
	buffer_store_b16 v81, v1, s[20:23], 0 offen
	.loc	1 544 5                         ; ragged.py:544:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 189
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 189
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10180
; TotalNumSgprs: 58
; NumVgprs: 189
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 189
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     189
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
