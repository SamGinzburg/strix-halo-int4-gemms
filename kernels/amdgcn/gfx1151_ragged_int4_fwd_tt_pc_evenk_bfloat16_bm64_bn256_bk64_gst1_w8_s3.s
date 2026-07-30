	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 544 0                         ; ragged.py:544:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x4c
	s_load_b32 s3, s[0:1], 0x58
.Ltmp0:
	.loc	1 572 25 prologue_end           ; ragged.py:572:25
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v44, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:570:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:570:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 572 25 is_stmt 1              ; ragged.py:572:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s5, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 574 33                        ; ragged.py:574:33
	s_sub_i32 s3, s3, s5
	.loc	1 575 24                        ; ragged.py:575:24
	s_mul_i32 s4, s5, s4
	.loc	1 574 22                        ; ragged.py:574:22
	s_min_i32 s3, s3, 1
	.loc	1 575 24                        ; ragged.py:575:24
	s_sub_i32 s2, s2, s4
	.loc	1 577 17                        ; ragged.py:577:17
	s_abs_i32 s6, s3
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s4
	s_mul_hi_u32 s4, s8, s7
	s_xor_b32 s7, s2, s3
	s_mul_i32 s9, s4, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s16, s8, s9
	s_add_i32 s17, s4, 1
	s_sub_i32 s18, s16, s6
	s_cmp_ge_u32 s16, s6
	s_load_b256 s[8:15], s[0:1], 0x20
	s_cselect_b32 s4, s17, s4
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s4, 1
	s_cmp_ge_u32 s16, s6
	s_cselect_b32 s4, s17, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s7
	s_sub_i32 s6, s4, s7
	s_mov_b32 s7, 0
	.loc	1 576 34                        ; ragged.py:576:34
	s_mul_i32 s3, s6, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s3
	.loc	1 576 20 is_stmt 0              ; ragged.py:576:20
	s_add_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 579 20 is_stmt 1              ; ragged.py:579:20
	s_ashr_i32 s3, s2, 31
	s_lshl_b64 s[4:5], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s8, s4
	s_addc_u32 s3, s9, s5
	.loc	1 580 23                        ; ragged.py:580:23
	s_add_u32 s8, s10, s4
	.loc	1 579 20                        ; ragged.py:579:20
	s_load_b64 s[16:17], s[2:3], 0x0
	.loc	1 580 23                        ; ragged.py:580:23
	s_addc_u32 s9, s11, s5
	.loc	1 581 24                        ; ragged.py:581:24
	s_add_u32 s2, s12, s4
	.loc	1 580 23                        ; ragged.py:580:23
	s_load_b64 s[48:49], s[8:9], 0x0
	.loc	1 581 24                        ; ragged.py:581:24
	s_addc_u32 s3, s13, s5
	.loc	1 582 22                        ; ragged.py:582:22
	s_add_u32 s4, s14, s4
	s_addc_u32 s5, s15, s5
	.loc	1 594 19                        ; ragged.py:594:19
	s_cmp_gt_i32 s35, 0
	.loc	1 601 35                        ; ragged.py:601:35
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s54, s16, s34
	.loc	1 594 19                        ; ragged.py:594:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v2, s54 :: v_dual_lshlrev_b32 v3, 1, v0
	v_mov_b32_e32 v1, s48
	s_branch .LBB0_3
.LBB0_2:
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b128 s[36:39], s[0:1], 0x10
	s_load_b64 s[50:51], s[2:3], 0x0
	s_load_b64 s[52:53], s[4:5], 0x0
	v_dual_mov_b32 v22, 0 :: v_dual_and_b32 v49, 15, v0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_mov_b32_e32 v107, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s33, s6, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 584 36 is_stmt 1              ; ragged.py:584:36
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 583 18                        ; ragged.py:583:18
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v4, 63, v0
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x0
	s_load_b32 s55, s[0:1], 0x48
	v_bfe_i32 v36, v0, 7, 1
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v5, s33, v2
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_u32 v2, s0, s48, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s49, 0, s0
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v7, 8, v5
	v_or_b32_e32 v8, 16, v5
	v_or_b32_e32 v9, 24, v5
	.loc	1 585 21                        ; ragged.py:585:21
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i64_e32 vcc_lo, s[50:51], v[2:3]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s0, s[52:53], v[2:3]
	.loc	1 584 18 is_stmt 1              ; ragged.py:584:18
	v_or_b32_e32 v2, 0xd8, v5
	v_or_b32_e32 v10, 32, v5
	v_or_b32_e32 v11, 40, v5
	v_or_b32_e32 v12, 48, v5
	v_or_b32_e32 v13, 56, v5
	v_or_b32_e32 v14, 64, v5
	v_or_b32_e32 v15, 0x48, v5
	v_or_b32_e32 v16, 0x50, v5
	v_or_b32_e32 v17, 0x58, v5
	v_or_b32_e32 v18, 0x60, v5
	v_or_b32_e32 v19, 0x68, v5
	v_or_b32_e32 v20, 0x70, v5
	v_or_b32_e32 v21, 0x78, v5
	v_or_b32_e32 v22, 0x80, v5
	v_or_b32_e32 v23, 0x88, v5
	v_or_b32_e32 v24, 0x90, v5
	v_or_b32_e32 v25, 0x98, v5
	v_or_b32_e32 v26, 0xa0, v5
	v_or_b32_e32 v27, 0xa8, v5
	v_or_b32_e32 v28, 0xb0, v5
	v_or_b32_e32 v29, 0xb8, v5
	v_or_b32_e32 v30, 0xc0, v5
	v_or_b32_e32 v31, 0xc8, v5
	v_or_b32_e32 v32, 0xd0, v5
	v_or_b32_e32 v3, 0xe0, v5
	v_or_b32_e32 v33, 0xe8, v5
	v_or_b32_e32 v34, 0xf0, v5
	v_or_b32_e32 v35, 0xf8, v5
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s0, s34, v5
	v_add_nc_u32_e32 v5, s54, v5
	v_cmp_gt_i32_e64 s27, s34, v2
	v_and_b32_e32 v37, 0x7f, v0
	v_and_b32_e32 v36, 0x88, v36
	v_add_nc_u32_e32 v2, s54, v2
	v_add_nc_u32_e32 v65, s48, v4
	v_mul_lo_u32 v4, v5, s35
	v_cmp_gt_i32_e64 s1, s34, v7
	v_add_nc_u32_e32 v7, s54, v7
	v_mul_lo_u32 v99, s35, v2
	v_mov_b32_e32 v2, v1
	v_xor_b32_e32 v37, v36, v37
	v_cmp_gt_i32_e64 s2, s34, v8
	v_cmp_gt_i32_e64 s5, s34, v11
	scratch_store_b32 off, v4, off offset:4 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s35, v7
	scratch_store_b32 off, v37, off         ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, s54, v9
	v_add_nc_u32_e32 v7, s54, v10
	v_cmp_gt_i32_e64 s3, s34, v9
	v_add_nc_u32_e32 v9, s54, v12
	v_cmp_gt_i32_e64 s9, s34, v15
	v_cmp_gt_i32_e64 s11, s34, v17
	scratch_store_b32 off, v4, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s54, v8
	v_add_nc_u32_e32 v8, s54, v11
	v_mov_b32_e32 v11, v1
	v_cmp_gt_i32_e64 s13, s34, v19
	v_cmp_gt_i32_e64 s15, s34, v21
	v_mul_lo_u32 v4, s35, v4
	v_cmp_gt_i32_e64 s20, s34, v26
	v_cmp_gt_i32_e64 s17, s34, v23
	v_cmp_gt_i32_e64 s22, s34, v28
	.loc	1 584 36                        ; ragged.py:584:36
	v_and_b32_e32 v6, 0xe0, v0
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s24, s34, v30
	v_cmp_gt_i32_e64 s28, s34, v3
	v_or_b32_e32 v40, 0x300, v0
	scratch_store_b32 off, v4, off offset:12 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s35, v5
	v_add_nc_u32_e32 v5, s54, v14
	v_or_b32_e32 v36, 0x7f0, v0
	v_add_nc_u32_e32 v3, s54, v3
	v_cmp_gt_i32_e64 s21, s34, v27
	v_lshlrev_b32_e32 v38, 5, v49
	v_and_b32_e32 v39, 24, v44
	v_add_nc_u32_e32 v104, 0, v40
	scratch_store_b32 off, v4, off offset:16 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s35, v7
	v_add_nc_u32_e32 v7, s54, v15
	v_mov_b32_e32 v15, v1
	v_dual_mov_b32 v52, v1 :: v_dual_add_nc_u32 v107, 0, v36
	v_mov_b32_e32 v44, v1
	v_mul_lo_u32 v100, s35, v3
	v_mov_b32_e32 v3, v1
	scratch_store_b32 off, v4, off offset:20 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s35, v8
	v_add_nc_u32_e32 v8, s54, v16
	v_lshlrev_b32_e32 v6, 4, v6
	v_cmp_gt_i32_e64 s29, s34, v33
	v_cmp_gt_i32_e64 s26, s34, v32
	v_cmp_gt_i32_e64 s19, s34, v25
	v_or_b32_e32 v41, 0x700, v0
	v_xor_b32_e32 v37, 0x110, v37
	scratch_store_b32 off, v4, off offset:24 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s35, v9
	v_add_nc_u32_e32 v9, s54, v17
	v_mov_b32_e32 v17, v1
	v_cmp_gt_i32_e64 s23, s34, v29
	v_cmp_gt_i32_e64 s4, s34, v10
	v_cmp_gt_i32_e64 s6, s34, v12
	v_cmp_gt_i32_e64 s7, s34, v13
	v_cmp_gt_i32_e64 s8, s34, v14
	scratch_store_b32 off, v4, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s54, v13
	v_cmp_gt_i32_e64 s10, s34, v16
	v_cmp_gt_i32_e64 s12, s34, v18
	v_cmp_gt_i32_e64 s14, s34, v20
	v_cmp_gt_i32_e64 s16, s34, v22
	v_mul_lo_u32 v4, s35, v4
	v_cmp_gt_i32_e64 s18, s34, v24
	v_cmp_gt_i32_e64 s25, s34, v31
	.loc	1 589 18                        ; ragged.py:589:18
	v_lshrrev_b32_e32 v68, 6, v0
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s30, s34, v34
	v_cmp_gt_i32_e64 s31, s34, v35
	v_add_nc_u32_e32 v71, 0, v49
	v_dual_mov_b32 v50, v1 :: v_dual_add_nc_u32 v105, 0, v41
	scratch_store_b32 off, v4, off offset:32 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s35, v5
	v_add_nc_u32_e32 v5, s54, v19
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v108, 0, v37
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	scratch_store_b32 off, v4, off offset:36 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s35, v7
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v7, s54, v20
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v49, v1
	scratch_store_b32 off, v4, off offset:40 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s35, v8
	v_add_nc_u32_e32 v8, s54, v21
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v55, v1
	v_mul_lo_u32 v87, s35, v8
	v_add_nc_u32_e32 v8, s54, v26
	scratch_store_b32 off, v4, off offset:44 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s35, v9
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v9, s54, v22
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v57, v1
	scratch_store_b32 off, v4, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s54, v18
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mul_lo_u32 v4, s35, v4
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v54, v1
	scratch_store_b32 off, v4, off offset:52 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s35, v5
	v_add_nc_u32_e32 v5, s54, v24
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v64, v1
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	scratch_store_b32 off, v4, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, s54, v23
	v_mov_b32_e32 v23, v1
	s_and_b32 s47, s47, 0xffff
	s_mov_b32 s58, 0
	s_mov_b32 s40, s44
	v_mul_lo_u32 v89, s35, v4
	v_add_nc_u32_e32 v4, s54, v28
	v_mov_b32_e32 v28, v1
	v_mul_lo_u32 v86, s35, v7
	v_add_nc_u32_e32 v7, s54, v25
	v_mov_b32_e32 v25, v1
	v_mul_lo_u32 v92, s35, v8
	v_add_nc_u32_e32 v8, s54, v31
	v_mov_b32_e32 v31, v1
	v_mul_lo_u32 v91, s35, v7
	v_add_nc_u32_e32 v7, s54, v30
	v_mov_b32_e32 v30, v1
	v_mul_lo_u32 v88, s35, v9
	v_add_nc_u32_e32 v9, s54, v27
	v_mov_b32_e32 v27, v1
	v_mul_lo_u32 v94, s35, v4
	v_mul_lo_u32 v96, s35, v7
	v_add_nc_u32_e32 v4, s54, v33
	v_mov_b32_e32 v33, v1
	v_mul_lo_u32 v93, s35, v9
	v_add_nc_u32_e32 v9, s54, v32
	v_add_nc_u32_e32 v7, s54, v35
	v_mul_lo_u32 v101, s35, v4
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v32, v1
	v_mul_lo_u32 v98, s35, v9
	v_mul_lo_u32 v103, s35, v7
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v9, v1
	v_or3_b32 v70, v38, v39, v6
	v_mul_lo_u32 v90, s35, v5
	v_add_nc_u32_e32 v5, s54, v29
	v_or_b32_e32 v6, 0x3f0, v0
	v_mov_b32_e32 v29, v1
	v_xor_b32_e32 v38, 8, v70
	v_xor_b32_e32 v39, 16, v70
	v_xor_b32_e32 v42, 24, v70
	v_mul_lo_u32 v97, s35, v8
	v_add_nc_u32_e32 v106, 0, v6
	v_add_nc_u32_e32 v109, 0, v38
	v_mov_b32_e32 v38, v1
	v_mul_lo_u32 v95, s35, v5
	v_add_nc_u32_e32 v5, s54, v34
	v_add_nc_u32_e32 v110, 0, v39
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v111, 0, v42
	v_mov_b32_e32 v8, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v102, s35, v5
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v42, v1
	s_mov_b32 s41, s45
	s_mov_b32 s44, s46
	s_mov_b32 s45, s47
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v112, s58, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[112:113], null, v112, s55, v[65:66]
	.loc	1 604 30 is_stmt 0              ; ragged.py:604:30
	v_cndmask_b32_e32 v128, 0x80000000, v112, vcc_lo
	.loc	1 589 18 is_stmt 1              ; ragged.py:589:18
	v_or_b32_e32 v112, 4, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v112, s58, v112
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[112:113], null, v112, s55, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 604 30 is_stmt 0              ; ragged.py:604:30
	v_cndmask_b32_e32 v129, 0x80000000, v112, vcc_lo
	.loc	1 589 18 is_stmt 1              ; ragged.py:589:18
	v_or_b32_e32 v112, 8, v68
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v112, s58, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[112:113], null, v112, s55, v[65:66]
	.loc	1 604 30 is_stmt 0              ; ragged.py:604:30
	v_cndmask_b32_e32 v130, 0x80000000, v112, vcc_lo
	.loc	1 589 18 is_stmt 1              ; ragged.py:589:18
	v_or_b32_e32 v112, 12, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v112, s58, v112
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[112:113], null, v112, s55, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 604 30 is_stmt 0              ; ragged.py:604:30
	v_cndmask_b32_e32 v131, 0x80000000, v112, vcc_lo
	.loc	1 589 18 is_stmt 1              ; ragged.py:589:18
	v_or_b32_e32 v112, 16, v68
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v112, s58, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[112:113], null, v112, s55, v[65:66]
	.loc	1 604 30 is_stmt 0              ; ragged.py:604:30
	v_cndmask_b32_e32 v132, 0x80000000, v112, vcc_lo
	.loc	1 589 18 is_stmt 1              ; ragged.py:589:18
	v_or_b32_e32 v112, 20, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v112, s58, v112
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[112:113], null, v112, s55, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 604 30 is_stmt 0              ; ragged.py:604:30
	v_cndmask_b32_e32 v133, 0x80000000, v112, vcc_lo
	.loc	1 589 18 is_stmt 1              ; ragged.py:589:18
	v_or_b32_e32 v112, 24, v68
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v112, s58, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[112:113], null, v112, s55, v[65:66]
	.loc	1 604 30 is_stmt 0              ; ragged.py:604:30
	v_cndmask_b32_e32 v134, 0x80000000, v112, vcc_lo
	.loc	1 589 18 is_stmt 1              ; ragged.py:589:18
	v_or_b32_e32 v112, 28, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v112, s58, v112
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[112:113], null, v112, s55, v[65:66]
	.loc	1 605 38                        ; ragged.py:605:38
	scratch_load_b32 v66, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 604 30                        ; ragged.py:604:30
	v_cndmask_b32_e32 v135, 0x80000000, v112, vcc_lo
	.loc	1 589 18                        ; ragged.py:589:18
	v_and_b32_e32 v112, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v112, s58, v112
	.loc	1 616 17                        ; ragged.py:616:17
	s_add_i32 s58, s58, 32
	.loc	1 594 19                        ; ragged.py:594:19
	s_cmp_lt_i32 s58, s35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 605 38                        ; ragged.py:605:38
	v_add_nc_u32_e32 v127, v86, v112
	v_add_nc_u32_e32 v136, v87, v112
	v_add_nc_u32_e32 v137, v88, v112
	v_add_nc_u32_e32 v138, v89, v112
	v_add_nc_u32_e32 v139, v90, v112
	v_add_nc_u32_e32 v140, v91, v112
	v_add_nc_u32_e32 v141, v92, v112
	v_add_nc_u32_e32 v142, v93, v112
	v_add_nc_u32_e32 v143, v94, v112
	v_add_nc_u32_e32 v144, v95, v112
	v_add_nc_u32_e32 v145, v96, v112
	v_add_nc_u32_e32 v146, v97, v112
	v_add_nc_u32_e32 v147, v98, v112
	v_add_nc_u32_e32 v148, v99, v112
	v_add_nc_u32_e32 v149, v100, v112
	v_add_nc_u32_e32 v150, v101, v112
	v_add_nc_u32_e32 v151, v102, v112
	.loc	1 605 30 is_stmt 0              ; ragged.py:605:30
	v_cndmask_b32_e64 v127, 0x80000000, v127, s14
	v_cndmask_b32_e64 v136, 0x80000000, v136, s15
	v_cndmask_b32_e64 v137, 0x80000000, v137, s16
	v_cndmask_b32_e64 v138, 0x80000000, v138, s17
	v_cndmask_b32_e64 v139, 0x80000000, v139, s18
	v_cndmask_b32_e64 v140, 0x80000000, v140, s19
	v_cndmask_b32_e64 v141, 0x80000000, v141, s20
	v_cndmask_b32_e64 v142, 0x80000000, v142, s21
	v_cndmask_b32_e64 v143, 0x80000000, v143, s22
	v_cndmask_b32_e64 v144, 0x80000000, v144, s23
	v_cndmask_b32_e64 v145, 0x80000000, v145, s24
	v_cndmask_b32_e64 v146, 0x80000000, v146, s25
	v_cndmask_b32_e64 v147, 0x80000000, v147, s26
	v_cndmask_b32_e64 v148, 0x80000000, v148, s27
	v_cndmask_b32_e64 v149, 0x80000000, v149, s28
	v_cndmask_b32_e64 v150, 0x80000000, v150, s29
	v_cndmask_b32_e64 v151, 0x80000000, v151, s30
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v113, v66, v112
	scratch_load_b32 v66, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v114, v66, v112
	scratch_load_b32 v66, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v114, 0x80000000, v114, s1
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v115, v66, v112
	scratch_load_b32 v66, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v115, 0x80000000, v115, s2
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v116, v66, v112
	scratch_load_b32 v66, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v116, 0x80000000, v116, s3
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v117, v66, v112
	scratch_load_b32 v66, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v117, 0x80000000, v117, s4
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v118, v66, v112
	scratch_load_b32 v66, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v118, 0x80000000, v118, s5
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v119, v66, v112
	scratch_load_b32 v66, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v119, 0x80000000, v119, s6
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v120, v66, v112
	scratch_load_b32 v66, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v120, 0x80000000, v120, s7
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v121, v66, v112
	scratch_load_b32 v66, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v121, 0x80000000, v121, s8
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v122, v66, v112
	scratch_load_b32 v66, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v122, 0x80000000, v122, s9
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, v66, v112
	scratch_load_b32 v66, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v123, 0x80000000, v123, s10
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v124, v66, v112
	scratch_load_b32 v66, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v124, 0x80000000, v124, s11
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, v66, v112
	scratch_load_b32 v66, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v125, 0x80000000, v125, s12
	.loc	1 605 38                        ; ragged.py:605:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v126, v66, v112
	v_add_nc_u32_e32 v112, v103, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v126, 0x80000000, v126, s13
	v_cndmask_b32_e64 v152, 0x80000000, v112, s31
	s_clause 0x1f
	buffer_load_u8 v153, v113, s[44:47], 0 offen
	buffer_load_u8 v112, v114, s[44:47], 0 offen
	buffer_load_u8 v154, v115, s[44:47], 0 offen
	buffer_load_u8 v113, v116, s[44:47], 0 offen
	buffer_load_u8 v155, v117, s[44:47], 0 offen
	buffer_load_u8 v114, v118, s[44:47], 0 offen
	buffer_load_u8 v156, v119, s[44:47], 0 offen
	buffer_load_u8 v115, v120, s[44:47], 0 offen
	buffer_load_u8 v157, v121, s[44:47], 0 offen
	buffer_load_u8 v116, v122, s[44:47], 0 offen
	buffer_load_u8 v158, v123, s[44:47], 0 offen
	buffer_load_u8 v117, v124, s[44:47], 0 offen
	buffer_load_u8 v159, v125, s[44:47], 0 offen
	buffer_load_u8 v118, v126, s[44:47], 0 offen
	buffer_load_u8 v160, v127, s[44:47], 0 offen
	buffer_load_u8 v119, v136, s[44:47], 0 offen
	buffer_load_u8 v136, v137, s[44:47], 0 offen
	buffer_load_u8 v120, v138, s[44:47], 0 offen
	buffer_load_u8 v137, v139, s[44:47], 0 offen
	buffer_load_u8 v121, v140, s[44:47], 0 offen
	buffer_load_u8 v138, v141, s[44:47], 0 offen
	buffer_load_u8 v122, v142, s[44:47], 0 offen
	buffer_load_u8 v139, v143, s[44:47], 0 offen
	buffer_load_u8 v123, v144, s[44:47], 0 offen
	buffer_load_u8 v140, v145, s[44:47], 0 offen
	buffer_load_u8 v124, v146, s[44:47], 0 offen
	buffer_load_u8 v141, v147, s[44:47], 0 offen
	buffer_load_u8 v125, v148, s[44:47], 0 offen
	buffer_load_u8 v142, v149, s[44:47], 0 offen
	buffer_load_u8 v126, v150, s[44:47], 0 offen
	buffer_load_u8 v143, v151, s[44:47], 0 offen
	buffer_load_u8 v127, v152, s[44:47], 0 offen
	.loc	1 604 30 is_stmt 1              ; ragged.py:604:30
	s_clause 0x7
	buffer_load_u8 v128, v128, s[40:43], 0 offen
	buffer_load_u8 v129, v129, s[40:43], 0 offen
	buffer_load_u8 v130, v130, s[40:43], 0 offen
	buffer_load_u8 v132, v132, s[40:43], 0 offen
	buffer_load_u8 v133, v133, s[40:43], 0 offen
	buffer_load_u8 v134, v134, s[40:43], 0 offen
	buffer_load_u8 v135, v135, s[40:43], 0 offen
	buffer_load_u8 v131, v131, s[40:43], 0 offen
	v_add_nc_u32_e32 v144, 0, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v144, v128
	s_waitcnt vmcnt(6)
	ds_store_b8 v144, v129 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v144, v130 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v144, v132 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v144, v133 offset:1280
	s_waitcnt vmcnt(2)
	ds_store_b8 v144, v134 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v104, v131
	ds_store_b8 v105, v135
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 606 27                        ; ragged.py:606:27
	ds_load_u8 v128, v71 offset:192
	ds_load_u8 v129, v71 offset:128
	ds_load_u8 v130, v71 offset:208
	ds_load_u8 v131, v71 offset:144
	ds_load_u8 v132, v71 offset:224
	ds_load_u8 v133, v71 offset:160
	ds_load_u8 v134, v71 offset:240
	ds_load_u8 v135, v71 offset:176
	ds_load_u8 v144, v71 offset:448
	ds_load_u8 v145, v71 offset:384
	ds_load_u8 v146, v71 offset:464
	ds_load_u8 v147, v71 offset:400
	ds_load_u8 v148, v71 offset:480
	ds_load_u8 v149, v71 offset:416
	ds_load_u8 v150, v71 offset:496
	ds_load_u8 v151, v71 offset:432
	ds_load_u8 v152, v71 offset:320
	ds_load_u8 v161, v71 offset:256
	ds_load_u8 v162, v71 offset:336
	ds_load_u8 v163, v71 offset:272
	ds_load_u8 v164, v71 offset:352
	ds_load_u8 v165, v71 offset:288
	ds_load_u8 v166, v71 offset:368
	ds_load_u8 v167, v71 offset:304
	ds_load_u8 v168, v71 offset:64
	ds_load_u8 v169, v71 offset:80
	ds_load_u8 v170, v71 offset:96
	ds_load_u8 v171, v71 offset:112
	ds_load_u8 v172, v71
	ds_load_u8 v173, v71 offset:16
	ds_load_u8 v174, v71 offset:32
	ds_load_u8 v175, v71 offset:48
	ds_load_u8 v176, v71 offset:960
	ds_load_u8 v177, v71 offset:896
	ds_load_u8 v178, v71 offset:1024
	ds_load_u8 v179, v71 offset:976
	ds_load_u8 v180, v71 offset:912
	ds_load_u8 v181, v71 offset:992
	ds_load_u8 v182, v71 offset:928
	ds_load_u8 v183, v71 offset:944
	ds_load_u8 v184, v71 offset:832
	ds_load_u8 v185, v71 offset:768
	ds_load_u8 v186, v71 offset:848
	ds_load_u8 v187, v71 offset:784
	ds_load_u8 v188, v71 offset:864
	ds_load_u8 v189, v71 offset:800
	ds_load_u8 v190, v71 offset:880
	ds_load_u8 v191, v71 offset:816
	ds_load_u8 v192, v71 offset:704
	ds_load_u8 v193, v71 offset:640
	ds_load_u8 v194, v71 offset:720
	ds_load_u8 v195, v71 offset:656
	ds_load_u8 v196, v71 offset:736
	ds_load_u8 v197, v71 offset:672
	ds_load_u8 v198, v71 offset:752
	ds_load_u8 v199, v71 offset:688
	ds_load_u8 v200, v71 offset:576
	ds_load_u8 v201, v71 offset:512
	ds_load_u8 v202, v71 offset:592
	ds_load_u8 v203, v71 offset:528
	ds_load_u8 v204, v71 offset:608
	ds_load_u8 v205, v71 offset:544
	ds_load_u8 v206, v71 offset:624
	ds_load_u8 v207, v71 offset:560
	ds_load_u8 v208, v71 offset:1216
	ds_load_u8 v209, v71 offset:1280
	ds_load_u8 v210, v71 offset:1232
	ds_load_u8 v211, v71 offset:1168
	ds_load_u8 v212, v71 offset:1248
	ds_load_u8 v213, v71 offset:1184
	ds_load_u8 v214, v71 offset:1264
	ds_load_u8 v215, v71 offset:1200
	ds_load_u8 v216, v71 offset:1152
	ds_load_u8 v217, v71 offset:1088
	ds_load_u8 v218, v71 offset:1104
	ds_load_u8 v219, v71 offset:1040
	ds_load_u8 v220, v71 offset:1120
	ds_load_u8 v221, v71 offset:1056
	ds_load_u8 v222, v71 offset:1136
	ds_load_u8 v223, v71 offset:1072
	ds_load_u8 v224, v71 offset:1472
	ds_load_u8 v225, v71 offset:1536
	ds_load_u8 v226, v71 offset:1488
	ds_load_u8 v227, v71 offset:1424
	ds_load_u8 v228, v71 offset:1504
	ds_load_u8 v229, v71 offset:1440
	ds_load_u8 v230, v71 offset:1520
	ds_load_u8 v231, v71 offset:1456
	ds_load_u8 v232, v71 offset:1408
	ds_load_u8 v233, v71 offset:1344
	ds_load_u8 v234, v71 offset:1360
	ds_load_u8 v235, v71 offset:1296
	ds_load_u8 v236, v71 offset:1376
	ds_load_u8 v237, v71 offset:1312
	ds_load_u8 v238, v71 offset:1392
	ds_load_u8 v239, v71 offset:1328
	ds_load_u8 v240, v71 offset:1984
	ds_load_u8 v241, v71 offset:2000
	ds_load_u8 v242, v71 offset:1936
	ds_load_u8 v243, v71 offset:2016
	ds_load_u8 v244, v71 offset:1952
	ds_load_u8 v245, v106
	ds_load_u8 v246, v107
	ds_load_u8 v247, v71 offset:1968
	ds_load_u8 v248, v71 offset:1920
	ds_load_u8 v249, v71 offset:1856
	ds_load_u8 v250, v71 offset:1872
	ds_load_u8 v251, v71 offset:1808
	ds_load_u8 v252, v71 offset:1888
	ds_load_u8 v253, v71 offset:1824
	ds_load_u8 v254, v71 offset:1904
	ds_load_u8 v255, v71 offset:1840
	ds_load_u8 v67, v71 offset:1728
	ds_load_u8 v66, v71 offset:1792
	ds_load_u8 v72, v71 offset:1744
	ds_load_u8 v73, v71 offset:1680
	ds_load_u8 v69, v71 offset:1760
	ds_load_u8 v74, v71 offset:1696
	ds_load_u8 v75, v71 offset:1776
	ds_load_u8 v76, v71 offset:1712
	ds_load_u8 v77, v71 offset:1664
	ds_load_u8 v78, v71 offset:1600
	ds_load_u8 v79, v71 offset:1616
	ds_load_u8 v80, v71 offset:1552
	ds_load_u8 v81, v71 offset:1632
	ds_load_u8 v82, v71 offset:1568
	ds_load_u8 v83, v71 offset:1648
	ds_load_u8 v84, v71 offset:1584
	.loc	1 605 30                        ; ragged.py:605:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v85, off, off          ; 4-byte Folded Reload
	.loc	1 606 27                        ; ragged.py:606:27
	v_perm_b32 v128, v129, v128, 0xc0c0004
	v_perm_b32 v130, v131, v130, 0xc0c0004
	v_perm_b32 v132, v133, v132, 0xc0c0004
	v_perm_b32 v134, v135, v134, 0xc0c0004
	v_perm_b32 v66, v66, v249, 0xc0c0004
	v_perm_b32 v72, v73, v72, 0xc0c0004
	v_perm_b32 v69, v74, v69, 0xc0c0004
	v_perm_b32 v67, v77, v67, 0xc0c0004
	v_perm_b32 v78, v225, v78, 0xc0c0004
	v_perm_b32 v77, v80, v79, 0xc0c0004
	.loc	1 605 30                        ; ragged.py:605:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v85, 0, v85
	ds_store_b8 v85, v153
	ds_store_b8 v85, v154 offset:512
	ds_store_b8 v85, v155 offset:1024
	ds_store_b8 v85, v156 offset:1536
	ds_store_b8 v85, v157 offset:2048
	ds_store_b8 v85, v158 offset:2560
	ds_store_b8 v85, v159 offset:3072
	ds_store_b8 v85, v160 offset:3584
	ds_store_b8 v85, v136 offset:4096
	ds_store_b8 v85, v137 offset:4608
	ds_store_b8 v85, v138 offset:5120
	ds_store_b8 v85, v139 offset:5632
	ds_store_b8 v85, v140 offset:6144
	ds_store_b8 v85, v141 offset:6656
	ds_store_b8 v85, v142 offset:7168
	ds_store_b8 v85, v143 offset:7680
	.loc	1 606 27                        ; ragged.py:606:27
	v_perm_b32 v85, v161, v152, 0xc0c0004
	v_perm_b32 v136, v145, v144, 0xc0c0004
	v_perm_b32 v137, v172, v168, 0xc0c0004
	.loc	1 605 30                        ; ragged.py:605:30
	ds_store_b8 v108, v112
	ds_store_b8 v108, v113 offset:512
	ds_store_b8 v108, v114 offset:1024
	ds_store_b8 v108, v115 offset:1536
	ds_store_b8 v108, v116 offset:2048
	ds_store_b8 v108, v117 offset:2560
	ds_store_b8 v108, v118 offset:3072
	ds_store_b8 v108, v119 offset:3584
	ds_store_b8 v108, v120 offset:4096
	ds_store_b8 v108, v121 offset:4608
	ds_store_b8 v108, v122 offset:5120
	ds_store_b8 v108, v123 offset:5632
	ds_store_b8 v108, v124 offset:6144
	ds_store_b8 v108, v125 offset:6656
	ds_store_b8 v108, v126 offset:7168
	ds_store_b8 v108, v127 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 606 27                        ; ragged.py:606:27
	v_lshl_or_b32 v129, v136, 16, v85
	v_perm_b32 v85, v163, v162, 0xc0c0004
	v_perm_b32 v136, v147, v146, 0xc0c0004
	v_lshl_or_b32 v128, v128, 16, v137
	v_perm_b32 v137, v173, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v131, v136, 16, v85
	v_perm_b32 v85, v165, v164, 0xc0c0004
	v_perm_b32 v136, v149, v148, 0xc0c0004
	v_lshl_or_b32 v130, v130, 16, v137
	v_perm_b32 v137, v174, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v133, v136, 16, v85
	v_perm_b32 v85, v167, v166, 0xc0c0004
	v_perm_b32 v136, v151, v150, 0xc0c0004
	v_lshl_or_b32 v132, v132, 16, v137
	v_perm_b32 v137, v175, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v135, v136, 16, v85
	.loc	1 605 30                        ; ragged.py:605:30
	v_add_nc_u32_e32 v85, 0, v70
	.loc	1 606 27                        ; ragged.py:606:27
	v_lshl_or_b32 v134, v134, 16, v137
	.loc	1 605 30                        ; ragged.py:605:30
	ds_load_2addr_stride64_b64 v[112:115], v85 offset1:8
	.loc	1 606 27                        ; ragged.py:606:27
	v_perm_b32 v85, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[128:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[114:115], v[128:129], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[130:131], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[114:115], v[130:131], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[112:113], v[132:133], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[132:133], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[112:113], v[134:135], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[114:115], v[134:135], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v112, v177, v176, 0xc0c0004
	v_perm_b32 v113, v201, v200, 0xc0c0004
	v_perm_b32 v114, v193, v192, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v117, v112, 16, v85
	v_perm_b32 v85, v187, v186, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	v_perm_b32 v112, v180, v179, 0xc0c0004
	v_perm_b32 v113, v203, v202, 0xc0c0004
	v_perm_b32 v114, v195, v194, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v119, v112, 16, v85
	v_perm_b32 v85, v189, v188, 0xc0c0004
	v_lshl_or_b32 v118, v114, 16, v113
	v_perm_b32 v112, v182, v181, 0xc0c0004
	v_perm_b32 v113, v205, v204, 0xc0c0004
	v_perm_b32 v114, v197, v196, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v121, v112, 16, v85
	v_perm_b32 v85, v207, v206, 0xc0c0004
	v_lshl_or_b32 v120, v114, 16, v113
	v_perm_b32 v112, v199, v198, 0xc0c0004
	v_perm_b32 v113, v191, v190, 0xc0c0004
	v_perm_b32 v114, v183, v245, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v122, v112, 16, v85
	v_perm_b32 v85, v209, v233, 0xc0c0004
	v_lshl_or_b32 v123, v114, 16, v113
	.loc	1 605 30                        ; ragged.py:605:30
	ds_load_2addr_stride64_b64 v[112:115], v109 offset1:8
	.loc	1 606 27                        ; ragged.py:606:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[116:117], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[114:115], v[116:117], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[118:119], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[114:115], v[118:119], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[112:113], v[120:121], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[120:121], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[112:113], v[122:123], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[114:115], v[122:123], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v112, v232, v224, 0xc0c0004
	v_perm_b32 v113, v178, v217, 0xc0c0004
	v_perm_b32 v114, v216, v208, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v117, v112, 16, v85
	v_perm_b32 v85, v235, v234, 0xc0c0004
	v_lshl_or_b32 v116, v114, 16, v113
	v_perm_b32 v112, v227, v226, 0xc0c0004
	v_perm_b32 v113, v219, v218, 0xc0c0004
	v_perm_b32 v114, v211, v210, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v119, v112, 16, v85
	v_perm_b32 v85, v237, v236, 0xc0c0004
	v_lshl_or_b32 v118, v114, 16, v113
	v_perm_b32 v112, v229, v228, 0xc0c0004
	v_perm_b32 v113, v221, v220, 0xc0c0004
	v_perm_b32 v114, v213, v212, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v121, v112, 16, v85
	v_perm_b32 v85, v239, v238, 0xc0c0004
	v_lshl_or_b32 v120, v114, 16, v113
	v_perm_b32 v112, v231, v230, 0xc0c0004
	v_perm_b32 v113, v223, v222, 0xc0c0004
	v_perm_b32 v114, v215, v214, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v123, v112, 16, v85
	v_perm_b32 v85, v248, v240, 0xc0c0004
	v_lshl_or_b32 v122, v114, 16, v113
	.loc	1 605 30                        ; ragged.py:605:30
	ds_load_2addr_stride64_b64 v[112:115], v110 offset1:8
	.loc	1 606 27                        ; ragged.py:606:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[116:117], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[114:115], v[116:117], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[118:119], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[114:115], v[118:119], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[112:113], v[120:121], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[120:121], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[112:113], v[122:123], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[114:115], v[122:123], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v117, v85, 16, v66
	v_lshl_or_b32 v116, v67, 16, v78
	v_perm_b32 v66, v251, v250, 0xc0c0004
	v_perm_b32 v67, v242, v241, 0xc0c0004
	.loc	1 605 30                        ; ragged.py:605:30
	ds_load_2addr_stride64_b64 v[112:115], v111 offset1:8
	.loc	1 606 27                        ; ragged.py:606:27
	v_lshl_or_b32 v118, v72, 16, v77
	v_perm_b32 v72, v82, v81, 0xc0c0004
	v_lshl_or_b32 v119, v67, 16, v66
	v_perm_b32 v66, v253, v252, 0xc0c0004
	v_perm_b32 v67, v244, v243, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v120, v69, 16, v72
	v_perm_b32 v69, v255, v254, 0xc0c0004
	v_perm_b32 v72, v247, v246, 0xc0c0004
	v_lshl_or_b32 v121, v67, 16, v66
	v_perm_b32 v66, v84, v83, 0xc0c0004
	v_perm_b32 v67, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v123, v72, 16, v69
	v_lshl_or_b32 v122, v67, 16, v66
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[116:117], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[114:115], v[116:117], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[118:119], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[114:115], v[118:119], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[112:113], v[120:121], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[120:121], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[112:113], v[122:123], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[114:115], v[122:123], v[57:64] neg_lo:[1,1,0]
	.loc	1 594 19                        ; ragged.py:594:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 617 19                        ; ragged.py:617:19
	v_cvt_f32_i32_e32 v108, v1
	v_cvt_f32_i32_e32 v107, v2
	v_cvt_f32_i32_e32 v106, v3
	v_cvt_f32_i32_e32 v105, v4
	v_cvt_f32_i32_e32 v104, v5
	v_cvt_f32_i32_e32 v103, v6
	v_cvt_f32_i32_e32 v102, v7
	v_cvt_f32_i32_e32 v101, v8
	v_cvt_f32_i32_e32 v100, v9
	v_cvt_f32_i32_e32 v99, v10
	v_cvt_f32_i32_e32 v98, v11
	v_cvt_f32_i32_e32 v97, v12
	v_cvt_f32_i32_e32 v96, v13
	v_cvt_f32_i32_e32 v95, v14
	v_cvt_f32_i32_e32 v94, v15
	v_cvt_f32_i32_e32 v93, v16
	v_cvt_f32_i32_e32 v92, v17
	v_cvt_f32_i32_e32 v91, v18
	v_cvt_f32_i32_e32 v90, v19
	v_cvt_f32_i32_e32 v89, v20
	v_cvt_f32_i32_e32 v88, v21
	v_cvt_f32_i32_e32 v87, v22
	v_cvt_f32_i32_e32 v86, v23
	v_cvt_f32_i32_e32 v85, v24
	v_cvt_f32_i32_e32 v84, v25
	v_cvt_f32_i32_e32 v83, v26
	v_cvt_f32_i32_e32 v82, v27
	v_cvt_f32_i32_e32 v81, v28
	v_cvt_f32_i32_e32 v80, v29
	v_cvt_f32_i32_e32 v79, v30
	v_cvt_f32_i32_e32 v78, v31
	v_cvt_f32_i32_e32 v77, v32
	v_cvt_f32_i32_e32 v76, v33
	v_cvt_f32_i32_e32 v75, v34
	v_cvt_f32_i32_e32 v74, v35
	v_cvt_f32_i32_e32 v73, v36
	v_cvt_f32_i32_e32 v72, v37
	v_cvt_f32_i32_e32 v71, v38
	v_cvt_f32_i32_e32 v70, v39
	v_cvt_f32_i32_e32 v69, v40
	v_cvt_f32_i32_e32 v68, v41
	v_cvt_f32_i32_e32 v65, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v42, v44
	v_cvt_f32_i32_e32 v41, v45
	v_cvt_f32_i32_e32 v40, v46
	v_cvt_f32_i32_e32 v39, v47
	v_cvt_f32_i32_e32 v38, v48
	v_cvt_f32_i32_e32 v37, v49
	v_cvt_f32_i32_e32 v36, v50
	v_cvt_f32_i32_e32 v35, v51
	v_cvt_f32_i32_e32 v34, v52
	v_cvt_f32_i32_e32 v33, v53
	v_cvt_f32_i32_e32 v32, v54
	v_cvt_f32_i32_e32 v31, v55
	v_cvt_f32_i32_e32 v30, v56
	v_cvt_f32_i32_e32 v29, v57
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v27, v59
	v_cvt_f32_i32_e32 v26, v60
	v_cvt_f32_i32_e32 v25, v61
	v_cvt_f32_i32_e32 v24, v62
	v_cvt_f32_i32_e32 v23, v63
	v_cvt_f32_i32_e32 v22, v64
	v_dual_mov_b32 v2, s54 :: v_dual_mov_b32 v1, s48
	v_lshlrev_b32_e32 v3, 1, v0
	v_and_b32_e32 v49, 15, v0
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 583 32 is_stmt 1              ; ragged.py:583:32
	v_or_b32_e32 v4, 48, v49
	v_or_b32_e32 v6, 32, v49
	v_or_b32_e32 v7, 16, v49
	.loc	1 619 36                        ; ragged.py:619:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s37, 0xffff
	s_mov_b32 s63, 0x31027000
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_u32 v4, s0, s48, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s49, 0, s0
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 619 36                        ; ragged.py:619:36
	s_mov_b32 s60, s36
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v21.h, 0
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e32 vcc_lo, s[50:51], v[4:5]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s3, s[52:53], v[4:5]
	.loc	1 583 18 is_stmt 1              ; ragged.py:583:18
	v_add_co_u32 v5, s0, s48, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s49, 0, s0
	v_add_co_u32 v7, s0, s48, v7
	v_add_co_ci_u32_e64 v8, null, s49, 0, s0
	v_add_co_u32 v9, s0, s48, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v10, null, s49, 0, s0
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s1, s[50:51], v[7:8]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s5, s[52:53], v[7:8]
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s0, s[50:51], v[5:6]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s2, s[50:51], v[9:10]
	.loc	1 585 48                        ; ragged.py:585:48
	v_cmp_gt_i64_e64 s6, s[52:53], v[9:10]
	v_cmp_gt_i64_e64 s4, s[52:53], v[5:6]
	.loc	1 619 36 is_stmt 1              ; ragged.py:619:36
	v_lshlrev_b32_e32 v6, 1, v9
	v_lshlrev_b32_e32 v4, 1, v4
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 619 36                        ; ragged.py:619:36
	v_lshlrev_b32_e32 v7, 1, v7
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 s2, s2, s6
	s_and_b32 s1, s1, s5
	.loc	1 619 36                        ; ragged.py:619:36
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 s0, s0, s4
	.loc	1 619 36                        ; ragged.py:619:36
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	s_clause 0x3
	buffer_load_u16 v44, v6, s[60:63], 0 offen
	buffer_load_u16 v45, v7, s[60:63], 0 offen
	buffer_load_u16 v46, v5, s[60:63], 0 offen
	buffer_load_u16 v47, v4, s[60:63], 0 offen
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v4, s33, v0
	.loc	1 622 36                        ; ragged.py:622:36
	s_and_b32 s61, s39, 0xffff
	s_mov_b32 s60, s38
	.loc	1 679 9                         ; ragged.py:679:9
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s58, s62
	.loc	1 622 36                        ; ragged.py:622:36
	v_add_lshl_u32 v2, v4, v2, 1
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s3, s34, v4
	.loc	1 679 9                         ; ragged.py:679:9
	s_mov_b32 s59, s63
	.loc	1 622 36                        ; ragged.py:622:36
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	buffer_load_u16 v48, v2, s[60:63], 0 offen
	.loc	1 627 17                        ; ragged.py:627:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 619 36                        ; ragged.py:619:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 620 17                        ; ragged.py:620:17
	v_dual_mul_f32 v83, v83, v45 :: v_dual_lshlrev_b32 v44, 16, v44
	v_mul_f32_e32 v62, v98, v44
	v_dual_mul_f32 v89, v89, v45 :: v_dual_and_b32 v2, 0xf0, v0
	v_dual_mul_f32 v87, v87, v45 :: v_dual_lshlrev_b32 v4, 5, v0
	v_dual_mul_f32 v54, v106, v44 :: v_dual_and_b32 v3, 28, v3
	v_dual_mul_f32 v56, v104, v44 :: v_dual_add_nc_u32 v1, v49, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v85, v85, v45 :: v_dual_and_b32 v4, 32, v4
	.loc	1 627 17                        ; ragged.py:627:17
	v_lshl_add_u32 v6, v2, 2, 0
	.loc	1 584 36                        ; ragged.py:584:36
	v_lshrrev_b32_e32 v5, 1, v2
	.loc	1 627 17                        ; ragged.py:627:17
	v_lshl_add_u32 v49, v2, 1, 0
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v20, v1, s34
	.loc	1 620 17                        ; ragged.py:620:17
	v_dual_mul_f32 v55, v105, v44 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mul_f32 v58, v102, v44 :: v_dual_add_nc_u32 v7, 32, v1
	v_dual_mul_f32 v60, v100, v44 :: v_dual_add_nc_u32 v1, 48, v1
	.loc	1 627 17                        ; ragged.py:627:17
	v_add3_u32 v50, v6, v4, v3
	.loc	1 620 17                        ; ragged.py:620:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v57, v103, v44 :: v_dual_lshlrev_b32 v46, 16, v46
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v64, v96, v44 :: v_dual_lshlrev_b32 v51, 16, v47
	v_mul_f32_e32 v52, v108, v44
	v_mul_f32_e32 v53, v107, v44
	v_dual_mul_f32 v59, v101, v44 :: v_dual_mul_f32 v92, v92, v45
	v_dual_mul_f32 v61, v99, v44 :: v_dual_mul_f32 v90, v90, v45
	v_dual_mul_f32 v63, v97, v44 :: v_dual_mul_f32 v88, v88, v45
	v_dual_mul_f32 v66, v95, v44 :: v_dual_mul_f32 v81, v81, v45
	v_dual_mul_f32 v67, v94, v44 :: v_dual_mul_f32 v84, v84, v45
	v_dual_mul_f32 v93, v93, v44 :: v_dual_mul_f32 v86, v86, v45
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v79, v79, v45 :: v_dual_lshlrev_b32 v44, 16, v48
	v_mul_f32_e32 v91, v91, v45
	v_dual_mul_f32 v82, v82, v45 :: v_dual_mul_f32 v75, v75, v46
	v_dual_mul_f32 v80, v80, v45 :: v_dual_mul_f32 v73, v73, v46
	v_dual_mul_f32 v78, v78, v45 :: v_dual_mul_f32 v71, v71, v46
	v_dual_mul_f32 v77, v77, v45 :: v_dual_mul_f32 v76, v76, v46
	v_dual_mul_f32 v74, v74, v46 :: v_dual_mul_f32 v37, v37, v51
	v_dual_mul_f32 v72, v72, v46 :: v_dual_mul_f32 v101, v33, v51
	v_dual_mul_f32 v70, v70, v46 :: v_dual_mul_f32 v31, v31, v51
	v_dual_mul_f32 v69, v69, v46 :: v_dual_mul_f32 v36, v36, v51
	v_dual_mul_f32 v68, v68, v46 :: v_dual_mul_f32 v29, v29, v51
	v_mul_f32_e32 v65, v65, v46
	v_dual_mul_f32 v94, v43, v46 :: v_dual_mul_f32 v25, v25, v51
	v_dual_mul_f32 v95, v42, v46 :: v_dual_mul_f32 v102, v32, v51
	v_dual_mul_f32 v96, v41, v46 :: v_dual_mul_f32 v27, v27, v51
	v_dual_mul_f32 v97, v40, v46 :: v_dual_mul_f32 v100, v34, v51
	v_mul_f32_e32 v98, v39, v46
	v_dual_mul_f32 v99, v38, v46 :: v_dual_mul_f32 v28, v28, v51
	.loc	1 627 17                        ; ragged.py:627:17
	ds_store_b32 v50, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v49
	ds_load_b128 v[42:45], v49 offset:16
	.loc	1 620 17                        ; ragged.py:620:17
	v_mul_f32_e32 v50, v35, v51
	.loc	1 627 17                        ; ragged.py:627:17
	ds_load_b128 v[32:35], v49 offset:512
	ds_load_b128 v[46:49], v49 offset:528
	.loc	1 620 17                        ; ragged.py:620:17
	v_mul_f32_e32 v30, v30, v51
	v_mul_f32_e32 v26, v26, v51
	v_mul_f32_e32 v24, v24, v51
	v_mul_f32_e32 v23, v23, v51
	v_mul_f32_e32 v22, v22, v51
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v15, s33, v5
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v19, v2, s34
	v_mul_lo_u32 v16, v7, s34
	v_mul_lo_u32 v1, v1, s34
	.loc	1 679 9                         ; ragged.py:679:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v2, 0x87, v15
	v_or_b32_e32 v3, 0x86, v15
	v_or_b32_e32 v4, 0x85, v15
	v_or_b32_e32 v5, 0x84, v15
	v_or_b32_e32 v6, 0x83, v15
	.loc	1 627 17                        ; ragged.py:627:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v51, v52, v38 :: v_dual_mul_f32 v52, v53, v39
	v_dual_mul_f32 v53, v54, v40 :: v_dual_mul_f32 v54, v55, v41
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v55, v56, v42 :: v_dual_mul_f32 v56, v57, v43
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v83, v83, v33
	v_dual_mul_f32 v57, v58, v44 :: v_dual_mul_f32 v58, v59, v45
	v_mul_f32_e32 v81, v81, v35
	v_dual_mul_f32 v59, v60, v32 :: v_dual_mul_f32 v60, v61, v33
	v_dual_mul_f32 v61, v62, v34 :: v_dual_mul_f32 v62, v63, v35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v63, v64, v46 :: v_dual_mul_f32 v64, v66, v47
	v_dual_mul_f32 v89, v89, v41 :: v_dual_mul_f32 v92, v92, v38
	v_dual_mul_f32 v91, v91, v39 :: v_dual_mul_f32 v90, v90, v40
	v_mul_f32_e32 v87, v87, v43
	v_dual_mul_f32 v66, v67, v48 :: v_dual_mul_f32 v85, v85, v45
	v_dual_mul_f32 v67, v93, v49 :: v_dual_mul_f32 v88, v88, v42
	v_dual_mul_f32 v79, v79, v47 :: v_dual_mul_f32 v86, v86, v44
	v_dual_mul_f32 v77, v77, v49 :: v_dual_mul_f32 v84, v84, v32
	v_dual_mul_f32 v75, v75, v39 :: v_dual_mul_f32 v82, v82, v34
	v_dual_mul_f32 v73, v73, v41 :: v_dual_mul_f32 v80, v80, v46
	v_dual_mul_f32 v71, v71, v43 :: v_dual_mul_f32 v76, v76, v38
	v_dual_mul_f32 v65, v65, v33 :: v_dual_mul_f32 v74, v74, v40
	v_mul_f32_e32 v72, v72, v42
	v_dual_mul_f32 v70, v70, v44 :: v_dual_mul_f32 v37, v37, v38
	v_dual_mul_f32 v68, v68, v32 :: v_dual_mul_f32 v93, v94, v34
	v_dual_mul_f32 v94, v95, v35 :: v_dual_mul_f32 v95, v96, v46
	v_dual_mul_f32 v96, v97, v47 :: v_dual_mul_f32 v31, v31, v44
	v_dual_mul_f32 v97, v98, v48 :: v_dual_mul_f32 v98, v99, v49
	v_dual_mul_f32 v36, v36, v39 :: v_dual_mul_f32 v29, v29, v32
	v_dual_mul_f32 v38, v50, v40 :: v_dual_mul_f32 v27, v27, v34
	v_dual_mul_f32 v39, v100, v41 :: v_dual_mul_f32 v40, v101, v42
	v_mul_f32_e32 v23, v23, v48
	v_mul_f32_e32 v41, v102, v43
	v_dual_mul_f32 v30, v30, v45 :: v_dual_mul_f32 v25, v25, v46
	v_mul_f32_e32 v24, v24, v47
	.loc	1 679 9                         ; ragged.py:679:9
	v_bfe_u32 v32, v51, 16, 1
	v_bfe_u32 v42, v55, 16, 1
	v_bfe_u32 v43, v56, 16, 1
	v_bfe_u32 v44, v57, 16, 1
	v_bfe_u32 v46, v59, 16, 1
	v_bfe_u32 v47, v60, 16, 1
	v_bfe_u32 v103, v91, 16, 1
	v_bfe_u32 v104, v90, 16, 1
	v_bfe_u32 v105, v89, 16, 1
	v_bfe_u32 v34, v53, 16, 1
	.loc	1 627 17                        ; ragged.py:627:17
	v_dual_mul_f32 v78, v78, v48 :: v_dual_mul_f32 v69, v69, v45
	v_mul_f32_e32 v28, v28, v33
	.loc	1 679 9                         ; ragged.py:679:9
	v_cmp_o_f32_e64 s19, v51, v51
	v_bfe_u32 v33, v52, 16, 1
	v_cmp_o_f32_e64 s23, v55, v55
	v_cmp_o_f32_e64 s24, v56, v56
	v_cmp_o_f32_e64 s25, v57, v57
	v_bfe_u32 v45, v58, 16, 1
	v_cmp_o_f32_e64 s27, v59, v59
	v_cmp_o_f32_e64 s28, v60, v60
	v_bfe_u32 v48, v61, 16, 1
	v_cmp_o_f32_e64 s37, v91, v91
	v_cmp_o_f32_e64 s38, v90, v90
	v_cmp_o_f32_e64 s39, v89, v89
	v_bfe_u32 v106, v88, 16, 1
	v_bfe_u32 v107, v87, 16, 1
	v_bfe_u32 v121, v73, 16, 1
	v_add3_u32 v32, v51, v32, 0x7fff
	v_add3_u32 v42, v55, v42, 0x7fff
	v_add3_u32 v43, v56, v43, 0x7fff
	v_add3_u32 v44, v57, v44, 0x7fff
	v_add3_u32 v46, v59, v46, 0x7fff
	v_add3_u32 v47, v60, v47, 0x7fff
	v_add3_u32 v55, v91, v103, 0x7fff
	v_add3_u32 v56, v90, v104, 0x7fff
	v_add3_u32 v57, v89, v105, 0x7fff
	v_add3_u32 v34, v53, v34, 0x7fff
	v_cmp_o_f32_e64 s20, v52, v52
	v_cmp_o_f32_e64 s26, v58, v58
	v_cmp_o_f32_e64 s29, v61, v61
	v_cmp_o_f32_e64 s40, v88, v88
	v_cmp_o_f32_e64 s41, v87, v87
	v_bfe_u32 v108, v86, 16, 1
	v_add3_u32 v33, v52, v33, 0x7fff
	v_add3_u32 v45, v58, v45, 0x7fff
	v_add3_u32 v48, v61, v48, 0x7fff
	v_add3_u32 v58, v88, v106, 0x7fff
	v_add3_u32 v59, v87, v107, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s19
	v_cndmask_b16 v34.l, 0x7fff, v42.h, s23
	v_cndmask_b16 v42.l, 0x7fff, v46.h, s27
	v_cndmask_b16 v42.h, 0x7fff, v47.h, s28
	v_cndmask_b16 v46.h, 0x7fff, v55.h, s37
	v_cndmask_b16 v47.l, 0x7fff, v56.h, s38
	v_cndmask_b16 v47.h, 0x7fff, v57.h, s39
	v_add3_u32 v55, v73, v121, 0x7fff
	v_cmp_o_f32_e64 s19, v73, v73
	v_bfe_u32 v56, v72, 16, 1
	v_bfe_u32 v57, v71, 16, 1
	.loc	1 627 17                        ; ragged.py:627:17
	v_mul_f32_e32 v22, v22, v49
	.loc	1 679 9                         ; ragged.py:679:9
	v_bfe_u32 v49, v62, 16, 1
	v_cmp_o_f32_e64 s21, v53, v53
	v_cmp_o_f32_e64 s42, v86, v86
	v_bfe_u32 v109, v85, 16, 1
	v_add3_u32 v60, v86, v108, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v33.h, s20
	v_cndmask_b16 v43.l, 0x7fff, v48.h, s29
	v_cndmask_b16 v48.l, 0x7fff, v58.h, s40
	v_cndmask_b16 v48.h, 0x7fff, v59.h, s41
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s19
	v_bfe_u32 v58, v70, 16, 1
	v_add3_u32 v56, v72, v56, 0x7fff
	v_cmp_o_f32_e64 s19, v72, v72
	v_add3_u32 v57, v71, v57, 0x7fff
	v_cmp_o_f32_e64 s20, v71, v71
	v_bfe_u32 v59, v69, 16, 1
	v_add3_u32 v49, v62, v49, 0x7fff
	v_cmp_o_f32_e64 s30, v62, v62
	v_cmp_o_f32_e64 s43, v85, v85
	v_add3_u32 v61, v85, v109, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s21
	v_cndmask_b16 v49.l, 0x7fff, v60.h, s42
	v_add3_u32 v58, v70, v58, 0x7fff
	v_cmp_o_f32_e64 s21, v70, v70
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s19
	v_cndmask_b16 v56.h, 0x7fff, v57.h, s20
	v_bfe_u32 v57, v68, 16, 1
	v_bfe_u32 v60, v65, 16, 1
	v_add3_u32 v59, v69, v59, 0x7fff
	v_cmp_o_f32_e64 s19, v69, v69
	v_bfe_u32 v50, v63, 16, 1
	v_bfe_u32 v110, v84, 16, 1
	v_bfe_u32 v111, v83, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v43.h, s24
	v_cndmask_b16 v43.h, 0x7fff, v49.h, s30
	v_cndmask_b16 v49.h, 0x7fff, v61.h, s43
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s21
	v_add3_u32 v57, v68, v57, 0x7fff
	v_cmp_o_f32_e64 s20, v68, v68
	v_add3_u32 v60, v65, v60, 0x7fff
	v_cmp_o_f32_e64 s21, v65, v65
	v_cndmask_b16 v58.h, 0x7fff, v59.h, s19
	v_bfe_u32 v59, v93, 16, 1
	v_bfe_u32 v61, v94, 16, 1
	v_cmp_o_f32_e64 s31, v63, v63
	v_cmp_o_f32_e64 s44, v84, v84
	v_cmp_o_f32_e64 s45, v83, v83
	v_add3_u32 v50, v63, v50, 0x7fff
	v_add3_u32 v62, v84, v110, 0x7fff
	v_add3_u32 v63, v83, v111, 0x7fff
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s20
	v_cndmask_b16 v57.h, 0x7fff, v60.h, s21
	v_bfe_u32 v60, v95, 16, 1
	v_add3_u32 v59, v93, v59, 0x7fff
	v_cmp_o_f32_e64 s19, v93, v93
	v_add3_u32 v61, v94, v61, 0x7fff
	v_cmp_o_f32_e64 s20, v94, v94
	v_bfe_u32 v99, v64, 16, 1
	v_bfe_u32 v112, v82, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v50.h, s31
	v_cndmask_b16 v50.l, 0x7fff, v62.h, s44
	v_cndmask_b16 v50.h, 0x7fff, v63.h, s45
	v_add3_u32 v60, v95, v60, 0x7fff
	v_cmp_o_f32_e64 s21, v95, v95
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s19
	v_bfe_u32 v62, v96, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v61.h, s20
	v_bfe_u32 v61, v97, 16, 1
	v_bfe_u32 v63, v98, 16, 1
	v_cmp_o_f32_e64 s33, v64, v64
	v_cmp_o_f32_e64 s46, v82, v82
	v_add3_u32 v51, v64, v99, 0x7fff
	v_add3_u32 v64, v82, v112, 0x7fff
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s21
	v_add3_u32 v62, v96, v62, 0x7fff
	v_cmp_o_f32_e64 s19, v96, v96
	v_add3_u32 v61, v97, v61, 0x7fff
	v_cmp_o_f32_e64 s20, v97, v97
	v_add3_u32 v63, v98, v63, 0x7fff
	v_cmp_o_f32_e64 s21, v98, v98
	v_cndmask_b16 v51.l, 0x7fff, v64.h, s46
	v_cndmask_b16 v60.h, 0x7fff, v62.h, s19
	v_bfe_u32 v62, v37, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v61.h, s20
	v_bfe_u32 v64, v36, 16, 1
	v_cndmask_b16 v61.h, 0x7fff, v63.h, s21
	v_bfe_u32 v63, v38, 16, 1
	v_add3_u32 v62, v37, v62, 0x7fff
	v_cmp_o_f32_e64 s19, v37, v37
	v_add3_u32 v37, v36, v64, 0x7fff
	v_cmp_o_f32_e64 s20, v36, v36
	v_add3_u32 v36, v38, v63, 0x7fff
	v_cmp_o_f32_e64 s21, v38, v38
	v_bfe_u32 v38, v39, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v62.h, s19
	v_bfe_u32 v62, v40, 16, 1
	v_bfe_u32 v63, v41, 16, 1
	v_cmp_o_f32_e64 s19, v39, v39
	v_add3_u32 v38, v39, v38, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s20
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s21
	v_add3_u32 v39, v40, v62, 0x7fff
	v_cmp_o_f32_e64 s20, v40, v40
	v_add3_u32 v40, v41, v63, 0x7fff
	v_cmp_o_f32_e64 s21, v41, v41
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s19
	v_bfe_u32 v38, v31, 16, 1
	v_bfe_u32 v41, v30, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v40.h, s21
	v_bfe_u32 v40, v29, 16, 1
	v_add3_u32 v38, v31, v38, 0x7fff
	v_cmp_o_f32_e64 s19, v31, v31
	v_add3_u32 v31, v30, v41, 0x7fff
	v_cmp_o_f32_e64 s20, v30, v30
	.loc	1 627 17                        ; ragged.py:627:17
	v_mul_f32_e32 v26, v26, v35
	.loc	1 679 9                         ; ragged.py:679:9
	v_add3_u32 v30, v29, v40, 0x7fff
	v_cmp_o_f32_e64 s21, v29, v29
	v_cndmask_b16 v29.l, 0x7fff, v38.h, s19
	v_bfe_u32 v38, v28, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s20
	v_bfe_u32 v31, v27, 16, 1
	v_bfe_u32 v40, v26, 16, 1
	v_cmp_o_f32_e64 s19, v28, v28
	v_add3_u32 v38, v28, v38, 0x7fff
	v_cmp_o_f32_e64 s20, v27, v27
	v_add3_u32 v28, v27, v31, 0x7fff
	v_add3_u32 v27, v26, v40, 0x7fff
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v7, 0x82, v15
	v_or_b32_e32 v8, 0x81, v15
	v_or_b32_e32 v9, 0x80, v15
	v_or_b32_e32 v10, 7, v15
	v_or_b32_e32 v11, 6, v15
	v_or_b32_e32 v12, 5, v15
	v_or_b32_e32 v13, 4, v15
	v_or_b32_e32 v14, 3, v15
	v_or_b32_e32 v17, 2, v15
	v_or_b32_e32 v18, 1, v15
	.loc	1 679 9                         ; ragged.py:679:9
	v_bfe_u32 v35, v54, 16, 1
	v_bfe_u32 v100, v66, 16, 1
	v_bfe_u32 v101, v67, 16, 1
	v_bfe_u32 v102, v92, 16, 1
	v_bfe_u32 v118, v76, 16, 1
	v_bfe_u32 v119, v75, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s21
	v_cmp_o_f32_e64 s21, v26, v26
	v_bfe_u32 v26, v25, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s20
	v_bfe_u32 v28, v24, 16, 1
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s16, s34, v15
	v_cmp_gt_i32_e64 s3, s34, v2
	v_cmp_gt_i32_e64 s4, s34, v3
	v_cmp_gt_i32_e64 s5, s34, v4
	v_cmp_gt_i32_e64 s6, s34, v5
	v_cmp_gt_i32_e64 s7, s34, v6
	v_cmp_gt_i32_e64 s8, s34, v7
	v_cmp_gt_i32_e64 s9, s34, v8
	v_cmp_gt_i32_e64 s10, s34, v9
	v_cmp_gt_i32_e64 s11, s34, v10
	v_cmp_gt_i32_e64 s12, s34, v11
	v_cmp_gt_i32_e64 s13, s34, v12
	v_cmp_gt_i32_e64 s14, s34, v13
	v_cmp_gt_i32_e64 s15, s34, v14
	v_cmp_gt_i32_e64 s17, s34, v17
	v_cmp_gt_i32_e64 s18, s34, v18
	.loc	1 679 9                         ; ragged.py:679:9
	v_cmp_o_f32_e64 s22, v54, v54
	v_cmp_o_f32_e64 s34, v66, v66
	v_cmp_o_f32_e64 s35, v67, v67
	v_cmp_o_f32_e64 s36, v92, v92
	v_bfe_u32 v113, v81, 16, 1
	v_bfe_u32 v116, v78, 16, 1
	v_bfe_u32 v117, v77, 16, 1
	v_cmp_o_f32_e64 s52, v76, v76
	v_cmp_o_f32_e64 s53, v75, v75
	v_bfe_u32 v120, v74, 16, 1
	v_add3_u32 v35, v54, v35, 0x7fff
	v_add3_u32 v52, v66, v100, 0x7fff
	v_add3_u32 v53, v67, v101, 0x7fff
	v_add3_u32 v54, v92, v102, 0x7fff
	v_add3_u32 v76, v76, v118, 0x7fff
	v_add3_u32 v75, v75, v119, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v38.h, s19
	v_add3_u32 v26, v25, v26, 0x7fff
	v_bfe_u32 v31, v23, 16, 1
	v_cmp_o_f32_e64 s19, v25, v25
	v_add3_u32 v25, v24, v28, 0x7fff
	v_bfe_u32 v28, v22, 16, 1
	v_cmp_o_f32_e64 s47, v81, v81
	v_cmp_o_f32_e64 s50, v78, v78
	v_cmp_o_f32_e64 s51, v77, v77
	v_cmp_o_f32_e64 s54, v74, v74
	v_add3_u32 v66, v81, v113, 0x7fff
	v_add3_u32 v78, v78, v116, 0x7fff
	v_add3_u32 v77, v77, v117, 0x7fff
	v_add3_u32 v74, v74, v120, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s22
	v_cndmask_b16 v35.l, 0x7fff, v44.h, s25
	v_cndmask_b16 v35.h, 0x7fff, v45.h, s26
	v_cndmask_b16 v45.l, 0x7fff, v52.h, s34
	v_cndmask_b16 v45.h, 0x7fff, v53.h, s35
	v_cndmask_b16 v46.l, 0x7fff, v54.h, s36
	v_cndmask_b16 v54.l, 0x7fff, v76.h, s52
	v_cndmask_b16 v54.h, 0x7fff, v75.h, s53
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s21
	v_cmp_o_f32_e64 s20, v24, v24
	v_add3_u32 v24, v23, v31, 0x7fff
	v_cmp_o_f32_e64 s21, v23, v23
	v_add3_u32 v23, v22, v28, 0x7fff
	v_cmp_o_f32_e64 s22, v22, v22
	v_cndmask_b16 v22.l, 0x7fff, v26.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v44.h, 0x7fff, v51.h, s33
	v_cndmask_b16 v51.h, 0x7fff, v66.h, s47
	v_cndmask_b16 v53.l, 0x7fff, v78.h, s50
	v_cndmask_b16 v53.h, 0x7fff, v77.h, s51
	v_cndmask_b16 v55.l, 0x7fff, v74.h, s54
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v24.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v23.h, s22
	v_cndmask_b32_e64 v23, v34, v32, s19
	v_cndmask_b32_e64 v24, v32, v34, s19
	v_cndmask_b32_e64 v25, v35, v33, s19
	v_cndmask_b32_e64 v26, v33, v35, s19
	v_cndmask_b32_e64 v32, v45, v43, s19
	v_cndmask_b32_e64 v33, v43, v45, s19
	v_cndmask_b32_e64 v34, v48, v46, s19
	v_cndmask_b32_e64 v35, v46, v48, s19
	v_cndmask_b32_e64 v45, v56, v54, s19
	v_cndmask_b32_e64 v46, v54, v56, s19
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v28, v44, v42, s19
	v_cndmask_b32_e64 v31, v42, v44, s19
	v_cndmask_b32_e64 v38, v49, v47, s19
	v_cndmask_b32_e64 v40, v47, v49, s19
	v_cndmask_b32_e64 v43, v53, v51, s19
	v_cndmask_b32_e64 v44, v51, v53, s19
	v_cndmask_b32_e64 v47, v58, v55, s19
	v_cndmask_b32_e64 v48, v55, v58, s19
	v_cndmask_b32_e64 v53, v39, v37, s19
	v_cndmask_b32_e64 v37, v37, v39, s19
	v_cndmask_b32_e64 v39, v29, v36, s19
	v_cndmask_b32_e64 v29, v36, v29, s19
	v_cndmask_b32_e64 v36, v22, v30, s19
	v_cndmask_b32_e64 v22, v30, v22, s19
	v_cndmask_b32_e64 v30, v0, v27, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v27, v0, s19
	v_cndmask_b32_e64 v27, 0x1054, v54, s19
	v_bfe_u32 v114, v80, 16, 1
	v_bfe_u32 v115, v79, 16, 1
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	v_cmp_o_f32_e64 s48, v80, v80
	v_lshl_or_b32 v27, v27, 8, v27
	v_cmp_o_f32_e64 s49, v79, v79
	v_add3_u32 v67, v80, v114, 0x7fff
	v_add3_u32 v79, v79, v115, 0x7fff
	v_lshl_or_b32 v54, v54, 8, v54
	v_and_b32_e32 v27, 0x540054, v27
	s_mov_b32 s20, 0x76543210
	v_cndmask_b16 v52.l, 0x7fff, v67.h, s48
	v_cndmask_b16 v52.h, 0x7fff, v79.h, s49
	v_and_b32_e32 v54, 0x760076, v54
	v_lshl_or_b32 v27, v27, 4, v27
	v_permlanex16_b32 v24, v24, s20, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v84, v15, v20, 1
	v_cndmask_b32_e64 v41, v52, v50, s19
	v_cndmask_b32_e64 v42, v50, v52, s19
	v_cndmask_b32_e64 v50, v57, v60, s19
	v_cndmask_b32_e64 v52, v59, v61, s19
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v27, 0x5040504, v27
	v_add_lshl_u32 v85, v18, v20, 1
	v_cndmask_b32_e64 v49, v60, v57, s19
	v_cndmask_b32_e64 v51, v61, v59, s19
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v40, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v44, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v48, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v52, v52, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v37, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v29, v29, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v24, v23, v27
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s16, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v86, v17, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s18, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_perm_b32 v23, v24, v23, v54
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s17, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_perm_b32 v24, v26, v25, v27
	v_perm_b32 v25, v26, v25, v54
	v_perm_b32 v26, v31, v28, v27
	v_perm_b32 v28, v31, v28, v54
	v_perm_b32 v31, v33, v32, v27
	v_perm_b32 v32, v33, v32, v54
	v_perm_b32 v33, v35, v34, v27
	v_perm_b32 v34, v35, v34, v54
	v_perm_b32 v35, v40, v38, v27
	v_perm_b32 v38, v40, v38, v54
	v_perm_b32 v40, v42, v41, v27
	v_perm_b32 v41, v42, v41, v54
	v_perm_b32 v42, v44, v43, v27
	v_perm_b32 v43, v44, v43, v54
	v_perm_b32 v44, v46, v45, v27
	v_perm_b32 v45, v46, v45, v54
	v_perm_b32 v46, v48, v47, v27
	v_perm_b32 v47, v48, v47, v54
	v_perm_b32 v48, v50, v49, v27
	v_perm_b32 v49, v50, v49, v54
	v_perm_b32 v50, v52, v51, v27
	v_perm_b32 v51, v52, v51, v54
	v_perm_b32 v52, v37, v53, v27
	v_perm_b32 v37, v37, v53, v54
	v_perm_b32 v53, v29, v39, v27
	v_perm_b32 v29, v29, v39, v54
	v_perm_b32 v39, v22, v36, v27
	v_perm_b32 v27, v0, v30, v27
	v_perm_b32 v0, v0, v30, v54
	v_mov_b16_e32 v30.l, v55.h
	v_mov_b16_e32 v30.h, v21.h
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	buffer_store_b16 v55, v84, s[56:59], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	v_mov_b16_e32 v21.l, v23.h
	s_clause 0x1
	buffer_store_b16 v30, v85, s[56:59], 0 offen
	buffer_store_b16 v23, v86, s[56:59], 0 offen
	v_add_lshl_u32 v23, v13, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s15, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v84, v11, v20, 1
	v_cndmask_b32_e64 v30, 0x80000000, v55, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s14, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v55, v12, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s13, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_perm_b32 v22, v22, v36, v54
	v_mov_b16_e32 v36.h, v21.h
	v_mov_b16_e32 v54.h, v21.h
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
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s12, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v21, v30, s[56:59], 0 offen
	buffer_store_b16 v24, v23, s[56:59], 0 offen
	v_add_lshl_u32 v21, v10, v20, 1
	v_mov_b16_e32 v54.l, v24.h
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	v_add_lshl_u32 v23, v9, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s11, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v24, v8, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s10, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v36.l, v25.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[56:59], 0 offen
	buffer_store_b16 v25, v84, s[56:59], 0 offen
	v_add_lshl_u32 v25, v7, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s9, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v57.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s8, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v36, v21, s[56:59], 0 offen
	buffer_store_b16 v26, v23, s[56:59], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v25, s19
	v_add_lshl_u32 v21, v6, v20, 1
	v_add_lshl_u32 v23, v5, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s7, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v57, v24, s[56:59], 0 offen
	buffer_store_b16 v28, v25, s[56:59], 0 offen
	v_add_lshl_u32 v24, v4, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s6, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v56.l, v28.h
	v_add_lshl_u32 v25, v3, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s5, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v20, v2, v20, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s4, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v59.l, v31.h
	v_cndmask_b32_e64 v25, 0x80000000, v25, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[56:59], 0 offen
	buffer_store_b16 v31, v23, s[56:59], 0 offen
	v_add_lshl_u32 v21, v15, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s3, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v23, v18, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s16, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v58.l, v32.h
	s_clause 0x1
	buffer_store_b16 v59, v24, s[56:59], 0 offen
	buffer_store_b16 v32, v25, s[56:59], 0 offen
	v_add_lshl_u32 v24, v17, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s18, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v61.l, v33.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s17, s1
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[56:59], 0 offen
	buffer_store_b16 v33, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_add_lshl_u32 v20, v14, v19, 1
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s15, s1
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v61, v23, s[56:59], 0 offen
	buffer_store_b16 v34, v24, s[56:59], 0 offen
	v_add_lshl_u32 v23, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s14, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v60.l, v34.h
	v_add_lshl_u32 v24, v11, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s13, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v63.l, v35.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s12, s1
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[56:59], 0 offen
	buffer_store_b16 v35, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_add_lshl_u32 v20, v10, v19, 1
	v_add_lshl_u32 v21, v9, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s11, s1
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v63, v23, s[56:59], 0 offen
	buffer_store_b16 v38, v24, s[56:59], 0 offen
	v_add_lshl_u32 v23, v8, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s10, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v62.l, v38.h
	v_add_lshl_u32 v24, v7, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s9, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v65.l, v40.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s8, s1
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[56:59], 0 offen
	buffer_store_b16 v40, v21, s[56:59], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_add_lshl_u32 v20, v6, v19, 1
	v_add_lshl_u32 v21, v5, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s7, s1
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v65, v23, s[56:59], 0 offen
	buffer_store_b16 v41, v24, s[56:59], 0 offen
	v_add_lshl_u32 v23, v4, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s6, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v64.l, v41.h
	v_add_lshl_u32 v24, v3, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s5, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v19, v2, v19, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s4, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v67.l, v42.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	s_clause 0x1
	buffer_store_b16 v64, v20, s[56:59], 0 offen
	buffer_store_b16 v42, v21, s[56:59], 0 offen
	v_add_lshl_u32 v20, v15, v16, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s3, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v21, v18, v16, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s16, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v66.l, v43.h
	s_clause 0x1
	buffer_store_b16 v67, v23, s[56:59], 0 offen
	buffer_store_b16 v43, v24, s[56:59], 0 offen
	v_add_lshl_u32 v23, v17, v16, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s18, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v69.l, v44.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s17, s0
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[56:59], 0 offen
	buffer_store_b16 v44, v20, s[56:59], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_add_lshl_u32 v19, v14, v16, 1
	v_add_lshl_u32 v20, v13, v16, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s15, s0
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[56:59], 0 offen
	buffer_store_b16 v45, v23, s[56:59], 0 offen
	v_add_lshl_u32 v21, v12, v16, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s14, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v68.l, v45.h
	v_add_lshl_u32 v23, v11, v16, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s13, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v71.l, v46.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s12, s0
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[56:59], 0 offen
	buffer_store_b16 v46, v20, s[56:59], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_add_lshl_u32 v19, v10, v16, 1
	v_add_lshl_u32 v20, v9, v16, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s11, s0
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[56:59], 0 offen
	buffer_store_b16 v47, v23, s[56:59], 0 offen
	v_add_lshl_u32 v21, v8, v16, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s10, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v70.l, v47.h
	v_add_lshl_u32 v23, v7, v16, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s9, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v73.l, v48.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s8, s0
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v70, v19, s[56:59], 0 offen
	buffer_store_b16 v48, v20, s[56:59], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_add_lshl_u32 v19, v6, v16, 1
	v_add_lshl_u32 v20, v5, v16, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s7, s0
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[56:59], 0 offen
	buffer_store_b16 v49, v23, s[56:59], 0 offen
	v_add_lshl_u32 v21, v4, v16, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s6, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v23, v3, v16, 1
	v_add_lshl_u32 v16, v2, v16, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s5, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v15, v15, v1, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s4, s0
	s_and_b32 s0, s3, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v18, v18, v1, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s16, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v17, v17, v1, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s18, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v14, v14, v1, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s17, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v13, v13, v1, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s15, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v12, v12, v1, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s14, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v11, v11, v1, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s13, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v10, v10, v1, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s12, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v9, v9, v1, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s11, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v8, v8, v1, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s10, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v7, v7, v1, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s9, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v6, v6, v1, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s8, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v5, v5, v1, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s7, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v4, v4, v1, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s6, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v3, v3, v1, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s5, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v72.l, v49.h
	v_mov_b16_e32 v74.l, v51.h
	v_mov_b16_e32 v75.l, v50.h
	v_mov_b16_e32 v76.l, v37.h
	v_mov_b16_e32 v77.l, v52.h
	v_mov_b16_e32 v78.l, v29.h
	v_mov_b16_e32 v79.l, v53.h
	v_mov_b16_e32 v80.l, v22.h
	v_mov_b16_e32 v81.l, v39.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_cndmask_b32_e64 v2, 0x80000000, v4, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s4, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v83.l, v27.h
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 vcc_lo, s3, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x14
	buffer_store_b16 v72, v19, s[56:59], 0 offen
	buffer_store_b16 v50, v20, s[56:59], 0 offen
	buffer_store_b16 v75, v21, s[56:59], 0 offen
	buffer_store_b16 v51, v23, s[56:59], 0 offen
	buffer_store_b16 v74, v16, s[56:59], 0 offen
	buffer_store_b16 v52, v15, s[56:59], 0 offen
	buffer_store_b16 v77, v18, s[56:59], 0 offen
	buffer_store_b16 v37, v17, s[56:59], 0 offen
	buffer_store_b16 v76, v14, s[56:59], 0 offen
	buffer_store_b16 v53, v13, s[56:59], 0 offen
	buffer_store_b16 v79, v12, s[56:59], 0 offen
	buffer_store_b16 v29, v11, s[56:59], 0 offen
	buffer_store_b16 v78, v10, s[56:59], 0 offen
	buffer_store_b16 v39, v9, s[56:59], 0 offen
	buffer_store_b16 v81, v8, s[56:59], 0 offen
	buffer_store_b16 v22, v7, s[56:59], 0 offen
	buffer_store_b16 v80, v6, s[56:59], 0 offen
	buffer_store_b16 v27, v5, s[56:59], 0 offen
	buffer_store_b16 v83, v2, s[56:59], 0 offen
	buffer_store_b16 v0, v3, s[56:59], 0 offen
	buffer_store_b16 v82, v1, s[56:59], 0 offen
	.loc	1 544 5                         ; ragged.py:544:5
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 64
		.amdhsa_kernarg_size 112
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 64
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 64
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 64
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13740
; TotalNumSgprs: 66
; NumVgprs: 256
; ScratchSize: 64
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 66
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 64
    .sgpr_count:     66
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 15
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
