	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1562 0                        ; ragged.py:1562:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[26:27], s[0:1], 0x30
.Ltmp0:
	.loc	1 1581 21 prologue_end          ; ragged.py:1581:21
	s_abs_i32 s8, s2
	.loc	1 1586 36                       ; ragged.py:1586:36
	v_and_b32_e32 v37, 15, v0
	v_and_b32_e32 v57, 16, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1578:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s26, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1579:21 ]
	s_add_i32 s4, s27, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1578:21 ]
	s_ashr_i32 s5, s3, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1579:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1578:21 ]
	s_lshr_b32 s5, s5, 27
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1579:21 ]
	s_lshr_b32 s6, s6, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1578:21 ]
	s_add_i32 s3, s3, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1579:21 ]
	s_add_i32 s4, s4, s6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1578:21 ]
	s_ashr_i32 s3, s3, 5
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1579:21 ]
	s_ashr_i32 s6, s4, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1580 28 is_stmt 1             ; ragged.py:1580:28
	s_mul_i32 s3, s6, s3
	.loc	1 1581 21                       ; ragged.py:1581:21
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s7, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s5
	s_mul_hi_u32 s7, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s7
	s_xor_b32 s7, s2, s3
	s_mul_hi_u32 s5, s8, s5
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s5, s4
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s8, s4
	s_cmp_ge_u32 s8, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s8, s4
	s_cselect_b32 s4, s9, s5
	.loc	1 1583 17                       ; ragged.py:1583:17
	s_abs_i32 s5, s6
	.loc	1 1581 21                       ; ragged.py:1581:21
	s_xor_b32 s4, s4, s7
	.loc	1 1583 17                       ; ragged.py:1583:17
	s_cvt_f32_u32 s8, s5
	.loc	1 1581 21                       ; ragged.py:1581:21
	s_sub_i32 s33, s4, s7
	.loc	1 1583 17                       ; ragged.py:1583:17
	s_sub_i32 s4, 0, s5
	.loc	1 1582 22                       ; ragged.py:1582:22
	s_mul_i32 s3, s33, s3
	.loc	1 1583 17                       ; ragged.py:1583:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 1582 16                       ; ragged.py:1582:16
	s_sub_i32 s9, s2, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 1583 17                       ; ragged.py:1583:17
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s8
	s_mul_hi_u32 s2, s8, s4
	s_abs_i32 s4, s9
	s_add_i32 s8, s8, s2
	s_load_b64 s[2:3], s[0:1], 0x20
	s_mul_hi_u32 s7, s4, s8
	s_xor_b32 s8, s9, s6
	s_mul_i32 s10, s7, s5
	s_ashr_i32 s8, s8, 31
	s_sub_i32 s4, s4, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s4, s11, s4
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s4, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_xor_b32 s5, s4, s8
	.loc	1 1592 49                       ; ragged.py:1592:49
	s_lshl_b32 s4, s33, 1
	.loc	1 1583 17                       ; ragged.py:1583:17
	s_sub_i32 s8, s5, s8
	.loc	1 1592 20                       ; ragged.py:1592:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1584 24                       ; ragged.py:1584:24
	s_mul_i32 s10, s8, s6
	.loc	1 1592 20                       ; ragged.py:1592:20
	s_lshl_b64 s[6:7], s[4:5], 2
	.loc	1 1584 17                       ; ragged.py:1584:17
	s_sub_i32 s4, s9, s10
	.loc	1 1586 18                       ; ragged.py:1586:18
	s_lshl_b32 s36, s8, 5
	.loc	1 1592 20                       ; ragged.py:1592:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s6
	s_addc_u32 s3, s3, s7
	.loc	1 1586 18                       ; ragged.py:1586:18
	v_or_b32_e32 v63, s36, v37
	.loc	1 1592 20                       ; ragged.py:1592:20
	s_load_b64 s[34:35], s[2:3], 0x0
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1586 18                       ; ragged.py:1586:18
	v_or_b32_e32 v64, 16, v63
	.loc	1 1588 20                       ; ragged.py:1588:20
	v_cmp_gt_i32_e64 s3, s26, v63
	v_cmp_gt_i32_e64 s2, s26, v64
	.loc	1 1596 15                       ; ragged.py:1596:15
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s34, s35
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1625 18                       ; ragged.py:1625:18
	s_lshl_b32 s6, s27, 4
	.loc	1 1625 9 is_stmt 0              ; ragged.py:1625:9
	v_and_b32_e32 v17, 16, v0
	v_mov_b32_e32 v13, s6
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9                           ; ragged.py:0:9
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr17
                                        ; implicit-def: $vgpr13
.LBB0_3:                                ; %Flow68
	s_load_b64 s[24:25], s[0:1], 0x28
	v_dual_mov_b32 v36, 0 :: v_dual_and_b32 v53, 0x70, v0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v72, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s37, s4, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1587 18 is_stmt 1             ; ragged.py:1587:18
	v_or_b32_e32 v8, s37, v0
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v1, 31, v0
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v2, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[9:10], null, s27, 3, v[8:9]
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v5, 1, v0
	.loc	1 1586 18                       ; ragged.py:1586:18
	v_or_b32_e32 v3, s36, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1597 53                       ; ragged.py:1597:53
	v_lshrrev_b32_e32 v4, 2, v2
	v_bfe_i32 v6, v0, 4, 1
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v7, 24, v5
	v_mad_u64_u32 v[10:11], null, s27, 5, v[8:9]
	v_mad_u64_u32 v[11:12], null, s27, 6, v[8:9]
	v_mad_u64_u32 v[12:13], null, s27, 7, v[8:9]
	v_mad_u64_u32 v[13:14], null, s27, 9, v[8:9]
	v_mad_u64_u32 v[14:15], null, s27, 10, v[8:9]
	v_mad_u64_u32 v[15:16], null, s27, 11, v[8:9]
	v_mad_u64_u32 v[16:17], null, s27, 12, v[8:9]
	v_mad_u64_u32 v[17:18], null, s27, 13, v[8:9]
	v_mad_u64_u32 v[18:19], null, s27, 14, v[8:9]
	v_mad_u64_u32 v[19:20], null, s27, 15, v[8:9]
	v_mad_u64_u32 v[20:21], null, s27, 17, v[8:9]
	v_mad_u64_u32 v[21:22], null, s27, 18, v[8:9]
	v_mad_u64_u32 v[22:23], null, s27, 19, v[8:9]
	v_mad_u64_u32 v[23:24], null, s27, 20, v[8:9]
	v_mad_u64_u32 v[24:25], null, s27, 21, v[8:9]
	v_lshrrev_b32_e32 v25, 1, v0
	v_dual_mov_b32 v67, 0 :: v_dual_lshlrev_b32 v0, 5, v0
	v_dual_mov_b32 v71, 0 :: v_dual_lshlrev_b32 v26, 5, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v25, v5, v25
	s_clause 0x1
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b32 s1, s[0:1], 0x38
	.loc	1 1588 20                       ; ragged.py:1588:20
	v_cmp_gt_i32_e64 s0, s26, v3
	v_mul_lo_u32 v3, s26, v4
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v6, 0x208, v6
	v_xor_b32_e32 v4, v7, v4
	v_dual_mov_b32 v61, 0 :: v_dual_lshlrev_b32 v2, 4, v2
	v_and_or_b32 v31, v25, 24, v0
	v_or_b32_e32 v7, v26, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v6, v4, v6
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v27, 0, v26
	v_or3_b32 v2, v26, v2, v4
	v_xor_b32_e32 v26, 8, v31
	v_xor_b32_e32 v28, 8, v7
	v_xor_b32_e32 v29, 16, v7
	v_xor_b32_e32 v30, 24, v7
	v_xor_b32_e32 v32, 0x208, v7
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v76, v27, v6
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v85, 0, v26
	v_mad_u64_u32 v[26:27], null, s27, 22, v[8:9]
	v_xor_b32_e32 v33, 0x218, v7
	v_dual_mov_b32 v60, 0 :: v_dual_lshlrev_b32 v25, 2, v53
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v0, 32, v0
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v78, 0, v28
	v_mad_u64_u32 v[27:28], null, s27, 23, v[8:9]
	v_xor_b32_e32 v34, 16, v31
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v79, 0, v29
	v_mad_u64_u32 v[28:29], null, s27, 24, v[8:9]
	v_xor_b32_e32 v35, 24, v31
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v80, 0, v30
	v_mad_u64_u32 v[29:30], null, s27, 25, v[8:9]
	v_xor_b32_e32 v36, 8, v2
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v84, 0, v31
	v_mad_u64_u32 v[30:31], null, s27, 26, v[8:9]
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v81, 0, v32
	v_mad_u64_u32 v[31:32], null, s27, 27, v[8:9]
	v_xor_b32_e32 v4, 0x210, v7
	v_dual_mov_b32 v58, 0 :: v_dual_and_b32 v5, 28, v5
	v_add3_u32 v0, 0, v25, v0
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v82, 0, v33
	v_mad_u64_u32 v[32:33], null, s27, 28, v[8:9]
	v_xor_b32_e32 v38, 16, v2
	v_xor_b32_e32 v39, 24, v2
	v_dual_mov_b32 v55, 0 :: v_dual_lshlrev_b32 v40, 1, v53
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v86, 0, v34
	v_mad_u64_u32 v[33:34], null, s27, 29, v[8:9]
	s_mov_b32 s12, 0
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v87, 0, v35
	v_mad_u64_u32 v[34:35], null, s27, 30, v[8:9]
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v89, 0, v36
	v_mad_u64_u32 v[35:36], null, s27, 31, v[8:9]
	s_lshl_b32 s44, s27, 4
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 1596 15                       ; ragged.py:1596:15
	v_add3_u32 v25, v1, v3, s36
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v77, 0, v7
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v83, 0, v4
	v_add_nc_u32_e32 v88, 0, v2
	v_add_nc_u32_e32 v92, v0, v5
	v_mov_b32_e32 v0, s12
	v_lshl_add_u32 v73, s27, 2, v8
	v_lshl_add_u32 v74, s27, 3, v8
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v75, s44, v8
	v_dual_mov_b32 v1, s13 :: v_dual_add_nc_u32 v90, 0, v38
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v91, 0, v39
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v93, 0, v40
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v5, s17 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v7, s19 :: v_dual_mov_b32 v2, s14
	v_dual_mov_b32 v3, s15 :: v_dual_mov_b32 v4, s16
	v_mov_b32_e32 v6, s18
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s38, s26, 1
	s_mul_i32 s39, s26, 3
	s_lshl_b32 s40, s26, 2
	s_mul_i32 s41, s26, 5
	s_mul_i32 s42, s26, 6
	s_mul_i32 s43, s26, 7
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s22
	s_mov_b32 s7, s23
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	.loc	1 1589 20                       ; ragged.py:1589:20
	v_cmp_gt_i32_e32 vcc_lo, s27, v8
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1597 27                       ; ragged.py:1597:27
	s_mul_i32 s13, s34, s1
	v_lshl_add_u32 v97, s27, 1, v8
	.loc	1 1598 27                       ; ragged.py:1598:27
	s_mul_i32 s12, s13, s27
	v_mad_u64_u32 v[95:96], null, s13, s26, v[25:26]
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v98, s12, v12
	v_add_nc_u32_e32 v96, s12, v10
	v_add_nc_u32_e32 v100, s12, v11
	v_add_nc_u32_e32 v94, s12, v73
	v_add_nc_u32_e32 v101, s12, v9
	.loc	1 1600 26 is_stmt 0             ; ragged.py:1600:26
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v109, s12, v13
	.loc	1 1600 26                       ; ragged.py:1600:26
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v104, s12, v17
	.loc	1 1600 26                       ; ragged.py:1600:26
	v_dual_cndmask_b32 v94, 0x80000000, v94 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	s_clause 0x4
	buffer_load_u8 v98, v98, s[4:7], 0 offen
	buffer_load_u8 v96, v96, s[4:7], 0 offen
	buffer_load_u8 v100, v100, s[4:7], 0 offen
	buffer_load_u8 v114, v94, s[4:7], 0 offen
	buffer_load_u8 v101, v101, s[4:7], 0 offen
	v_add_nc_u32_e32 v99, s27, v8
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v115, s12, v20
	v_add_nc_u32_e32 v105, s12, v19
	v_add_nc_u32_e32 v102, s12, v16
	v_add_nc_u32_e32 v106, s12, v18
	v_add_nc_u32_e32 v107, s12, v15
	v_add_nc_u32_e32 v103, s12, v8
	v_add_nc_u32_e32 v108, s12, v14
	v_add_nc_u32_e32 v110, s12, v74
	v_add_nc_u32_e32 v113, s12, v27
	v_add_nc_u32_e32 v112, s12, v24
	v_add_nc_u32_e32 v111, s12, v23
	.loc	1 1612 29 is_stmt 1             ; ragged.py:1612:29
	s_mul_i32 s13, s34, s26
	.loc	1 1600 26                       ; ragged.py:1600:26
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v94.l, 8, v98.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v94.h, 8, v96.l
	.loc	1 1600 34 is_stmt 0             ; ragged.py:1600:34
	v_add_nc_u32_e32 v96, s12, v26
	.loc	1 1600 26                       ; ragged.py:1600:26
	s_waitcnt vmcnt(2)
	v_or_b16 v98.h, v100.l, v94.l
	s_waitcnt vmcnt(1)
	v_or_b16 v98.l, v114.l, v94.h
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v94, s12, v97
	v_add_nc_u32_e32 v97, s12, v99
	v_add_nc_u32_e32 v114, s12, v22
	.loc	1 1600 26                       ; ragged.py:1600:26
	v_cndmask_b32_e32 v100, 0x80000000, v102, vcc_lo
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v94, 0x80000000, v94 :: v_dual_cndmask_b32 v97, 0x80000000, v97
	s_clause 0x1
	buffer_load_u8 v99, v94, s[4:7], 0 offen
	buffer_load_u8 v97, v97, s[4:7], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v94.l, 8, v101.l
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v101, s12, v21
	.loc	1 1600 26                       ; ragged.py:1600:26
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v97.h, v99.l, v94.l
	v_dual_cndmask_b32 v94, 0x80000000, v105 :: v_dual_cndmask_b32 v99, 0x80000000, v104
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v105, s12, v75
	.loc	1 1600 26                       ; ragged.py:1600:26
	v_cndmask_b32_e32 v102, 0x80000000, v106, vcc_lo
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v106, s12, v33
	.loc	1 1600 26                       ; ragged.py:1600:26
	v_cndmask_b32_e32 v104, 0x80000000, v107, vcc_lo
	s_clause 0x4
	buffer_load_u8 v94, v94, s[4:7], 0 offen
	buffer_load_u8 v99, v99, s[4:7], 0 offen
	buffer_load_u8 v102, v102, s[4:7], 0 offen
	buffer_load_u8 v100, v100, s[4:7], 0 offen
	buffer_load_u8 v104, v104, s[4:7], 0 offen
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v107, s12, v32
	.loc	1 1600 26                       ; ragged.py:1600:26
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v94.l, 8, v94.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v94.h, 8, v99.l
	v_cndmask_b32_e32 v99, 0x80000000, v109, vcc_lo
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v109, s12, v31
	.loc	1 1600 26                       ; ragged.py:1600:26
	s_waitcnt vmcnt(1)
	v_or_b16 v100.h, v102.l, v94.l
	v_or_b16 v100.l, v100.l, v94.h
	v_cndmask_b32_e32 v94, 0x80000000, v108, vcc_lo
	s_clause 0x1
	buffer_load_u8 v102, v94, s[4:7], 0 offen
	buffer_load_u8 v99, v99, s[4:7], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v94.l, 8, v104.l
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v108, s12, v34
	v_add_nc_u32_e32 v104, s12, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1600 26                       ; ragged.py:1600:26
	v_cndmask_b32_e32 v104, 0x80000000, v104, vcc_lo
	s_waitcnt vmcnt(0)
	v_or_b16 v99.h, v102.l, v94.l
	v_cndmask_b32_e32 v94, 0x80000000, v110, vcc_lo
	v_dual_cndmask_b32 v110, 0x80000000, v111 :: v_dual_cndmask_b32 v111, 0x80000000, v114
	v_add_nc_u32_e32 v114, s43, v95
	buffer_load_u8 v102, v94, s[4:7], 0 offen
	v_lshlrev_b16 v94.l, 8, v99.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v99.l, v102.l, v94.l
	v_cndmask_b32_e32 v94, 0x80000000, v113, vcc_lo
	v_cndmask_b32_e32 v102, 0x80000000, v112, vcc_lo
	s_clause 0x4
	buffer_load_u8 v94, v94, s[4:7], 0 offen
	buffer_load_u8 v102, v102, s[4:7], 0 offen
	buffer_load_u8 v96, v96, s[4:7], 0 offen
	buffer_load_u8 v110, v110, s[4:7], 0 offen
	buffer_load_u8 v111, v111, s[4:7], 0 offen
	v_add_nc_u32_e32 v113, s41, v95
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v94.l, 8, v94.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v94.h, 8, v102.l
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b16 v102.h, v96.l, v94.l
	s_waitcnt vmcnt(1)
	v_or_b16 v102.l, v110.l, v94.h
	v_dual_cndmask_b32 v94, 0x80000000, v101 :: v_dual_cndmask_b32 v101, 0x80000000, v115
	s_clause 0x1
	buffer_load_u8 v112, v94, s[4:7], 0 offen
	buffer_load_u8 v101, v101, s[4:7], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v94.l, 8, v111.l
	v_cndmask_b32_e32 v111, 0x80000000, v103, vcc_lo
	v_cndmask_b32_e32 v103, 0x80000000, v105, vcc_lo
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v110, s12, v29
	.loc	1 1600 26                       ; ragged.py:1600:26
	v_dual_cndmask_b32 v105, 0x80000000, v106 :: v_dual_cndmask_b32 v106, 0x80000000, v107
	v_cndmask_b32_e32 v107, 0x80000000, v108, vcc_lo
	buffer_load_u8 v103, v103, s[4:7], 0 offen
	v_dual_cndmask_b32 v108, 0x80000000, v109 :: v_dual_cndmask_b32 v109, 0x80000000, v110
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v96, s12, v30
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1600 26                       ; ragged.py:1600:26
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	s_waitcnt vmcnt(1)
	v_or_b16 v101.h, v112.l, v94.l
	.loc	1 1600 34                       ; ragged.py:1600:34
	v_add_nc_u32_e32 v94, s12, v28
	v_add_nc_u32_e32 v112, s40, v95
	.loc	1 1617 29 is_stmt 1             ; ragged.py:1617:29
	s_mul_i32 s12, s34, s27
	.loc	1 1622 13                       ; ragged.py:1622:13
	s_add_i32 s34, s34, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1600 26                       ; ragged.py:1600:26
	v_cndmask_b32_e32 v110, 0x80000000, v94, vcc_lo
	v_lshlrev_b16 v94.l, 8, v101.l
	.loc	1 1596 15                       ; ragged.py:1596:15
	s_cmp_lt_i32 s34, s35
	.loc	1 1600 26                       ; ragged.py:1600:26
	s_waitcnt vmcnt(0)
	v_or_b16 v101.l, v103.l, v94.l
	s_clause 0x4
	buffer_load_u8 v94, v104, s[4:7], 0 offen
	buffer_load_u8 v103, v105, s[4:7], 0 offen
	buffer_load_u8 v104, v107, s[4:7], 0 offen
	buffer_load_u8 v105, v106, s[4:7], 0 offen
	buffer_load_u8 v106, v108, s[4:7], 0 offen
	v_add_nc_u32_e32 v107, s39, v95
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1599 26                       ; ragged.py:1599:26
	v_cndmask_b32_e64 v107, 0x80000000, v107, s0
	.loc	1 1600 26                       ; ragged.py:1600:26
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v94.l, 8, v94.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v94.h, 8, v103.l
	s_clause 0x1
	buffer_load_u8 v96, v96, s[4:7], 0 offen
	buffer_load_u8 v103, v109, s[4:7], 0 offen
	.loc	1 1599 26                       ; ragged.py:1599:26
	v_cndmask_b32_e64 v109, 0x80000000, v112, s0
	.loc	1 1600 26                       ; ragged.py:1600:26
	s_waitcnt vmcnt(4)
	v_or_b16 v104.h, v104.l, v94.l
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v94.l, 8, v106.l
	v_or_b16 v104.l, v105.l, v94.h
	v_add_nc_u32_e32 v105, s42, v95
	s_clause 0x1
	buffer_load_u8 v106, v110, s[4:7], 0 offen
	buffer_load_u8 v108, v111, s[4:7], 0 offen
	.loc	1 1599 26                       ; ragged.py:1599:26
	v_cndmask_b32_e64 v111, 0x80000000, v114, s0
	v_cndmask_b32_e64 v110, 0x80000000, v113, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	.loc	1 1600 26                       ; ragged.py:1600:26
	s_waitcnt vmcnt(2)
	v_or_b16 v103.h, v96.l, v94.l
	v_add_nc_u32_e32 v96, s26, v95
	v_add_nc_u32_e32 v94, s38, v95
	.loc	1 1599 26                       ; ragged.py:1599:26
	v_cndmask_b32_e64 v95, 0x80000000, v95, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v96, 0x80000000, v96, s0
	v_cndmask_b32_e64 v94, 0x80000000, v94, s0
	s_clause 0x7
	buffer_load_u8 v112, v95, s[20:23], 0 offen
	buffer_load_u8 v95, v111, s[20:23], 0 offen
	buffer_load_u8 v110, v110, s[20:23], 0 offen
	buffer_load_u8 v107, v107, s[20:23], 0 offen
	buffer_load_u8 v96, v96, s[20:23], 0 offen
	buffer_load_u8 v105, v105, s[20:23], 0 offen
	buffer_load_u8 v109, v109, s[20:23], 0 offen
	buffer_load_u8 v111, v94, s[20:23], 0 offen
	.loc	1 1600 26                       ; ragged.py:1600:26
	v_lshlrev_b16 v94.l, 8, v103.l
	v_lshlrev_b16 v94.h, 8, v97.l
	.loc	1 1599 26                       ; ragged.py:1599:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1600 26                       ; ragged.py:1600:26
	s_waitcnt vmcnt(9)
	v_or_b16 v103.l, v106.l, v94.l
	s_waitcnt vmcnt(8)
	v_or_b16 v97.l, v108.l, v94.h
	.loc	1 1599 26                       ; ragged.py:1599:26
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v94.l, 8, v95.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v95.l, 8, v110.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v95.h, 8, v107.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v96.l, 8, v96.l
	s_waitcnt vmcnt(2)
	v_or_b16 v106.h, v105.l, v94.l
	s_waitcnt vmcnt(1)
	v_or_b16 v106.l, v109.l, v95.l
	s_waitcnt vmcnt(0)
	v_or_b16 v105.h, v111.l, v95.h
	v_or_b16 v105.l, v112.l, v96.l
	ds_store_b64 v76, v[105:106]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[138:139], v78
	ds_load_b64 v[140:141], v79
	ds_load_b64 v[142:143], v80
	ds_load_b64 v[110:111], v81
	ds_load_b64 v[144:145], v82
	ds_load_b64 v[146:147], v83
	ds_load_2addr_stride64_b64 v[118:121], v77 offset1:1
	.loc	1 1600 26                       ; ragged.py:1600:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v84, v[97:98]
	ds_store_b64 v85, v[99:100]
	ds_store_b64 v86, v[101:102]
	ds_store_b64 v87, v[103:104]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[122:125], v88 offset1:4
	ds_load_2addr_stride64_b64 v[126:129], v89 offset1:4
	ds_load_2addr_stride64_b64 v[130:133], v90 offset1:4
	ds_load_2addr_stride64_b64 v[134:137], v91 offset1:4
	.loc	1 1601 24                       ; ragged.py:1601:24
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[122:123], v[118:119], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[124:125], v[110:111], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[126:127], v[138:139], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[128:129], v[120:121], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[130:131], v[140:141], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[132:133], v[144:145], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[134:135], v[142:143], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[102:109], v[136:137], v[146:147], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v148, v94
	v_cvt_f32_i32_e32 v149, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v150, v96
	v_cvt_f32_i32_e32 v151, v97
	v_cvt_f32_i32_e32 v152, v98
	v_cvt_f32_i32_e32 v153, v99
	v_cvt_f32_i32_e32 v154, v100
	v_cvt_f32_i32_e32 v155, v101
	v_wmma_i32_16x16x16_iu4 v[94:101], v[122:123], v[110:111], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[110:117], v[124:125], v[118:119], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v102, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[126:127], v[120:121], v[94:101] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v103, v103
	v_wmma_i32_16x16x16_iu4 v[110:117], v[128:129], v[138:139], v[110:117] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_wmma_i32_16x16x16_iu4 v[94:101], v[130:131], v[144:145], v[94:101] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v106, v106
	v_wmma_i32_16x16x16_iu4 v[110:117], v[132:133], v[140:141], v[110:117] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_wmma_i32_16x16x16_iu4 v[94:101], v[134:135], v[146:147], v[94:101] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v109, v109
	v_wmma_i32_16x16x16_iu4 v[110:117], v[136:137], v[142:143], v[110:117] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v118, v94
	.loc	1 1616 32                       ; ragged.py:1616:32
	v_add_lshl_u32 v94, v8, s12, 1
	.loc	1 1601 24                       ; ragged.py:1601:24
	v_cvt_f32_i32_e32 v119, v95
	.loc	1 1611 32                       ; ragged.py:1611:32
	v_add_lshl_u32 v95, v63, s13, 1
	.loc	1 1601 24                       ; ragged.py:1601:24
	v_cvt_f32_i32_e32 v120, v96
	.loc	1 1611 32                       ; ragged.py:1611:32
	v_add_lshl_u32 v96, v64, s13, 1
	.loc	1 1616 32                       ; ragged.py:1616:32
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 1601 24                       ; ragged.py:1601:24
	v_cvt_f32_i32_e32 v121, v97
	.loc	1 1611 32                       ; ragged.py:1611:32
	v_cndmask_b32_e64 v95, 0x80000000, v95, s3
	.loc	1 1601 24                       ; ragged.py:1601:24
	v_cvt_f32_i32_e32 v122, v98
	.loc	1 1611 32                       ; ragged.py:1611:32
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	.loc	1 1616 32                       ; ragged.py:1616:32
	buffer_load_u16 v94, v94, s[8:11], 0 offen
	.loc	1 1611 32                       ; ragged.py:1611:32
	s_clause 0x1
	buffer_load_u16 v95, v95, s[28:31], 0 offen
	buffer_load_u16 v126, v96, s[28:31], 0 offen
	.loc	1 1601 24                       ; ragged.py:1601:24
	v_cvt_f32_i32_e32 v123, v99
	v_cvt_f32_i32_e32 v124, v100
	v_cvt_f32_i32_e32 v125, v101
	.loc	1 1621 20                       ; ragged.py:1621:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1601 24                       ; ragged.py:1601:24
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 1616 32                       ; ragged.py:1616:32
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v94, 16, v94
	.loc	1 1611 32                       ; ragged.py:1611:32
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v127, 16, v95
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v126, 16, v126
	.loc	1 1621 20                       ; ragged.py:1621:20
	ds_store_b32 v92, v94
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[94:97], v93
	ds_load_b128 v[98:101], v93 offset:16
	v_mul_f32_e32 v128, v148, v127
	v_mul_f32_e32 v118, v118, v126
	v_mul_f32_e32 v110, v110, v127
	v_mul_f32_e32 v111, v111, v127
	v_mul_f32_e32 v112, v112, v127
	v_mul_f32_e32 v113, v113, v127
	v_mul_f32_e32 v114, v114, v127
	v_mul_f32_e32 v115, v115, v127
	v_mul_f32_e32 v116, v116, v127
	v_dual_mul_f32 v117, v117, v127 :: v_dual_mul_f32 v102, v102, v126
	v_mul_f32_e32 v103, v103, v126
	v_mul_f32_e32 v104, v104, v126
	v_mul_f32_e32 v105, v105, v126
	v_mul_f32_e32 v106, v106, v126
	v_mul_f32_e32 v107, v107, v126
	v_mul_f32_e32 v108, v108, v126
	v_mul_f32_e32 v109, v109, v126
	.loc	1 1621 13 is_stmt 0             ; ragged.py:1621:13
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v65, v128, v94
	v_fmac_f32_e32 v52, v118, v94
	.loc	1 1621 20                       ; ragged.py:1621:20
	v_mul_f32_e32 v94, v119, v126
	v_mul_f32_e32 v128, v149, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1621 13                       ; ragged.py:1621:13
	v_dual_fmac_f32 v51, v94, v95 :: v_dual_mul_f32 v94, v120, v126
	v_fmac_f32_e32 v72, v128, v95
	.loc	1 1621 20                       ; ragged.py:1621:20
	v_mul_f32_e32 v128, v150, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1621 13                       ; ragged.py:1621:13
	v_fmac_f32_e32 v50, v94, v96
	.loc	1 1621 20                       ; ragged.py:1621:20
	v_dual_mul_f32 v94, v121, v126 :: v_dual_fmac_f32 v71, v128, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v128, v151, v127 :: v_dual_fmac_f32 v49, v94, v97
	v_mul_f32_e32 v94, v152, v127
	.loc	1 1621 13                       ; ragged.py:1621:13
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v70, v128, v97 :: v_dual_fmac_f32 v69, v94, v98
	.loc	1 1621 20                       ; ragged.py:1621:20
	v_mul_f32_e32 v94, v153, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1621 13                       ; ragged.py:1621:13
	v_fmac_f32_e32 v68, v94, v99
	.loc	1 1621 20                       ; ragged.py:1621:20
	v_mul_f32_e32 v94, v154, v127
	.loc	1 1621 13                       ; ragged.py:1621:13
	v_dual_fmac_f32 v67, v94, v100 :: v_dual_mul_f32 v94, v155, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v94, v101
	.loc	1 1621 20                       ; ragged.py:1621:20
	v_mul_f32_e32 v94, v122, v126
	.loc	1 1621 13                       ; ragged.py:1621:13
	v_fmac_f32_e32 v48, v94, v98
	.loc	1 1621 20                       ; ragged.py:1621:20
	v_mul_f32_e32 v94, v123, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1621 13                       ; ragged.py:1621:13
	v_dual_fmac_f32 v47, v94, v99 :: v_dual_mul_f32 v94, v124, v126
	v_fmac_f32_e32 v46, v94, v100
	.loc	1 1621 20                       ; ragged.py:1621:20
	v_mul_f32_e32 v94, v125, v126
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1621 13                       ; ragged.py:1621:13
	v_fmac_f32_e32 v45, v94, v101
	.loc	1 1621 20                       ; ragged.py:1621:20
	ds_load_b128 v[94:97], v93 offset:256
	ds_load_b128 v[98:101], v93 offset:272
	.loc	1 1621 13                       ; ragged.py:1621:13
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v62, v110, v94 :: v_dual_fmac_f32 v61, v111, v95
	v_dual_fmac_f32 v60, v112, v96 :: v_dual_fmac_f32 v59, v113, v97
	v_dual_fmac_f32 v44, v102, v94 :: v_dual_fmac_f32 v43, v103, v95
	v_dual_fmac_f32 v42, v104, v96 :: v_dual_fmac_f32 v41, v105, v97
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v58, v114, v98
	v_dual_fmac_f32 v56, v115, v99 :: v_dual_fmac_f32 v55, v116, v100
	v_dual_fmac_f32 v54, v117, v101 :: v_dual_fmac_f32 v39, v106, v98
	v_fmac_f32_e32 v38, v107, v99
	v_fmac_f32_e32 v40, v108, v100
	v_fmac_f32_e32 v36, v109, v101
	.loc	1 1596 15 is_stmt 1             ; ragged.py:1596:15
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 15 is_stmt 0                ; ragged.py:0:15
	v_mov_b32_e32 v13, s44
	v_mov_b32_e32 v17, v57
.LBB0_7:                                ; %._crit_edge
	.loc	1 1587 36 is_stmt 1             ; ragged.py:1587:36
	v_lshrrev_b32_e32 v9, 1, v53
	.loc	1 1624 23                       ; ragged.py:1624:23
	s_mul_i32 s33, s33, s26
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_bfe_u32 v22, v65, 16, 1
	.loc	1 1625 18 is_stmt 0             ; ragged.py:1625:18
	s_add_i32 s14, s36, s33
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_bfe_u32 v23, v70, 16, 1
	.loc	1 1587 36 is_stmt 1             ; ragged.py:1587:36
	v_or_b32_e32 v2, 0x45, v9
	v_or_b32_e32 v0, 0x47, v9
	v_or_b32_e32 v1, 0x46, v9
	v_or_b32_e32 v6, 0x41, v9
	v_or_b32_e32 v4, 0x43, v9
	.loc	1 1587 18 is_stmt 0             ; ragged.py:1587:18
	v_or_b32_e32 v10, s37, v2
	v_or_b32_e32 v7, s37, v0
	.loc	1 1587 36                       ; ragged.py:1587:36
	v_or_b32_e32 v3, 0x44, v9
	v_or_b32_e32 v5, 0x42, v9
	.loc	1 1587 18                       ; ragged.py:1587:18
	v_or_b32_e32 v8, s37, v1
	.loc	1 1589 20 is_stmt 1             ; ragged.py:1589:20
	v_cmp_gt_i32_e64 s1, s27, v10
	.loc	1 1587 18                       ; ragged.py:1587:18
	v_or_b32_e32 v10, s37, v6
	v_or_b32_e32 v12, s37, v4
	.loc	1 1589 20                       ; ragged.py:1589:20
	v_cmp_gt_i32_e32 vcc_lo, s27, v7
	.loc	1 1587 36                       ; ragged.py:1587:36
	v_or_b32_e32 v7, 64, v9
	.loc	1 1587 18 is_stmt 0             ; ragged.py:1587:18
	v_or_b32_e32 v11, s37, v3
	.loc	1 1589 20 is_stmt 1             ; ragged.py:1589:20
	v_cmp_gt_i32_e64 s0, s27, v8
	.loc	1 1587 18                       ; ragged.py:1587:18
	v_or_b32_e32 v8, s37, v5
	.loc	1 1589 20                       ; ragged.py:1589:20
	v_cmp_gt_i32_e64 s7, s27, v10
	.loc	1 1587 36                       ; ragged.py:1587:36
	v_or_b32_e32 v10, 6, v9
	.loc	1 1589 20                       ; ragged.py:1589:20
	v_cmp_gt_i32_e64 s5, s27, v12
	.loc	1 1587 18                       ; ragged.py:1587:18
	v_or_b32_e32 v12, s37, v7
	.loc	1 1589 20                       ; ragged.py:1589:20
	v_cmp_gt_i32_e64 s4, s27, v11
	v_cmp_gt_i32_e64 s6, s27, v8
	.loc	1 1587 36                       ; ragged.py:1587:36
	v_or_b32_e32 v8, 7, v9
	v_or_b32_e32 v11, 5, v9
	.loc	1 1587 18 is_stmt 0             ; ragged.py:1587:18
	v_or_b32_e32 v16, s37, v10
	.loc	1 1589 20 is_stmt 1             ; ragged.py:1589:20
	v_cmp_gt_i32_e64 s8, s27, v12
	.loc	1 1587 36                       ; ragged.py:1587:36
	v_or_b32_e32 v12, 4, v9
	.loc	1 1587 18 is_stmt 0             ; ragged.py:1587:18
	v_or_b32_e32 v15, s37, v8
	v_or_b32_e32 v18, s37, v11
	.loc	1 1587 36                       ; ragged.py:1587:36
	v_or_b32_e32 v14, 3, v9
	.loc	1 1589 20 is_stmt 1             ; ragged.py:1589:20
	v_cmp_gt_i32_e64 s10, s27, v16
	.loc	1 1587 36                       ; ragged.py:1587:36
	v_or_b32_e32 v16, 1, v9
	.loc	1 1587 18 is_stmt 0             ; ragged.py:1587:18
	v_or_b32_e32 v19, s37, v12
	.loc	1 1589 20 is_stmt 1             ; ragged.py:1589:20
	v_cmp_gt_i32_e64 s9, s27, v15
	v_cmp_gt_i32_e64 s11, s27, v18
	.loc	1 1587 18                       ; ragged.py:1587:18
	v_or_b32_e32 v18, s37, v14
	.loc	1 1587 36 is_stmt 0             ; ragged.py:1587:36
	v_or_b32_e32 v15, 2, v9
	.loc	1 1587 18                       ; ragged.py:1587:18
	v_or_b32_e32 v20, s37, v16
	.loc	1 1589 20 is_stmt 1             ; ragged.py:1589:20
	v_cmp_gt_i32_e64 s12, s27, v19
	.loc	1 1625 18                       ; ragged.py:1625:18
	v_mul_lo_u32 v19, s27, v37
	.loc	1 1589 20                       ; ragged.py:1589:20
	v_cmp_gt_i32_e64 s13, s27, v18
	.loc	1 1587 18                       ; ragged.py:1587:18
	v_or_b32_e32 v18, s37, v15
	.loc	1 1589 20                       ; ragged.py:1589:20
	v_cmp_gt_i32_e64 s15, s27, v20
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_bfe_u32 v20, v72, 16, 1
	.loc	1 1625 18 is_stmt 0             ; ragged.py:1625:18
	s_mul_i32 s14, s14, s27
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_cmp_o_f32_e64 s17, v65, v65
	v_cmp_o_f32_e64 s18, v72, v72
	.loc	1 1625 18                       ; ragged.py:1625:18
	v_add3_u32 v19, s14, s37, v19
	.loc	1 1589 20 is_stmt 1             ; ragged.py:1589:20
	v_cmp_gt_i32_e64 s14, s27, v18
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add3_u32 v18, v65, v22, 0x7fff
	v_bfe_u32 v22, v71, 16, 1
	v_add3_u32 v20, v72, v20, 0x7fff
	v_add3_u32 v23, v70, v23, 0x7fff
	v_cmp_o_f32_e64 s20, v70, v70
	v_bfe_u32 v24, v69, 16, 1
	v_add3_u32 v22, v71, v22, 0x7fff
	v_cmp_o_f32_e64 s19, v71, v71
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s17
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s18
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s20
	v_add3_u32 v23, v69, v24, 0x7fff
	v_bfe_u32 v24, v67, 16, 1
	v_bfe_u32 v25, v66, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s19
	v_bfe_u32 v22, v68, 16, 1
	v_cmp_o_f32_e64 s17, v69, v69
	v_add3_u32 v24, v67, v24, 0x7fff
	v_cmp_o_f32_e64 s19, v67, v67
	v_add3_u32 v25, v66, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v66, v66
	v_add3_u32 v22, v68, v22, 0x7fff
	v_cmp_o_f32_e64 s18, v68, v68
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s17
	v_bfe_u32 v23, v62, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s19
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s20
	v_bfe_u32 v25, v61, 16, 1
	v_bfe_u32 v27, v59, 16, 1
	v_bfe_u32 v26, v60, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s18
	v_add3_u32 v23, v62, v23, 0x7fff
	v_cmp_o_f32_e64 s17, v62, v62
	v_add3_u32 v25, v61, v25, 0x7fff
	v_cmp_o_f32_e64 s18, v61, v61
	v_add3_u32 v27, v59, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v59, v59
	v_bfe_u32 v28, v58, 16, 1
	v_add3_u32 v26, v60, v26, 0x7fff
	v_cmp_o_f32_e64 s19, v60, v60
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s17
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s18
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s20
	v_add3_u32 v27, v58, v28, 0x7fff
	v_bfe_u32 v28, v55, 16, 1
	v_bfe_u32 v29, v54, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s19
	v_bfe_u32 v26, v56, 16, 1
	v_cmp_o_f32_e64 s17, v58, v58
	v_add3_u32 v28, v55, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v55, v55
	v_add3_u32 v29, v54, v29, 0x7fff
	v_cmp_o_f32_e64 s20, v54, v54
	v_add3_u32 v26, v56, v26, 0x7fff
	v_cmp_o_f32_e64 s18, v56, v56
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s17
	v_bfe_u32 v27, v52, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s20
	v_bfe_u32 v29, v51, 16, 1
	v_bfe_u32 v31, v49, 16, 1
	v_bfe_u32 v30, v50, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s18
	v_add3_u32 v27, v52, v27, 0x7fff
	v_cmp_o_f32_e64 s17, v52, v52
	v_add3_u32 v29, v51, v29, 0x7fff
	v_cmp_o_f32_e64 s18, v51, v51
	v_add3_u32 v31, v49, v31, 0x7fff
	v_cmp_o_f32_e64 s20, v49, v49
	v_bfe_u32 v32, v48, 16, 1
	v_add3_u32 v30, v50, v30, 0x7fff
	v_cmp_o_f32_e64 s19, v50, v50
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s17
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s18
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s20
	v_add3_u32 v31, v48, v32, 0x7fff
	v_bfe_u32 v32, v46, 16, 1
	v_bfe_u32 v33, v45, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s19
	v_bfe_u32 v30, v47, 16, 1
	v_cmp_o_f32_e64 s17, v48, v48
	v_add3_u32 v32, v46, v32, 0x7fff
	v_cmp_o_f32_e64 s19, v46, v46
	v_add3_u32 v33, v45, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v45, v45
	v_add3_u32 v30, v47, v30, 0x7fff
	v_bfe_u32 v34, v42, 16, 1
	v_cmp_o_f32_e64 s18, v47, v47
	v_cndmask_b16 v30.l, 0x7fff, v31.h, s17
	v_bfe_u32 v31, v44, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s19
	v_cndmask_b16 v32.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v43, 16, 1
	v_bfe_u32 v35, v41, 16, 1
	v_add3_u32 v34, v42, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v42, v42
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s18
	v_add3_u32 v31, v44, v31, 0x7fff
	v_cmp_o_f32_e64 s17, v44, v44
	v_add3_u32 v33, v43, v33, 0x7fff
	v_cmp_o_f32_e64 s18, v43, v43
	v_add3_u32 v35, v41, v35, 0x7fff
	v_cmp_o_f32_e64 s20, v41, v41
	v_bfe_u32 v37, v39, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s19
	v_bfe_u32 v34, v38, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s17
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s18
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s20
	v_add3_u32 v35, v39, v37, 0x7fff
	v_bfe_u32 v37, v40, 16, 1
	v_cmp_o_f32_e64 s17, v39, v39
	v_bfe_u32 v39, v36, 16, 1
	v_add3_u32 v34, v38, v34, 0x7fff
	.loc	1 1625 18 is_stmt 0             ; ragged.py:1625:18
	v_add_nc_u32_e32 v13, v19, v13
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_cmp_o_f32_e64 s18, v38, v38
	v_add3_u32 v37, v40, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v40, v40
	v_add3_u32 v38, v36, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v36, v36
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s17
	v_cmp_eq_u32_e64 s17, 0, v17
	v_mov_b32_e32 v36, 0x5410
	v_cndmask_b16 v17.l, 0x7fff, v37.h, s19
	.loc	1 1625 18                       ; ragged.py:1625:18
	v_add_lshl_u32 v19, v19, v9, 1
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_mov_b32_e32 v37, 0x7632
	v_cndmask_b32_e64 v35, v22, v18, s17
	v_cndmask_b32_e64 v18, v18, v22, s17
	v_cndmask_b32_e64 v22, v24, v20, s17
	v_cndmask_b32_e64 v20, v20, v24, s17
	v_cndmask_b32_e64 v24, v26, v23, s17
	v_cndmask_b32_e64 v23, v23, v26, s17
	v_cndmask_b32_e64 v26, v28, v25, s17
	v_cndmask_b32_e64 v25, v25, v28, s17
	v_cndmask_b32_e64 v28, v30, v27, s17
	v_cndmask_b32_e64 v27, v27, v30, s17
	v_cndmask_b32_e64 v30, 0x1054, v36, s17
	v_add_nc_u32_e32 v50, 2, v19
	v_cndmask_b32_e64 v36, 0x3276, v37, s17
	.loc	1 1587 18 is_stmt 1             ; ragged.py:1587:18
	v_or_b32_e32 v21, s37, v9
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s18
	v_lshl_or_b32 v30, v30, 8, v30
	v_cndmask_b16 v17.h, 0x7fff, v38.h, s20
	v_lshl_or_b32 v36, v36, 8, v36
	s_mov_b32 s18, 0x76543210
	.loc	1 1589 20                       ; ragged.py:1589:20
	v_cmp_gt_i32_e64 s16, s27, v21
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_and_b32_e32 v30, 0x540054, v30
	v_cndmask_b32_e64 v37, v32, v29, s17
	v_and_b32_e32 v36, 0x760076, v36
	v_cndmask_b32_e64 v29, v29, v32, s17
	v_cndmask_b32_e64 v32, v34, v31, s17
	v_lshl_or_b32 v30, v30, 4, v30
	v_cndmask_b32_e64 v31, v31, v34, s17
	v_cndmask_b32_e64 v34, v17, v33, s17
	v_cndmask_b32_e64 v17, v33, v17, s17
	v_permlanex16_b32 v18, v18, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v33, v36, 4, v36
	v_and_b32_e32 v30, 0x5040504, v30
	v_mov_b16_e32 v21.h, 0
	v_permlanex16_b32 v20, v20, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v33, 0x7060706, v33
	v_permlanex16_b32 v29, v29, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v18, v35, v30
	.loc	1 1625 47 is_stmt 0             ; ragged.py:1625:47
	s_and_b32 s17, s3, s16
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_lshl_u32 v0, v13, v0, 1
	v_add_nc_u32_e32 v51, 4, v19
	v_cndmask_b32_e64 v52, 0x80000000, v19, s17
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s15
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_perm_b32 v18, v18, v35, v33
	v_cndmask_b32_e64 v50, 0x80000000, v50, s17
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s14
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_perm_b32 v35, v20, v22, v30
	v_perm_b32 v20, v20, v22, v33
	v_perm_b32 v22, v23, v24, v30
	v_perm_b32 v23, v23, v24, v33
	v_perm_b32 v24, v25, v26, v30
	v_perm_b32 v25, v25, v26, v33
	v_perm_b32 v26, v27, v28, v30
	v_perm_b32 v27, v27, v28, v33
	v_perm_b32 v28, v29, v37, v30
	v_perm_b32 v29, v29, v37, v33
	v_perm_b32 v37, v31, v32, v30
	v_perm_b32 v31, v31, v32, v33
	v_mov_b16_e32 v32.l, v36.h
	v_mov_b16_e32 v32.h, v21.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	v_cndmask_b32_e64 v51, 0x80000000, v51, s17
	buffer_store_b16 v36, v52, s[24:27], 0 offen
	v_add_nc_u32_e32 v36, 6, v19
	v_mov_b16_e32 v21.l, v18.h
	s_clause 0x1
	buffer_store_b16 v32, v50, s[24:27], 0 offen
	buffer_store_b16 v18, v51, s[24:27], 0 offen
	v_add_nc_u32_e32 v18, 8, v19
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s13
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_permlanex16_b32 v17, v17, s18, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v32, 0x80000000, v36, s17
	v_add_nc_u32_e32 v36, 10, v19
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s12
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_nc_u32_e32 v50, 12, v19
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s11
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_perm_b32 v30, v17, v34, v30
	v_cndmask_b32_e64 v36, 0x80000000, v36, s17
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s10
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_perm_b32 v17, v17, v34, v33
	v_mov_b16_e32 v34.l, v35.h
	v_mov_b16_e32 v34.h, v21.h
	v_cndmask_b32_e64 v50, 0x80000000, v50, s17
	s_clause 0x1
	buffer_store_b16 v21, v32, s[24:27], 0 offen
	buffer_store_b16 v35, v18, s[24:27], 0 offen
	v_add_nc_u32_e32 v18, 14, v19
	v_mov_b16_e32 v33.l, v20.h
	s_clause 0x1
	buffer_store_b16 v34, v36, s[24:27], 0 offen
	buffer_store_b16 v20, v50, s[24:27], 0 offen
	v_add_nc_u32_e32 v20, 0x80, v19
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s9
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_mov_b16_e32 v33.h, v21.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s8
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_mov_b16_e32 v38.h, v21.h
	v_mov_b16_e32 v39.h, v21.h
	v_mov_b16_e32 v40.h, v21.h
	v_mov_b16_e32 v41.h, v21.h
	v_mov_b16_e32 v42.h, v21.h
	v_mov_b16_e32 v43.h, v21.h
	v_mov_b16_e32 v44.h, v21.h
	v_mov_b16_e32 v45.h, v21.h
	v_mov_b16_e32 v46.h, v21.h
	v_mov_b16_e32 v47.h, v21.h
	v_mov_b16_e32 v48.h, v21.h
	v_mov_b16_e32 v49.h, v21.h
	v_add_nc_u32_e32 v21, 0x82, v19
	v_cndmask_b32_e64 v20, 0x80000000, v20, s17
	v_add_nc_u32_e32 v32, 0x84, v19
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s7
	.loc	1 1625 9                        ; ragged.py:1625:9
	s_clause 0x1
	buffer_store_b16 v33, v18, s[24:27], 0 offen
	buffer_store_b16 v22, v20, s[24:27], 0 offen
	v_add_nc_u32_e32 v18, 0x86, v19
	v_cndmask_b32_e64 v21, 0x80000000, v21, s17
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s6
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_nc_u32_e32 v20, 0x88, v19
	v_cndmask_b32_e64 v32, 0x80000000, v32, s17
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s5
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_mov_b16_e32 v39.l, v22.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s17
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s4
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_mov_b16_e32 v38.l, v23.h
	v_cndmask_b32_e64 v20, 0x80000000, v20, s17
	s_clause 0x1
	buffer_store_b16 v39, v21, s[24:27], 0 offen
	buffer_store_b16 v23, v32, s[24:27], 0 offen
	v_add_nc_u32_e32 v21, 0x8a, v19
	s_clause 0x1
	buffer_store_b16 v38, v18, s[24:27], 0 offen
	buffer_store_b16 v24, v20, s[24:27], 0 offen
	v_add_nc_u32_e32 v18, 0x8e, v19
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s1
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_nc_u32_e32 v22, 0x8c, v19
	v_add_lshl_u32 v9, v13, v9, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s17
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s17, s3, s0
	s_and_b32 s3, s3, vcc_lo
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_mov_b16_e32 v40.l, v25.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s3, s2, s16
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_mov_b16_e32 v41.l, v24.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s17
	v_add_lshl_u32 v16, v13, v16, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v15, v13, v15, 1
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s3, s2, s15
	.loc	1 1625 9                        ; ragged.py:1625:9
	s_clause 0x3
	buffer_store_b16 v41, v21, s[24:27], 0 offen
	buffer_store_b16 v25, v22, s[24:27], 0 offen
	buffer_store_b16 v40, v18, s[24:27], 0 offen
	buffer_store_b16 v26, v9, s[24:27], 0 offen
	v_add_lshl_u32 v9, v13, v14, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s3, s2, s14
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_lshl_u32 v12, v13, v12, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s3, s2, s13
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_lshl_u32 v11, v13, v11, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s3, s2, s12
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_lshl_u32 v10, v13, v10, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s3, s2, s11
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_lshl_u32 v8, v13, v8, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s3, s2, s10
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_lshl_u32 v7, v13, v7, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s3, s2, s9
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_lshl_u32 v6, v13, v6, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s3, s2, s8
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_lshl_u32 v5, v13, v5, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s3, s2, s7
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_lshl_u32 v4, v13, v4, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s3, s2, s6
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_lshl_u32 v3, v13, v3, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s3, s2, s5
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_add_lshl_u32 v2, v13, v2, 1
	v_add_lshl_u32 v1, v13, v1, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s3, s2, s4
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_mov_b16_e32 v42.l, v27.h
	v_mov_b16_e32 v43.l, v26.h
	v_mov_b16_e32 v44.l, v29.h
	v_mov_b16_e32 v45.l, v28.h
	v_mov_b16_e32 v46.l, v31.h
	v_mov_b16_e32 v47.l, v37.h
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s1, s2, s1
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 s0, s2, s0
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_mov_b16_e32 v49.l, v30.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 1625 47                       ; ragged.py:1625:47
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1625 9                        ; ragged.py:1625:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_mov_b16_e32 v48.l, v17.h
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0xe
	buffer_store_b16 v43, v16, s[24:27], 0 offen
	buffer_store_b16 v27, v15, s[24:27], 0 offen
	buffer_store_b16 v42, v9, s[24:27], 0 offen
	buffer_store_b16 v28, v12, s[24:27], 0 offen
	buffer_store_b16 v45, v11, s[24:27], 0 offen
	buffer_store_b16 v29, v10, s[24:27], 0 offen
	buffer_store_b16 v44, v8, s[24:27], 0 offen
	buffer_store_b16 v37, v7, s[24:27], 0 offen
	buffer_store_b16 v47, v6, s[24:27], 0 offen
	buffer_store_b16 v31, v5, s[24:27], 0 offen
	buffer_store_b16 v46, v4, s[24:27], 0 offen
	buffer_store_b16 v30, v3, s[24:27], 0 offen
	buffer_store_b16 v49, v2, s[24:27], 0 offen
	buffer_store_b16 v17, v1, s[24:27], 0 offen
	buffer_store_b16 v48, v0, s[24:27], 0 offen
	.loc	1 1562 5 is_stmt 1              ; ragged.py:1562:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 156
		.amdhsa_next_free_sgpr 45
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
		.amdhsa_inst_pref_size 55
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1.num_vgpr, 156
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7036
; TotalNumSgprs: 47
; NumVgprs: 156
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 156
; Occupancy: 9
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
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1578                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1579                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .offset:         60
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_bfloat16_bm32_bn128_bk64_w4_s2_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     156
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
