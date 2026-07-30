	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:570:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:570:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
.Ltmp2:
	.loc	1 572 25 is_stmt 1              ; ragged.py:572:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v102, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v94, 0
	s_xor_b32 s4, s4, s6
	.loc	1 584 36                        ; ragged.py:584:36
	v_and_b32_e32 v20, 0xf0, v0
	.loc	1 572 25                        ; ragged.py:572:25
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
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
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	.loc	1 583 32                        ; ragged.py:583:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 577 17                        ; ragged.py:577:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
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
	s_lshl_b64 s[28:29], s[2:3], 3
	s_add_u32 s2, s20, s28
	s_addc_u32 s3, s21, s29
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 581 24                        ; ragged.py:581:24
	s_add_u32 s2, s22, s28
	s_addc_u32 s3, s23, s29
	.loc	1 582 22                        ; ragged.py:582:22
	s_add_u32 s4, s24, s28
	s_addc_u32 s5, s25, s29
	.loc	1 581 24                        ; ragged.py:581:24
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 582 22                        ; ragged.py:582:22
	s_load_b64 s[24:25], s[4:5], 0x0
	.loc	1 584 18                        ; ragged.py:584:18
	s_lshl_b32 s35, s6, 8
	.loc	1 583 18                        ; ragged.py:583:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s10, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s11, 0, s2
	.loc	1 664 25                        ; ragged.py:664:25
	v_add_nc_u32_e32 v98, s10, v1
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e32 vcc_lo, s[20:21], v[2:3]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s2, s[24:25], v[2:3]
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s3, s[20:21], v[4:5]
	v_cmp_le_i64_e64 s5, s[20:21], v[6:7]
	v_cmp_le_i64_e64 s6, s[20:21], v[8:9]
	.loc	1 585 48                        ; ragged.py:585:48
	v_cmp_gt_i64_e64 s7, s[24:25], v[4:5]
	v_cmp_gt_i64_e64 s8, s[24:25], v[6:7]
	v_cmp_gt_i64_e64 s9, s[24:25], v[8:9]
	.loc	1 664 25 is_stmt 1              ; ragged.py:664:25
	v_add_nc_u32_e32 v137, 16, v98
	v_add_nc_u32_e32 v100, 32, v98
	v_add_nc_u32_e32 v129, 48, v98
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 634 19                        ; ragged.py:634:19
	s_cmp_lt_i32 s34, 1
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3
	s_load_b64 s[30:31], s[0:1], 0x20
	s_load_b32 s7, s[0:1], 0x50
	s_load_b32 s6, s[0:1], 0x48
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 583 18 is_stmt 1              ; ragged.py:583:18
	v_dual_mov_b32 v94, 0 :: v_dual_and_b32 v3, 63, v0
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v124, 0, v1
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v9, s35, v0
	v_or_b32_e32 v6, 0x3f0, v0
	.loc	1 631 28                        ; ragged.py:631:28
	v_lshrrev_b32_e32 v123, 6, v0
	v_or_b32_e32 v4, 0x300, v0
	v_or_b32_e32 v5, 0x700, v0
	v_or_b32_e32 v7, 0x7f0, v0
	v_lshrrev_b32_e32 v8, 1, v0
	v_or_b32_e32 v12, 0xb00, v0
	v_or_b32_e32 v13, 0xf00, v0
	v_or_b32_e32 v14, 0x1300, v0
	v_or_b32_e32 v15, 0x1700, v0
	v_or_b32_e32 v16, 0x1b00, v0
	.loc	1 579 20                        ; ragged.py:579:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s30, s28
	s_addc_u32 s1, s31, s29
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v10, 5, v0
	.loc	1 671 25                        ; ragged.py:671:25
	s_load_b32 s9, s[0:1], 0x0
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_u32 v1, s0, s10, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s11, 0, s0
	v_or_b32_e32 v17, 0x1f00, v0
	v_lshlrev_b32_e32 v19, 1, v0
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s1, s[20:21], v[1:2]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s5, s[24:25], v[1:2]
	v_mov_b32_e32 v2, v9
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v126, 0, v0
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v0, 0, v6
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[2:3], off
	scratch_store_b32 off, v20, off offset:56
	v_mov_b32_e32 v103, 0
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v0, 0, v7
	v_mov_b32_e32 v95, 0
	.loc	1 647 39 is_stmt 1              ; ragged.py:647:39
	s_mul_i32 s7, s7, s33
	v_dual_mov_b32 v120, 0 :: v_dual_and_b32 v1, 32, v10
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v12
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[10:11], null, s7, s9, v[9:10]
	v_mov_b32_e32 v93, 0
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v11, s10, v3
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v0, 0, v13
	v_dual_mov_b32 v117, 0 :: v_dual_lshlrev_b32 v18, 2, v20
	v_dual_mov_b32 v115, 0 :: v_dual_and_b32 v8, 0x70, v8
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v14
	.loc	1 634 19                        ; ragged.py:634:19
	v_mad_u64_u32 v[13:14], null, s33, 5, v[10:11]
	v_mov_b32_e32 v89, 0
	v_add3_u32 v1, 0, v18, v1
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v15
	v_mad_u64_u32 v[14:15], null, s33, 6, v[10:11]
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v2, 28, v19
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v16
	v_mad_u64_u32 v[15:16], null, s33, 7, v[10:11]
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v125, v124, v8
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v0, 0, v17
	v_mad_u64_u32 v[16:17], null, s33, 9, v[10:11]
	v_mad_u64_u32 v[17:18], null, s33, 10, v[10:11]
	v_mad_u64_u32 v[18:19], null, s33, 11, v[10:11]
	v_dual_mov_b32 v111, 0 :: v_dual_lshlrev_b32 v8, 1, v20
	v_mad_u64_u32 v[19:20], null, s33, 12, v[10:11]
	v_mad_u64_u32 v[20:21], null, s33, 13, v[10:11]
	v_mad_u64_u32 v[21:22], null, s33, 14, v[10:11]
	v_mad_u64_u32 v[22:23], null, s33, 15, v[10:11]
	v_mad_u64_u32 v[23:24], null, s33, 17, v[10:11]
	v_mad_u64_u32 v[24:25], null, s33, 18, v[10:11]
	v_mad_u64_u32 v[25:26], null, s33, 19, v[10:11]
	v_mad_u64_u32 v[26:27], null, s33, 20, v[10:11]
	v_mad_u64_u32 v[27:28], null, s33, 21, v[10:11]
	v_mad_u64_u32 v[28:29], null, s33, 22, v[10:11]
	v_mad_u64_u32 v[29:30], null, s33, 23, v[10:11]
	v_mad_u64_u32 v[30:31], null, s33, 24, v[10:11]
	v_mad_u64_u32 v[31:32], null, s33, 25, v[10:11]
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v0, v1, v2
	v_mad_u64_u32 v[32:33], null, s33, 26, v[10:11]
	v_mad_u64_u32 v[33:34], null, s33, 27, v[10:11]
	v_mad_u64_u32 v[34:35], null, s33, 28, v[10:11]
	v_mad_u64_u32 v[35:36], null, s33, 29, v[10:11]
	v_mad_u64_u32 v[36:37], null, s33, 30, v[10:11]
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s33, 3, v[10:11]
	v_mad_u64_u32 v[37:38], null, s33, 31, v[10:11]
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s0, s33, v9
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v127, 0, v4
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v128, 0, v5
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v138, 0, v8
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v55, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v54, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	s_mov_b32 s28, s14
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 s1, s1, s5
	s_and_b32 s21, s13, 0xffff
	s_and_b32 s29, s15, 0xffff
	.loc	1 671 25                        ; ragged.py:671:25
	s_mul_i32 s5, s34, s9
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s37, s19, 0xffff
	s_mov_b32 s36, s18
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_mov_b32 s7, s8
	.loc	1 634 19                        ; ragged.py:634:19
	scratch_store_b64 off, v[0:1], off offset:44 ; 8-byte Folded Spill
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b64 v[41:42], off, off offset:44 ; 8-byte Folded Reload
	.loc	1 636 28 is_stmt 1              ; ragged.py:636:28
	s_lshl_b32 s18, s7, 5
	.loc	1 634 19                        ; ragged.py:634:19
	v_add_nc_u32_e32 v39, s33, v10
	v_or_b32_e32 v1, s18, v123
	v_lshl_add_u32 v40, s33, 1, v10
	s_waitcnt vmcnt(0)
	v_lshl_add_u32 v42, s33, 2, v10
	v_lshl_add_u32 v46, s33, 3, v10
	v_lshl_add_u32 v99, s33, 4, v10
	v_mad_u64_u32 v[1:2], null, v1, s6, v[11:12]
	.loc	1 649 34                        ; ragged.py:649:34
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	.loc	1 671 25                        ; ragged.py:671:25
	s_add_i32 s24, s7, s5
	.loc	1 670 40                        ; ragged.py:670:40
	s_mov_b32 s38, s22
	.loc	1 671 25                        ; ragged.py:671:25
	s_mul_i32 s24, s24, s33
	.loc	1 670 40                        ; ragged.py:670:40
	s_mov_b32 s39, s23
	v_cndmask_b32_e64 v3, 0x80000000, v1, s1
	.loc	1 631 28                        ; ragged.py:631:28
	v_or_b32_e32 v1, 4, v123
	.loc	1 663 40                        ; ragged.py:663:40
	s_mov_b32 s19, s23
	v_mov_b32_e32 v9, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, s18, v1
	v_mad_u64_u32 v[1:2], null, v1, s6, v[11:12]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v4, 0x80000000, v1, s1
	.loc	1 631 28                        ; ragged.py:631:28
	v_or_b32_e32 v1, 8, v123
	v_or_b32_e32 v1, s18, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[1:2], null, v1, s6, v[11:12]
	v_cndmask_b32_e64 v5, 0x80000000, v1, s1
	v_or_b32_e32 v1, 12, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, s18, v1
	v_mad_u64_u32 v[1:2], null, v1, s6, v[11:12]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v6, 0x80000000, v1, s1
	v_or_b32_e32 v1, 16, v123
	v_or_b32_e32 v1, s18, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[1:2], null, v1, s6, v[11:12]
	v_cndmask_b32_e64 v7, 0x80000000, v1, s1
	v_or_b32_e32 v1, 20, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v1, s18, v1
	v_mad_u64_u32 v[1:2], null, v1, s6, v[11:12]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v8, 0x80000000, v1, s1
	v_or_b32_e32 v1, 24, v123
	v_or_b32_e32 v1, s18, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[1:2], null, v1, s6, v[11:12]
	v_cndmask_b32_e64 v38, 0x80000000, v1, s1
	v_or_b32_e32 v1, 28, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_or_b32_e32 v1, s18, v1
	s_mul_i32 s18, s18, s33
	v_add_nc_u32_e32 v40, s18, v40
	v_add_nc_u32_e32 v42, s18, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[1:2], null, v1, s6, v[11:12]
	v_add_nc_u32_e32 v2, s18, v10
	v_dual_mov_b32 v12, v129 :: v_dual_add_nc_u32 v39, s18, v39
	v_add_nc_u32_e32 v43, s18, v13
	v_add_nc_u32_e32 v44, s18, v14
	v_add_nc_u32_e32 v45, s18, v15
	v_add_nc_u32_e32 v46, s18, v46
	v_add_nc_u32_e32 v47, s18, v16
	v_add_nc_u32_e32 v48, s18, v17
	v_add_nc_u32_e32 v49, s18, v18
	v_add_nc_u32_e32 v50, s18, v19
	v_add_nc_u32_e32 v51, s18, v20
	v_add_nc_u32_e32 v52, s18, v21
	v_add_nc_u32_e32 v53, s18, v22
	v_add_nc_u32_e32 v99, s18, v99
	v_add_nc_u32_e32 v100, s18, v23
	v_add_nc_u32_e32 v129, s18, v24
	v_add_nc_u32_e32 v130, s18, v25
	v_add_nc_u32_e32 v139, s18, v26
	v_add_nc_u32_e32 v140, s18, v27
	v_add_nc_u32_e32 v141, s18, v28
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_nc_u32_e32 v142, s18, v29
	v_add_nc_u32_e32 v143, s18, v30
	v_add_nc_u32_e32 v144, s18, v31
	v_add_nc_u32_e32 v145, s18, v32
	v_add_nc_u32_e32 v146, s18, v33
	v_add_nc_u32_e32 v147, s18, v34
	v_add_nc_u32_e32 v148, s18, v35
	v_add_nc_u32_e32 v149, s18, v36
	v_add_nc_u32_e32 v150, s18, v37
	v_cndmask_b32_e64 v39, 0x80000000, v39, s0
	v_cndmask_b32_e64 v40, 0x80000000, v40, s0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	v_cndmask_b32_e64 v43, 0x80000000, v43, s0
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	v_cndmask_b32_e64 v45, 0x80000000, v45, s0
	v_cndmask_b32_e64 v46, 0x80000000, v46, s0
	v_cndmask_b32_e64 v47, 0x80000000, v47, s0
	v_cndmask_b32_e64 v48, 0x80000000, v48, s0
	v_cndmask_b32_e64 v49, 0x80000000, v49, s0
	v_cndmask_b32_e64 v50, 0x80000000, v50, s0
	v_cndmask_b32_e64 v51, 0x80000000, v51, s0
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	v_cndmask_b32_e64 v53, 0x80000000, v53, s0
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	v_cndmask_b32_e64 v139, 0x80000000, v139, s0
	v_cndmask_b32_e64 v140, 0x80000000, v140, s0
	v_cndmask_b32_e64 v141, 0x80000000, v141, s0
	v_cndmask_b32_e64 v142, 0x80000000, v142, s0
	v_cndmask_b32_e64 v143, 0x80000000, v143, s0
	v_cndmask_b32_e64 v144, 0x80000000, v144, s0
	v_cndmask_b32_e64 v145, 0x80000000, v145, s0
	v_cndmask_b32_e64 v146, 0x80000000, v146, s0
	v_cndmask_b32_e64 v147, 0x80000000, v147, s0
	v_cndmask_b32_e64 v148, 0x80000000, v148, s0
	v_cndmask_b32_e64 v149, 0x80000000, v149, s0
	v_cndmask_b32_e64 v150, 0x80000000, v150, s0
	v_add_nc_u32_e32 v41, s18, v41
	.loc	1 663 40                        ; ragged.py:663:40
	s_mov_b32 s18, s22
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s0
	.loc	1 649 34                        ; ragged.py:649:34
	s_clause 0x1f
	buffer_load_u8 v2, v2, s[28:31], 0 offen
	buffer_load_u8 v153, v39, s[28:31], 0 offen
	buffer_load_u8 v40, v40, s[28:31], 0 offen
	buffer_load_u8 v41, v41, s[28:31], 0 offen
	buffer_load_u8 v42, v42, s[28:31], 0 offen
	buffer_load_u8 v43, v43, s[28:31], 0 offen
	buffer_load_u8 v44, v44, s[28:31], 0 offen
	buffer_load_u8 v45, v45, s[28:31], 0 offen
	buffer_load_u8 v46, v46, s[28:31], 0 offen
	buffer_load_u8 v47, v47, s[28:31], 0 offen
	buffer_load_u8 v48, v48, s[28:31], 0 offen
	buffer_load_u8 v49, v49, s[28:31], 0 offen
	buffer_load_u8 v50, v50, s[28:31], 0 offen
	buffer_load_u8 v51, v51, s[28:31], 0 offen
	buffer_load_u8 v52, v52, s[28:31], 0 offen
	buffer_load_u8 v53, v53, s[28:31], 0 offen
	buffer_load_u8 v99, v99, s[28:31], 0 offen
	buffer_load_u8 v100, v100, s[28:31], 0 offen
	buffer_load_u8 v129, v129, s[28:31], 0 offen
	buffer_load_u8 v130, v130, s[28:31], 0 offen
	buffer_load_u8 v139, v139, s[28:31], 0 offen
	buffer_load_u8 v140, v140, s[28:31], 0 offen
	buffer_load_u8 v141, v141, s[28:31], 0 offen
	buffer_load_u8 v168, v142, s[28:31], 0 offen
	buffer_load_u8 v169, v143, s[28:31], 0 offen
	buffer_load_u8 v171, v144, s[28:31], 0 offen
	buffer_load_u8 v173, v145, s[28:31], 0 offen
	buffer_load_u8 v243, v146, s[28:31], 0 offen
	buffer_load_u8 v244, v147, s[28:31], 0 offen
	buffer_load_u8 v245, v148, s[28:31], 0 offen
	buffer_load_u8 v246, v149, s[28:31], 0 offen
	buffer_load_u8 v247, v150, s[28:31], 0 offen
	.loc	1 648 34                        ; ragged.py:648:34
	s_clause 0x7
	buffer_load_u8 v3, v3, s[20:23], 0 offen
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	buffer_load_u8 v5, v5, s[20:23], 0 offen
	buffer_load_u8 v7, v7, s[20:23], 0 offen
	buffer_load_u8 v8, v8, s[20:23], 0 offen
	buffer_load_u8 v6, v6, s[20:23], 0 offen
	buffer_load_u8 v38, v38, s[20:23], 0 offen
	buffer_load_u8 v1, v1, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v126, v3
	s_waitcnt vmcnt(6)
	ds_store_b8 v126, v4 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v126, v5 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v126, v7 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v126, v8 offset:1280
	s_waitcnt vmcnt(2)
	ds_store_b8 v127, v6
	s_waitcnt vmcnt(1)
	ds_store_b8 v126, v38 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v128, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 650 31                        ; ragged.py:650:31
	scratch_load_b32 v131, off, off offset:8 ; 4-byte Folded Reload
	ds_load_u8 v1, v124 offset:320
	ds_load_u8 v3, v124 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v124 offset:448
	ds_load_u8 v4, v124 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v124 offset:64
	ds_load_u8 v5, v124
	v_lshl_or_b32 v39, v3, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	ds_load_u8 v5, v124 offset:192
	ds_load_u8 v6, v124 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v5, 16, v4
	ds_load_u8 v178, v124 offset:336
	ds_load_u8 v179, v124 offset:272
	ds_load_u8 v151, v124 offset:352
	ds_load_u8 v152, v124 offset:288
	ds_load_u8 v142, v124 offset:368
	ds_load_u8 v143, v124 offset:304
	ds_load_u8 v187, v124 offset:464
	ds_load_u8 v190, v124 offset:400
	ds_load_u8 v156, v124 offset:480
	ds_load_u8 v157, v124 offset:416
	ds_load_u8 v144, v124 offset:496
	ds_load_u8 v145, v124 offset:432
	ds_load_u8 v198, v124 offset:80
	ds_load_u8 v160, v124 offset:96
	ds_load_u8 v146, v124 offset:112
	ds_load_u8 v200, v124 offset:16
	ds_load_u8 v165, v124 offset:32
	ds_load_u8 v147, v124 offset:48
	ds_load_u8 v205, v124 offset:208
	ds_load_u8 v206, v124 offset:144
	ds_load_u8 v170, v124 offset:224
	ds_load_u8 v172, v124 offset:160
	ds_load_u8 v148, v124 offset:240
	ds_load_u8 v149, v124 offset:176
	ds_load_u8 v1, v124 offset:960
	ds_load_u8 v3, v124 offset:896
	ds_load_u8 v4, v124 offset:1024
	ds_load_u8 v209, v124 offset:976
	ds_load_u8 v210, v124 offset:912
	ds_load_u8 v176, v124 offset:992
	ds_load_u8 v177, v124 offset:928
	ds_load_u8 v150, v124 offset:944
	ds_load_u8 v5, v124 offset:832
	ds_load_u8 v6, v124 offset:768
	ds_load_u8 v215, v124 offset:848
	ds_load_u8 v216, v124 offset:784
	ds_load_u8 v184, v124 offset:864
	ds_load_u8 v185, v124 offset:800
	ds_load_u8 v154, v124 offset:880
	ds_load_u8 v155, v124 offset:816
	ds_load_u8 v7, v124 offset:704
	ds_load_u8 v8, v124 offset:640
	ds_load_u8 v217, v124 offset:720
	ds_load_u8 v218, v124 offset:656
	ds_load_u8 v188, v124 offset:736
	ds_load_u8 v191, v124 offset:672
	ds_load_u8 v158, v124 offset:752
	ds_load_u8 v159, v124 offset:688
	ds_load_u8 v248, v124 offset:576
	ds_load_u8 v249, v124 offset:512
	ds_load_u8 v223, v124 offset:592
	ds_load_u8 v224, v124 offset:528
	ds_load_u8 v194, v124 offset:608
	ds_load_u8 v196, v124 offset:544
	ds_load_u8 v162, v124 offset:624
	ds_load_u8 v164, v124 offset:560
	ds_load_u8 v250, v124 offset:1216
	ds_load_u8 v251, v124 offset:1280
	ds_load_u8 v225, v124 offset:1232
	ds_load_u8 v226, v124 offset:1168
	ds_load_u8 v197, v124 offset:1248
	ds_load_u8 v199, v124 offset:1184
	ds_load_u8 v161, v124 offset:1264
	ds_load_u8 v163, v124 offset:1200
	ds_load_u8 v252, v124 offset:1152
	ds_load_u8 v253, v124 offset:1088
	ds_load_u8 v229, v124 offset:1104
	ds_load_u8 v230, v124 offset:1040
	ds_load_u8 v203, v124 offset:1120
	ds_load_u8 v204, v124 offset:1056
	ds_load_u8 v166, v124 offset:1136
	ds_load_u8 v167, v124 offset:1072
	ds_load_u8 v254, v124 offset:1472
	ds_load_u8 v0, v124 offset:1536
	ds_load_u8 v231, v124 offset:1488
	ds_load_u8 v232, v124 offset:1424
	ds_load_u8 v207, v124 offset:1504
	ds_load_u8 v208, v124 offset:1440
	ds_load_u8 v174, v124 offset:1520
	ds_load_u8 v175, v124 offset:1456
	ds_load_u8 v112, v124 offset:1408
	ds_load_u8 v255, v124 offset:1344
	ds_load_u8 v233, v124 offset:1360
	ds_load_u8 v235, v124 offset:1296
	ds_load_u8 v211, v124 offset:1376
	ds_load_u8 v213, v124 offset:1312
	ds_load_u8 v181, v124 offset:1392
	ds_load_u8 v183, v124 offset:1328
	ds_load_u8 v101, v124 offset:1984
	ds_load_u8 v234, v124 offset:2000
	ds_load_u8 v236, v124 offset:1936
	ds_load_u8 v212, v124 offset:2016
	ds_load_u8 v214, v124 offset:1952
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v3, v249, v248, 0xc0c0004
	v_perm_b32 v142, v143, v142, 0xc0c0004
	v_perm_b32 v143, v145, v144, 0xc0c0004
	v_perm_b32 v144, v147, v146, 0xc0c0004
	v_perm_b32 v145, v149, v148, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v192, v131
	scratch_load_b32 v131, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v180, v131
	ds_load_u8 v182, v124 offset:1968
	ds_load_u8 v131, v124 offset:1920
	ds_load_u8 v132, v124 offset:1856
	ds_load_u8 v237, v124 offset:1872
	ds_load_u8 v238, v124 offset:1808
	ds_load_u8 v219, v124 offset:1888
	ds_load_u8 v220, v124 offset:1824
	ds_load_u8 v186, v124 offset:1904
	ds_load_u8 v189, v124 offset:1840
	ds_load_u8 v133, v124 offset:1728
	ds_load_u8 v134, v124 offset:1792
	ds_load_u8 v239, v124 offset:1744
	ds_load_u8 v240, v124 offset:1680
	ds_load_u8 v221, v124 offset:1760
	ds_load_u8 v222, v124 offset:1696
	ds_load_u8 v193, v124 offset:1776
	ds_load_u8 v195, v124 offset:1712
	ds_load_u8 v135, v124 offset:1664
	ds_load_u8 v136, v124 offset:1600
	ds_load_u8 v241, v124 offset:1616
	ds_load_u8 v242, v124 offset:1552
	ds_load_u8 v227, v124 offset:1632
	ds_load_u8 v228, v124 offset:1568
	ds_load_u8 v201, v124 offset:1648
	ds_load_u8 v202, v124 offset:1584
	.loc	1 649 34                        ; ragged.py:649:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v126, v2
	ds_store_b8 v126, v153 offset:256
	ds_store_b8 v126, v40 offset:512
	ds_store_b8 v126, v42 offset:1024
	ds_store_b8 v126, v43 offset:1280
	ds_store_b8 v126, v44 offset:1536
	ds_store_b8 v126, v46 offset:2048
	ds_store_b8 v126, v47 offset:2304
	ds_store_b8 v126, v48 offset:2560
	ds_store_b8 v126, v50 offset:3072
	ds_store_b8 v126, v51 offset:3328
	ds_store_b8 v126, v52 offset:3584
	ds_store_b8 v126, v99 offset:4096
	ds_store_b8 v126, v100 offset:4352
	ds_store_b8 v126, v129 offset:4608
	ds_store_b8 v126, v139 offset:5120
	ds_store_b8 v126, v140 offset:5376
	ds_store_b8 v126, v141 offset:5632
	ds_store_b8 v126, v169 offset:6144
	ds_store_b8 v126, v171 offset:6400
	ds_store_b8 v126, v173 offset:6656
	ds_store_b8 v126, v244 offset:7168
	ds_store_b8 v126, v245 offset:7424
	ds_store_b8 v126, v246 offset:7680
	ds_store_b8 v127, v41
	ds_store_b8 v128, v45
	scratch_load_b32 v2, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 650 31                        ; ragged.py:650:31
	v_perm_b32 v0, v0, v136, 0xc0c0004
	.loc	1 649 34                        ; ragged.py:649:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v2, v49
	scratch_load_b32 v2, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v2, v53
	scratch_load_b32 v2, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v2, v130
	scratch_load_b32 v2, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v2, v168
	scratch_load_b32 v2, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v2, v243
	scratch_load_b32 v2, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v2, v247
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 650 31                        ; ragged.py:650:31
	ds_load_u8 v2, v125 offset:1280
	ds_load_u8 v40, v125 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v40, v2, 0xc0c0004
	ds_load_u8 v40, v125 offset:1792
	ds_load_u8 v41, v125 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	ds_load_u8 v41, v125 offset:256
	ds_load_u8 v42, v125
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v42, v41, 0xc0c0004
	ds_load_u8 v41, v125 offset:768
	ds_load_u8 v43, v125 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v43, v41, 0xc0c0004
	v_lshl_or_b32 v41, v40, 16, v2
	v_perm_b32 v2, v6, v5, 0xc0c0004
	v_perm_b32 v5, v8, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v40, v43, 16, v42
	v_lshl_or_b32 v49, v1, 16, v2
	ds_load_u8 v1, v125 offset:3328
	ds_load_u8 v2, v125 offset:3072
	v_lshl_or_b32 v48, v5, 16, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v125 offset:3840
	ds_load_u8 v3, v125 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v125 offset:2304
	ds_load_u8 v5, v125 offset:2048
	v_lshl_or_b32 v43, v2, 16, v1
	v_perm_b32 v1, v251, v255, 0xc0c0004
	v_perm_b32 v2, v112, v254, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v2, 16, v1
	ds_load_u8 v1, v125 offset:5376
	ds_load_u8 v2, v125 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v3, v5, v3, 0xc0c0004
	ds_load_u8 v5, v125 offset:2816
	ds_load_u8 v6, v125 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v42, v5, 16, v3
	v_perm_b32 v3, v4, v253, 0xc0c0004
	v_perm_b32 v4, v252, v250, 0xc0c0004
	v_lshl_or_b32 v50, v4, 16, v3
	ds_load_u8 v2, v125 offset:5888
	ds_load_u8 v3, v125 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v125 offset:4352
	ds_load_u8 v4, v125 offset:4096
	v_lshl_or_b32 v45, v2, 16, v1
	v_perm_b32 v1, v134, v132, 0xc0c0004
	v_perm_b32 v2, v131, v101, 0xc0c0004
	v_perm_b32 v131, v206, v205, 0xc0c0004
	v_perm_b32 v132, v152, v151, 0xc0c0004
	v_perm_b32 v134, v165, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v53, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v125 offset:4864
	ds_load_u8 v5, v125 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v44, v4, 16, v3
	v_perm_b32 v3, v135, v133, 0xc0c0004
	v_perm_b32 v133, v157, v156, 0xc0c0004
	v_perm_b32 v135, v172, v170, 0xc0c0004
	v_lshl_or_b32 v52, v3, 16, v0
	ds_load_u8 v0, v125 offset:7424
	ds_load_u8 v1, v125 offset:7168
	v_lshl_or_b32 v152, v133, 16, v132
	v_lshl_or_b32 v151, v135, 16, v134
	v_perm_b32 v132, v185, v184, 0xc0c0004
	v_perm_b32 v133, v177, v176, 0xc0c0004
	v_perm_b32 v134, v196, v194, 0xc0c0004
	v_perm_b32 v135, v191, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v157, v133, 16, v132
	v_perm_b32 v132, v213, v211, 0xc0c0004
	v_lshl_or_b32 v156, v135, 16, v134
	v_perm_b32 v133, v208, v207, 0xc0c0004
	v_perm_b32 v134, v204, v203, 0xc0c0004
	v_perm_b32 v135, v199, v197, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v177, v133, 16, v132
	v_perm_b32 v132, v220, v219, 0xc0c0004
	v_lshl_or_b32 v176, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v125 offset:7936
	ds_load_u8 v2, v125 offset:7680
	v_perm_b32 v135, v222, v221, 0xc0c0004
	v_perm_b32 v133, v214, v212, 0xc0c0004
	v_perm_b32 v134, v228, v227, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v185, v133, 16, v132
	v_lshl_or_b32 v184, v135, 16, v134
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v125 offset:6400
	ds_load_u8 v3, v125 offset:6144
	v_lshl_or_b32 v47, v1, 16, v0
	ds_load_u8 v0, v125 offset:1408
	ds_load_u8 v99, v125 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v125 offset:6912
	ds_load_u8 v4, v125 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v3, 16, v2
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v2, s9
	v_dual_mov_b32 v3, s10 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v5, s12 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v7, s14 :: v_dual_mov_b32 v8, s15
	v_wmma_i32_16x16x16_iu4 v[243:250], v[40:41], v[38:39], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[42:43], v[48:49], v[243:250] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[243:250], v[44:45], v[50:51], v[243:250] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[243:250], v[46:47], v[52:53], v[243:250] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v173, v243
	.loc	1 650 31                        ; ragged.py:650:31
	v_perm_b32 v243, v99, v0, 0xc0c0004
	ds_load_u8 v0, v125 offset:1920
	ds_load_u8 v99, v125 offset:1664
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v171, v244
	v_cvt_f32_i32_e32 v169, v245
	v_cvt_f32_i32_e32 v168, v246
	v_cvt_f32_i32_e32 v153, v247
	v_cvt_f32_i32_e32 v141, v248
	v_cvt_f32_i32_e32 v140, v249
	v_cvt_f32_i32_e32 v139, v250
	.loc	1 650 31                        ; ragged.py:650:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v99, v0, 0xc0c0004
	ds_load_u8 v99, v125 offset:384
	ds_load_u8 v100, v125 offset:128
	v_lshl_or_b32 v252, v0, 16, v243
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v125 offset:896
	ds_load_u8 v101, v125 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v251, v100, 16, v99
	ds_load_u8 v0, v125 offset:3456
	ds_load_u8 v99, v125 offset:3200
	v_wmma_i32_16x16x16_iu4 v[243:250], v[251:252], v[38:39], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v99, v0, 0xc0c0004
	ds_load_u8 v99, v125 offset:3968
	ds_load_u8 v100, v125 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v125 offset:2432
	ds_load_u8 v101, v125 offset:2176
	v_lshl_or_b32 v254, v99, 16, v0
	ds_load_u8 v0, v125 offset:5504
	ds_load_u8 v99, v125 offset:5248
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v125 offset:2944
	ds_load_u8 v112, v125 offset:2688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v99, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v112, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v253, v101, 16, v100
	ds_load_u8 v99, v125 offset:6016
	ds_load_u8 v100, v125 offset:5760
	v_wmma_i32_16x16x16_iu4 v[243:250], v[253:254], v[48:49], v[243:250] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v125 offset:4480
	ds_load_u8 v101, v125 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v101, v100, 0xc0c0004
	ds_load_u8 v100, v125 offset:4992
	ds_load_u8 v112, v125 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v112, v100, 0xc0c0004
	v_lshl_or_b32 v100, v99, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v99, v112, 16, v101
	ds_load_u8 v0, v125 offset:7552
	ds_load_u8 v101, v125 offset:7296
	v_wmma_i32_16x16x16_iu4 v[243:250], v[99:100], v[50:51], v[243:250] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v101, v0, 0xc0c0004
	ds_load_u8 v101, v125 offset:8064
	ds_load_u8 v112, v125 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v112, v101, 0xc0c0004
	ds_load_u8 v112, v125 offset:6528
	ds_load_u8 v129, v125 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v129, v112, 0xc0c0004
	ds_load_u8 v129, v125 offset:7040
	ds_load_u8 v130, v125 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	v_lshl_or_b32 v130, v101, 16, v0
	v_perm_b32 v0, v179, v178, 0xc0c0004
	v_perm_b32 v101, v190, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v129, v129, 16, v112
	v_perm_b32 v112, v200, v198, 0xc0c0004
	v_lshl_or_b32 v179, v101, 16, v0
	v_perm_b32 v0, v216, v215, 0xc0c0004
	v_perm_b32 v101, v210, v209, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v178, v131, 16, v112
	v_perm_b32 v112, v224, v223, 0xc0c0004
	v_perm_b32 v131, v218, v217, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[243:250], v[129:130], v[52:53], v[243:250] neg_lo:[1,1,0]
	v_lshl_or_b32 v206, v101, 16, v0
	v_perm_b32 v0, v235, v233, 0xc0c0004
	v_perm_b32 v101, v232, v231, 0xc0c0004
	v_lshl_or_b32 v205, v131, 16, v112
	v_perm_b32 v112, v230, v229, 0xc0c0004
	v_perm_b32 v131, v226, v225, 0xc0c0004
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v49, v250
	.loc	1 650 31                        ; ragged.py:650:31
	v_lshl_or_b32 v218, v101, 16, v0
	v_perm_b32 v101, v236, v234, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[229:236], v[40:41], v[178:179], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v217, v131, 16, v112
	v_perm_b32 v0, v238, v237, 0xc0c0004
	v_perm_b32 v112, v242, v241, 0xc0c0004
	v_perm_b32 v131, v240, v239, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[229:236], v[42:43], v[205:206], v[229:236] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v53, v243
	.loc	1 650 31                        ; ragged.py:650:31
	v_lshl_or_b32 v224, v101, 16, v0
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v52, v244
	.loc	1 650 31                        ; ragged.py:650:31
	v_lshl_or_b32 v223, v131, 16, v112
	v_wmma_i32_16x16x16_iu4 v[229:236], v[44:45], v[217:218], v[229:236] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v38, v247
	v_cvt_f32_i32_e32 v51, v245
	v_cvt_f32_i32_e32 v50, v246
	v_cvt_f32_i32_e32 v39, v248
	.loc	1 650 31                        ; ragged.py:650:31
	v_wmma_i32_16x16x16_iu4 v[229:236], v[46:47], v[223:224], v[229:236] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v48, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v0, v229
	v_cvt_f32_i32_e32 v101, v230
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v112, v231
	v_cvt_f32_i32_e32 v131, v232
	v_cvt_f32_i32_e32 v216, v233
	v_cvt_f32_i32_e32 v215, v234
	v_cvt_f32_i32_e32 v210, v235
	v_cvt_f32_i32_e32 v209, v236
	.loc	1 650 31                        ; ragged.py:650:31
	v_wmma_i32_16x16x16_iu4 v[229:236], v[251:252], v[178:179], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[229:236], v[253:254], v[205:206], v[229:236] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[229:236], v[99:100], v[217:218], v[229:236] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[229:236], v[129:130], v[223:224], v[229:236] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[217:224], v[40:41], v[151:152], v[1:8] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v178, v233
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 650 31                        ; ragged.py:650:31
	v_wmma_i32_16x16x16_iu4 v[217:224], v[42:43], v[156:157], v[217:224] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v187, v235
	v_cvt_f32_i32_e32 v206, v229
	v_cvt_f32_i32_e32 v205, v230
	v_cvt_f32_i32_e32 v200, v231
	.loc	1 650 31                        ; ragged.py:650:31
	v_wmma_i32_16x16x16_iu4 v[217:224], v[44:45], v[176:177], v[217:224] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v198, v232
	v_cvt_f32_i32_e32 v179, v234
	v_cvt_f32_i32_e32 v190, v236
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 650 31                        ; ragged.py:650:31
	v_wmma_i32_16x16x16_iu4 v[217:224], v[46:47], v[184:185], v[217:224] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v132, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v133, v218
	v_cvt_f32_i32_e32 v134, v219
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v135, v220
	v_cvt_f32_i32_e32 v136, v221
	v_cvt_f32_i32_e32 v165, v222
	v_cvt_f32_i32_e32 v170, v223
	v_cvt_f32_i32_e32 v172, v224
	.loc	1 650 31                        ; ragged.py:650:31
	v_wmma_i32_16x16x16_iu4 v[217:224], v[251:252], v[151:152], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[217:224], v[253:254], v[156:157], v[217:224] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[217:224], v[99:100], v[176:177], v[217:224] neg_lo:[1,1,0]
	v_lshl_or_b32 v177, v143, 16, v142
	v_lshl_or_b32 v176, v145, 16, v144
	v_perm_b32 v142, v164, v162, 0xc0c0004
	v_perm_b32 v143, v159, v158, 0xc0c0004
	v_perm_b32 v144, v155, v154, 0xc0c0004
	v_perm_b32 v145, v150, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[217:224], v[129:130], v[184:185], v[217:224] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v154, v143, 16, v142
	v_perm_b32 v142, v183, v181, 0xc0c0004
	v_lshl_or_b32 v155, v145, 16, v144
	v_perm_b32 v143, v175, v174, 0xc0c0004
	v_perm_b32 v144, v167, v166, 0xc0c0004
	v_perm_b32 v145, v163, v161, 0xc0c0004
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v152, v222
	v_cvt_f32_i32_e32 v157, v224
	.loc	1 650 31                        ; ragged.py:650:31
	v_lshl_or_b32 v159, v143, 16, v142
	v_perm_b32 v142, v202, v201, 0xc0c0004
	v_lshl_or_b32 v158, v145, 16, v144
	v_perm_b32 v143, v195, v193, 0xc0c0004
	v_perm_b32 v144, v189, v186, 0xc0c0004
	v_perm_b32 v145, v182, v180, 0xc0c0004
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v184, v217
	v_cvt_f32_i32_e32 v185, v218
	.loc	1 650 31                        ; ragged.py:650:31
	v_lshl_or_b32 v160, v143, 16, v142
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v188, v219
	.loc	1 650 31                        ; ragged.py:650:31
	v_lshl_or_b32 v161, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[142:149], v[40:41], v[176:177], v[1:8] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v191, v220
	v_cvt_f32_i32_e32 v151, v221
	v_cvt_f32_i32_e32 v156, v223
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 650 31                        ; ragged.py:650:31
	v_wmma_i32_16x16x16_iu4 v[142:149], v[42:43], v[154:155], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[44:45], v[158:159], v[142:149] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[142:149], v[46:47], v[160:161], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[251:252], v[176:177], v[1:8] neg_lo:[1,1,0]
	.loc	1 664 25                        ; ragged.py:664:25
	v_mul_lo_u32 v1, v98, s34
	v_mul_lo_u32 v2, v137, s34
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v143, v143
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 650 31                        ; ragged.py:650:31
	v_wmma_i32_16x16x16_iu4 v[40:47], v[253:254], v[154:155], v[40:47] neg_lo:[1,1,0]
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 650 31                        ; ragged.py:650:31
	v_wmma_i32_16x16x16_iu4 v[40:47], v[99:100], v[158:159], v[40:47] neg_lo:[1,1,0]
	v_mov_b32_e32 v100, v9
	.loc	1 663 40                        ; ragged.py:663:40
	v_add_lshl_u32 v1, s7, v1, 1
	v_add_lshl_u32 v2, s7, v2, 1
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v147, v147
	.loc	1 650 31                        ; ragged.py:650:31
	v_wmma_i32_16x16x16_iu4 v[40:47], v[129:130], v[160:161], v[40:47] neg_lo:[1,1,0]
	v_mov_b32_e32 v129, v12
	.loc	1 664 25                        ; ragged.py:664:25
	v_mul_lo_u32 v3, v100, s34
	.loc	1 663 40                        ; ragged.py:663:40
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v5, v40
	v_cvt_f32_i32_e32 v6, v41
	v_cvt_f32_i32_e32 v40, v44
	v_cvt_f32_i32_e32 v41, v45
	.loc	1 670 40                        ; ragged.py:670:40
	scratch_load_b64 v[44:45], off, off     ; 8-byte Folded Reload
	.loc	1 664 25                        ; ragged.py:664:25
	v_mul_lo_u32 v4, v129, s34
	.loc	1 663 40                        ; ragged.py:663:40
	v_add_lshl_u32 v3, s7, v3, 1
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v7, v42
	v_cvt_f32_i32_e32 v8, v43
	v_cvt_f32_i32_e32 v42, v46
	v_cvt_f32_i32_e32 v43, v47
	.loc	1 663 40                        ; ragged.py:663:40
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v148, v148
	.loc	1 663 40                        ; ragged.py:663:40
	v_add_lshl_u32 v4, s7, v4, 1
	.loc	1 661 27                        ; ragged.py:661:27
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 677 17                        ; ragged.py:677:17
	s_add_i32 s7, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 634 19                        ; ragged.py:634:19
	s_cmp_lg_u32 s7, s34
	.loc	1 663 40                        ; ragged.py:663:40
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 670 40                        ; ragged.py:670:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, v44, s24, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	buffer_load_u16 v44, v44, s[36:39], 0 offen
	.loc	1 663 40                        ; ragged.py:663:40
	s_clause 0x3
	buffer_load_u16 v1, v1, s[16:19], 0 offen
	buffer_load_u16 v45, v2, s[16:19], 0 offen
	buffer_load_u16 v46, v3, s[16:19], 0 offen
	buffer_load_u16 v47, v4, s[16:19], 0 offen
	.loc	1 675 21                        ; ragged.py:675:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v3, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 670 40                        ; ragged.py:670:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v2, 16, v44
	.loc	1 663 40                        ; ragged.py:663:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v44, 16, v1
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v99, v173, v44
	.loc	1 675 21                        ; ragged.py:675:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v3, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v138
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v0, v0, v45
	.loc	1 676 17                        ; ragged.py:676:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v106, v0, v1
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v0, v101, v45
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v94, v99, v1 :: v_dual_fmac_f32 v105, v0, v2
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v0, v112, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v104, v0, v3
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v0, v131, v45
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v103, v0, v4 :: v_dual_lshlrev_b32 v0, 16, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v46, v132, v0
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v85, v46, v1 :: v_dual_mul_f32 v46, v133, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v46, v2
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v46, v134, v0
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v83, v46, v3 :: v_dual_mul_f32 v46, v135, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v46, v4
	.loc	1 663 40                        ; ragged.py:663:40
	v_lshlrev_b32_e32 v46, 16, v47
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v142, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v69, v47, v1
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v1, v143, v46
	v_mul_f32_e32 v99, v171, v44
	v_dual_mul_f32 v47, v153, v44 :: v_dual_mul_f32 v42, v42, v46
	v_mul_f32_e32 v5, v5, v46
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v68, v1, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v122, v99, v2 :: v_dual_mul_f32 v99, v169, v44
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v1, v144, v46
	v_mul_f32_e32 v40, v40, v46
	v_mul_f32_e32 v41, v41, v46
	v_mul_f32_e32 v43, v43, v46
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v121, v99, v3
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v99, v168, v44
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v67, v1, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 668 21                        ; ragged.py:668:21
	v_dual_mul_f32 v1, v145, v46 :: v_dual_fmac_f32 v120, v99, v4
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v66, v1, v4
	.loc	1 675 21                        ; ragged.py:675:21
	ds_load_b128 v[1:4], v138 offset:16
	.loc	1 676 17                        ; ragged.py:676:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v119, v47, v1
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v141, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v118, v47, v2 :: v_dual_mul_f32 v47, v140, v44
	v_fmac_f32_e32 v117, v47, v3
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v139, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v116, v47, v4 :: v_dual_mul_f32 v47, v216, v45
	v_fmac_f32_e32 v102, v47, v1
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v215, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v97, v47, v2
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v210, v45
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v96, v47, v3 :: v_dual_mul_f32 v47, v209, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v47, v4
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v136, v0
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v81, v47, v1
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v165, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v80, v47, v2 :: v_dual_mul_f32 v47, v170, v0
	v_fmac_f32_e32 v79, v47, v3
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v172, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v78, v47, v4 :: v_dual_mul_f32 v47, v146, v46
	v_fmac_f32_e32 v65, v47, v1
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v1, v147, v46
	v_mul_f32_e32 v47, v53, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v64, v1, v2
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v1, v148, v46
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v63, v1, v3
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v1, v149, v46
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v62, v1, v4
	.loc	1 675 21                        ; ragged.py:675:21
	ds_load_b128 v[1:4], v138 offset:512
	.loc	1 676 17                        ; ragged.py:676:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v115, v47, v1
	v_fmac_f32_e32 v61, v5, v1
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v5, v38, v44
	v_dual_mul_f32 v47, v52, v44 :: v_dual_mul_f32 v38, v178, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v114, v47, v2
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v51, v44
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v113, v47, v3
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v50, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v111, v47, v4
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v206, v45
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v93, v47, v1
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v205, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v92, v47, v2 :: v_dual_mul_f32 v47, v200, v45
	v_fmac_f32_e32 v91, v47, v3
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v198, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v90, v47, v4
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v184, v0
	.loc	1 676 17                        ; ragged.py:676:17
	v_fmac_f32_e32 v77, v47, v1
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v185, v0
	v_dual_mul_f32 v1, v6, v46 :: v_dual_mul_f32 v6, v39, v44
	v_mul_f32_e32 v39, v179, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v76, v47, v2 :: v_dual_mul_f32 v47, v188, v0
	v_fmac_f32_e32 v59, v1, v2
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v1, v7, v46
	v_mul_f32_e32 v7, v48, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v48, v152, v0 :: v_dual_fmac_f32 v75, v47, v3
	v_dual_mul_f32 v47, v191, v0 :: v_dual_fmac_f32 v58, v1, v3
	v_dual_mul_f32 v1, v8, v46 :: v_dual_mul_f32 v8, v49, v44
	v_mul_f32_e32 v44, v187, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 676 17                        ; ragged.py:676:17
	v_dual_fmac_f32 v74, v47, v4 :: v_dual_mul_f32 v45, v190, v45
	v_fmac_f32_e32 v57, v1, v4
	.loc	1 675 21                        ; ragged.py:675:21
	ds_load_b128 v[1:4], v138 offset:528
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v47, v151, v0
	v_mul_f32_e32 v49, v156, v0
	v_mul_f32_e32 v0, v157, v0
	.loc	1 676 17                        ; ragged.py:676:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v110, v5, v1 :: v_dual_fmac_f32 v109, v6, v2
	v_dual_fmac_f32 v108, v7, v3 :: v_dual_fmac_f32 v107, v8, v4
	v_dual_fmac_f32 v89, v38, v1 :: v_dual_fmac_f32 v88, v39, v2
	v_dual_fmac_f32 v87, v44, v3 :: v_dual_fmac_f32 v86, v45, v4
	v_dual_fmac_f32 v73, v47, v1 :: v_dual_fmac_f32 v72, v48, v2
	v_dual_fmac_f32 v71, v49, v3 :: v_dual_fmac_f32 v70, v0, v4
	v_fmac_f32_e32 v56, v40, v1
	v_dual_fmac_f32 v60, v41, v2 :: v_dual_fmac_f32 v55, v42, v3
	v_fmac_f32_e32 v54, v43, v4
	.loc	1 634 19                        ; ragged.py:634:19
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:52
	scratch_load_b32 v20, off, off offset:56
.LBB0_4:                                ; %._crit_edge
	.loc	1 679 9 is_stmt 1               ; ragged.py:679:9
	v_bfe_u32 v21, v94, 16, 1
	v_bfe_u32 v22, v122, 16, 1
	v_cmp_o_f32_e64 s19, v94, v94
	v_bfe_u32 v23, v121, 16, 1
	v_cmp_o_f32_e64 s20, v122, v122
	v_add3_u32 v24, v94, v21, 0x7fff
	v_add3_u32 v22, v122, v22, 0x7fff
	v_cmp_o_f32_e64 s21, v121, v121
	v_add3_u32 v23, v121, v23, 0x7fff
	v_bfe_u32 v25, v118, 16, 1
	v_cndmask_b16 v94.l, 0x7fff, v24.h, s19
	v_bfe_u32 v24, v120, 16, 1
	v_cndmask_b16 v94.h, 0x7fff, v22.h, s20
	v_bfe_u32 v22, v119, 16, 1
	v_cmp_o_f32_e64 s19, v120, v120
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s21
	v_add3_u32 v24, v120, v24, 0x7fff
	v_cmp_o_f32_e64 s20, v119, v119
	v_add3_u32 v22, v119, v22, 0x7fff
	v_add3_u32 v25, v118, v25, 0x7fff
	v_cmp_o_f32_e64 s21, v118, v118
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s19
	v_bfe_u32 v24, v117, 16, 1
	v_bfe_u32 v26, v116, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s20
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s21
	v_bfe_u32 v25, v115, 16, 1
	v_add3_u32 v24, v117, v24, 0x7fff
	v_cmp_o_f32_e64 s19, v117, v117
	v_add3_u32 v26, v116, v26, 0x7fff
	v_cmp_o_f32_e64 s20, v116, v116
	v_bfe_u32 v27, v114, 16, 1
	v_add3_u32 v25, v115, v25, 0x7fff
	v_cmp_o_f32_e64 s21, v115, v115
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s19
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s20
	v_bfe_u32 v26, v113, 16, 1
	v_bfe_u32 v28, v111, 16, 1
	v_add3_u32 v27, v114, v27, 0x7fff
	v_cmp_o_f32_e64 s19, v114, v114
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s21
	v_add3_u32 v26, v113, v26, 0x7fff
	v_cmp_o_f32_e64 s20, v113, v113
	v_add3_u32 v28, v111, v28, 0x7fff
	v_cmp_o_f32_e64 s21, v111, v111
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s19
	v_bfe_u32 v27, v110, 16, 1
	v_bfe_u32 v29, v109, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s20
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s21
	v_bfe_u32 v28, v108, 16, 1
	v_add3_u32 v27, v110, v27, 0x7fff
	v_cmp_o_f32_e64 s19, v110, v110
	v_add3_u32 v29, v109, v29, 0x7fff
	v_cmp_o_f32_e64 s20, v109, v109
	v_bfe_u32 v30, v107, 16, 1
	v_add3_u32 v28, v108, v28, 0x7fff
	v_cmp_o_f32_e64 s21, v108, v108
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s19
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s20
	v_bfe_u32 v29, v106, 16, 1
	v_bfe_u32 v31, v105, 16, 1
	v_add3_u32 v30, v107, v30, 0x7fff
	v_cmp_o_f32_e64 s19, v107, v107
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s21
	v_add3_u32 v29, v106, v29, 0x7fff
	v_cmp_o_f32_e64 s20, v106, v106
	v_add3_u32 v31, v105, v31, 0x7fff
	v_cmp_o_f32_e64 s21, v105, v105
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s19
	v_bfe_u32 v30, v104, 16, 1
	v_bfe_u32 v32, v103, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s20
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s21
	v_bfe_u32 v31, v102, 16, 1
	v_add3_u32 v30, v104, v30, 0x7fff
	v_cmp_o_f32_e64 s19, v104, v104
	v_add3_u32 v32, v103, v32, 0x7fff
	v_cmp_o_f32_e64 s20, v103, v103
	v_bfe_u32 v33, v97, 16, 1
	v_add3_u32 v31, v102, v31, 0x7fff
	v_cmp_o_f32_e64 s21, v102, v102
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s19
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s20
	v_bfe_u32 v32, v96, 16, 1
	v_bfe_u32 v34, v95, 16, 1
	v_add3_u32 v33, v97, v33, 0x7fff
	v_cmp_o_f32_e64 s19, v97, v97
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s21
	v_add3_u32 v32, v96, v32, 0x7fff
	v_cmp_o_f32_e64 s20, v96, v96
	v_add3_u32 v34, v95, v34, 0x7fff
	v_cmp_o_f32_e64 s21, v95, v95
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s19
	v_bfe_u32 v33, v93, 16, 1
	v_bfe_u32 v35, v92, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s20
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s21
	v_bfe_u32 v34, v91, 16, 1
	v_add3_u32 v33, v93, v33, 0x7fff
	v_cmp_o_f32_e64 s19, v93, v93
	v_add3_u32 v35, v92, v35, 0x7fff
	v_cmp_o_f32_e64 s20, v92, v92
	v_bfe_u32 v36, v90, 16, 1
	v_add3_u32 v34, v91, v34, 0x7fff
	v_cmp_o_f32_e64 s21, v91, v91
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s19
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s20
	v_bfe_u32 v35, v89, 16, 1
	v_bfe_u32 v37, v88, 16, 1
	v_add3_u32 v36, v90, v36, 0x7fff
	v_cmp_o_f32_e64 s19, v90, v90
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s21
	v_add3_u32 v35, v89, v35, 0x7fff
	v_cmp_o_f32_e64 s20, v89, v89
	v_add3_u32 v37, v88, v37, 0x7fff
	v_cmp_o_f32_e64 s21, v88, v88
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s19
	v_bfe_u32 v36, v87, 16, 1
	v_bfe_u32 v38, v86, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s20
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s21
	v_bfe_u32 v37, v85, 16, 1
	v_add3_u32 v36, v87, v36, 0x7fff
	v_cmp_o_f32_e64 s19, v87, v87
	v_add3_u32 v38, v86, v38, 0x7fff
	v_cmp_o_f32_e64 s20, v86, v86
	v_bfe_u32 v39, v84, 16, 1
	v_add3_u32 v37, v85, v37, 0x7fff
	v_cmp_o_f32_e64 s21, v85, v85
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s19
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s20
	v_bfe_u32 v38, v83, 16, 1
	v_bfe_u32 v40, v82, 16, 1
	v_add3_u32 v39, v84, v39, 0x7fff
	v_cmp_o_f32_e64 s19, v84, v84
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s21
	v_add3_u32 v38, v83, v38, 0x7fff
	v_cmp_o_f32_e64 s20, v83, v83
	v_add3_u32 v40, v82, v40, 0x7fff
	v_cmp_o_f32_e64 s21, v82, v82
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s19
	v_bfe_u32 v39, v81, 16, 1
	v_bfe_u32 v41, v80, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s20
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s21
	v_bfe_u32 v40, v79, 16, 1
	v_add3_u32 v39, v81, v39, 0x7fff
	v_cmp_o_f32_e64 s19, v81, v81
	v_add3_u32 v41, v80, v41, 0x7fff
	v_cmp_o_f32_e64 s20, v80, v80
	v_bfe_u32 v42, v78, 16, 1
	v_add3_u32 v40, v79, v40, 0x7fff
	v_cmp_o_f32_e64 s21, v79, v79
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s19
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s20
	v_bfe_u32 v41, v77, 16, 1
	v_bfe_u32 v43, v76, 16, 1
	v_add3_u32 v42, v78, v42, 0x7fff
	v_cmp_o_f32_e64 s19, v78, v78
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s21
	v_add3_u32 v41, v77, v41, 0x7fff
	v_cmp_o_f32_e64 s20, v77, v77
	v_add3_u32 v43, v76, v43, 0x7fff
	v_cmp_o_f32_e64 s21, v76, v76
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s19
	v_bfe_u32 v42, v75, 16, 1
	v_bfe_u32 v44, v74, 16, 1
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s20
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s21
	v_bfe_u32 v43, v73, 16, 1
	v_add3_u32 v42, v75, v42, 0x7fff
	v_cmp_o_f32_e64 s19, v75, v75
	v_add3_u32 v44, v74, v44, 0x7fff
	v_cmp_o_f32_e64 s20, v74, v74
	v_bfe_u32 v45, v72, 16, 1
	v_add3_u32 v43, v73, v43, 0x7fff
	v_cmp_o_f32_e64 s21, v73, v73
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s19
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s20
	v_bfe_u32 v44, v71, 16, 1
	v_bfe_u32 v46, v70, 16, 1
	v_add3_u32 v45, v72, v45, 0x7fff
	v_cmp_o_f32_e64 s19, v72, v72
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s21
	v_add3_u32 v44, v71, v44, 0x7fff
	v_cmp_o_f32_e64 s20, v71, v71
	v_add3_u32 v46, v70, v46, 0x7fff
	v_cmp_o_f32_e64 s21, v70, v70
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s19
	v_bfe_u32 v45, v69, 16, 1
	v_bfe_u32 v47, v68, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s20
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s21
	v_bfe_u32 v46, v67, 16, 1
	v_add3_u32 v45, v69, v45, 0x7fff
	v_cmp_o_f32_e64 s19, v69, v69
	v_add3_u32 v47, v68, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v68, v68
	v_bfe_u32 v48, v66, 16, 1
	v_add3_u32 v46, v67, v46, 0x7fff
	v_cmp_o_f32_e64 s21, v67, v67
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s19
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s20
	v_bfe_u32 v47, v65, 16, 1
	v_bfe_u32 v49, v64, 16, 1
	v_add3_u32 v48, v66, v48, 0x7fff
	v_cmp_o_f32_e64 s19, v66, v66
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s21
	v_add3_u32 v47, v65, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v65, v65
	v_add3_u32 v49, v64, v49, 0x7fff
	v_cmp_o_f32_e64 s21, v64, v64
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s19
	v_bfe_u32 v48, v63, 16, 1
	v_bfe_u32 v50, v62, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s20
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s21
	v_bfe_u32 v49, v61, 16, 1
	v_add3_u32 v48, v63, v48, 0x7fff
	v_cmp_o_f32_e64 s19, v63, v63
	v_add3_u32 v50, v62, v50, 0x7fff
	v_cmp_o_f32_e64 s20, v62, v62
	v_add3_u32 v49, v61, v49, 0x7fff
	v_cmp_o_f32_e64 s21, v61, v61
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s19
	v_bfe_u32 v51, v59, 16, 1
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s20
	v_bfe_u32 v50, v58, 16, 1
	v_bfe_u32 v52, v57, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s21
	v_add3_u32 v51, v59, v51, 0x7fff
	v_cmp_o_f32_e64 s19, v59, v59
	v_add3_u32 v50, v58, v50, 0x7fff
	v_cmp_o_f32_e64 s20, v58, v58
	v_add3_u32 v52, v57, v52, 0x7fff
	v_cmp_o_f32_e64 s21, v57, v57
	v_bfe_u32 v53, v56, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s19
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s20
	v_bfe_u32 v51, v60, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s21
	v_add3_u32 v52, v56, v53, 0x7fff
	v_bfe_u32 v53, v55, 16, 1
	v_cmp_o_f32_e64 s19, v56, v56
	v_bfe_u32 v56, v54, 16, 1
	v_add3_u32 v51, v60, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v60, v60
	v_add3_u32 v53, v55, v53, 0x7fff
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v57, 16, v0
	v_cmp_o_f32_e64 s21, v55, v55
	v_add3_u32 v55, v54, v56, 0x7fff
	v_cmp_o_f32_e64 s22, v54, v54
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s19
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s20
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s21
	v_mov_b32_e32 v54, 0x5410
	v_cmp_eq_u32_e64 s19, 0, v57
	v_cndmask_b16 v52.h, 0x7fff, v55.h, s22
	v_mov_b32_e32 v55, 0x7632
	.loc	1 584 36                        ; ragged.py:584:36
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v1, 1, v20
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v20, v98, s33
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v53, v22, v94, s19
	v_cndmask_b32_e64 v0, v94, v22, s19
	v_cndmask_b32_e64 v22, v24, v23, s19
	v_cndmask_b32_e64 v23, v23, v24, s19
	v_cndmask_b32_e64 v24, v27, v25, s19
	v_cndmask_b32_e64 v25, v25, v27, s19
	v_cndmask_b32_e64 v27, v28, v26, s19
	v_cndmask_b32_e64 v26, v26, v28, s19
	v_cndmask_b32_e64 v28, v31, v29, s19
	v_cndmask_b32_e64 v29, v29, v31, s19
	v_cndmask_b32_e64 v31, v32, v30, s19
	v_cndmask_b32_e64 v30, v30, v32, s19
	v_cndmask_b32_e64 v32, v35, v33, s19
	v_cndmask_b32_e64 v33, v33, v35, s19
	v_cndmask_b32_e64 v35, v36, v34, s19
	v_cndmask_b32_e64 v34, v34, v36, s19
	v_cndmask_b32_e64 v36, v39, v37, s19
	v_cndmask_b32_e64 v37, v37, v39, s19
	v_cndmask_b32_e64 v39, v40, v38, s19
	v_cndmask_b32_e64 v38, v38, v40, s19
	v_cndmask_b32_e64 v40, v43, v41, s19
	v_cndmask_b32_e64 v41, v41, v43, s19
	v_cndmask_b32_e64 v43, v44, v42, s19
	v_cndmask_b32_e64 v42, v42, v44, s19
	v_cndmask_b32_e64 v44, v47, v45, s19
	v_cndmask_b32_e64 v45, v45, v47, s19
	v_cndmask_b32_e64 v47, v48, v46, s19
	v_cndmask_b32_e64 v46, v46, v48, s19
	v_cndmask_b32_e64 v48, v51, v49, s19
	v_cndmask_b32_e64 v49, v49, v51, s19
	v_cndmask_b32_e64 v51, v52, v50, s19
	v_cndmask_b32_e64 v50, v50, v52, s19
	v_cndmask_b32_e64 v52, 0x1054, v54, s19
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v11, s35, v1
	s_mov_b32 s20, 0x76543210
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v21.h, 0
	v_lshl_or_b32 v52, v52, 8, v52
	v_lshl_or_b32 v54, v54, 8, v54
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v16, 1, v11
	v_or_b32_e32 v15, 2, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s18, s33, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_and_b32_e32 v52, 0x540054, v52
	v_and_b32_e32 v54, 0x760076, v54
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s17, s33, v16
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v84, v11, v20, 1
	v_lshl_or_b32 v52, v52, 4, v52
	v_lshl_or_b32 v54, v54, 4, v54
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s16, s33, v15
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v85, v16, v20, 1
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v52, 0x5040504, v52
	v_permlanex16_b32 v25, v25, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v37, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v41, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v45, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v49, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v0, v53, v52
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s18, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v14, 3, v11
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
	.loc	1 679 9                         ; ragged.py:679:9
	v_perm_b32 v0, v0, v53, v54
	v_perm_b32 v53, v23, v22, v52
	v_perm_b32 v22, v23, v22, v54
	v_perm_b32 v23, v25, v24, v52
	v_perm_b32 v24, v25, v24, v54
	v_perm_b32 v25, v26, v27, v52
	v_perm_b32 v26, v26, v27, v54
	v_perm_b32 v27, v29, v28, v52
	v_perm_b32 v28, v29, v28, v54
	v_perm_b32 v29, v30, v31, v52
	v_perm_b32 v30, v30, v31, v54
	v_perm_b32 v31, v33, v32, v52
	v_perm_b32 v32, v33, v32, v54
	v_perm_b32 v33, v34, v35, v52
	v_perm_b32 v34, v34, v35, v54
	v_perm_b32 v35, v37, v36, v52
	v_perm_b32 v36, v37, v36, v54
	v_perm_b32 v37, v38, v39, v52
	v_perm_b32 v38, v38, v39, v54
	v_perm_b32 v39, v41, v40, v52
	v_perm_b32 v40, v41, v40, v54
	v_perm_b32 v41, v42, v43, v52
	v_perm_b32 v42, v42, v43, v54
	v_perm_b32 v43, v45, v44, v52
	v_perm_b32 v44, v45, v44, v54
	v_perm_b32 v45, v46, v47, v52
	v_perm_b32 v46, v46, v47, v54
	v_perm_b32 v47, v49, v48, v52
	v_perm_b32 v48, v49, v48, v54
	v_perm_b32 v49, v50, v51, v52
	v_perm_b32 v50, v50, v51, v54
	v_mov_b16_e32 v51.l, v55.h
	v_mov_b16_e32 v51.h, v21.h
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s15, s33, v14
	.loc	1 679 9                         ; ragged.py:679:9
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s26
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s14, s33, v13
	.loc	1 679 9                         ; ragged.py:679:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v21.l, v0.h
	s_clause 0x1
	buffer_store_b16 v51, v85, s[20:23], 0 offen
	buffer_store_b16 v0, v86, s[20:23], 0 offen
	v_add_lshl_u32 v0, v13, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s15, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s13, s33, v12
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v51, 0x80000000, v55, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s14, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s12, s33, v10
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v55, v12, v20, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s19
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s11, s33, v9
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v84, v10, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s13, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s10, s33, v8
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v21, v51, s[20:23], 0 offen
	buffer_store_b16 v53, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v9, v20, 1
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s12, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v52.h, v21.h
	v_mov_b16_e32 v54.l, v53.h
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
	v_add_lshl_u32 v21, v8, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s11, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s9, s33, v7
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s10, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v52.l, v22.h
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s8, s33, v6
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v22, v84, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s7, s33, v5
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v51, v6, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s9, s4
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s6, s33, v4
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v52, v0, s[20:23], 0 offen
	buffer_store_b16 v23, v21, s[20:23], 0 offen
	v_add_lshl_u32 v0, v5, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s8, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v21, v4, v20, 1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s7, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v1, 0x87, v11
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v57.l, v23.h
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v19, v137, s33
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s6, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v56.l, v24.h
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s5, s33, v3
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s0, s33, v1
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v57, v22, s[20:23], 0 offen
	buffer_store_b16 v24, v51, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v20, 1
	v_add_lshl_u32 v23, v2, v20, 1
	s_clause 0x1
	buffer_store_b16 v56, v0, s[20:23], 0 offen
	buffer_store_b16 v25, v21, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s5, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v20, v11, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s1, s4
	s_and_b32 s4, s0, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v59.l, v25.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s18, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v58.l, v26.h
	v_add_lshl_u32 v21, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	s_clause 0x1
	buffer_store_b16 v59, v22, s[20:23], 0 offen
	buffer_store_b16 v26, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v15, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s17, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v58, v0, s[20:23], 0 offen
	buffer_store_b16 v27, v20, s[20:23], 0 offen
	v_add_lshl_u32 v0, v14, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s16, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v61.l, v27.h
	v_add_lshl_u32 v20, v13, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s15, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v60.l, v28.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s14, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v61, v21, s[20:23], 0 offen
	buffer_store_b16 v28, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	v_add_lshl_u32 v22, v10, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s13, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v60, v0, s[20:23], 0 offen
	buffer_store_b16 v29, v20, s[20:23], 0 offen
	v_add_lshl_u32 v0, v9, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s12, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v63.l, v29.h
	v_add_lshl_u32 v20, v8, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s11, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v62.l, v30.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s10, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v63, v21, s[20:23], 0 offen
	buffer_store_b16 v30, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	v_add_lshl_u32 v22, v6, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s9, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v62, v0, s[20:23], 0 offen
	buffer_store_b16 v31, v20, s[20:23], 0 offen
	v_add_lshl_u32 v0, v5, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s8, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v20, v4, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s7, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v65.l, v31.h
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v18, v100, s33
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s6, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v64.l, v32.h
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	s_clause 0x1
	buffer_store_b16 v65, v21, s[20:23], 0 offen
	buffer_store_b16 v32, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v19, 1
	v_add_lshl_u32 v22, v2, v19, 1
	s_clause 0x1
	buffer_store_b16 v64, v0, s[20:23], 0 offen
	buffer_store_b16 v33, v20, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s5, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v19, v11, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s1, s3
	s_and_b32 s3, s0, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v67.l, v33.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s18, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v66.l, v34.h
	v_add_lshl_u32 v20, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b16 v67, v21, s[20:23], 0 offen
	buffer_store_b16 v34, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v15, v18, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s17, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v66, v0, s[20:23], 0 offen
	buffer_store_b16 v35, v19, s[20:23], 0 offen
	v_add_lshl_u32 v0, v14, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s16, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v69.l, v35.h
	v_add_lshl_u32 v19, v13, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s15, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v68.l, v36.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s14, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v69, v20, s[20:23], 0 offen
	buffer_store_b16 v36, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_lshl_u32 v21, v10, v18, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s13, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v68, v0, s[20:23], 0 offen
	buffer_store_b16 v37, v19, s[20:23], 0 offen
	v_add_lshl_u32 v0, v9, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s12, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v71.l, v37.h
	v_add_lshl_u32 v19, v8, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s11, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v70.l, v38.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s10, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v71, v20, s[20:23], 0 offen
	buffer_store_b16 v38, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_lshl_u32 v21, v6, v18, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s9, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v70, v0, s[20:23], 0 offen
	buffer_store_b16 v39, v19, s[20:23], 0 offen
	v_add_lshl_u32 v0, v5, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s8, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v19, v4, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s7, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v73.l, v39.h
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v17, v129, s33
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s6, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v72.l, v40.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b16 v73, v20, s[20:23], 0 offen
	buffer_store_b16 v40, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v3, v18, 1
	s_clause 0x1
	buffer_store_b16 v72, v0, s[20:23], 0 offen
	buffer_store_b16 v41, v19, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v18, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s5, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v21, v2, v18, 1
	v_add_lshl_u32 v11, v11, v17, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v74.l, v42.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v75.l, v41.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v16, v16, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v15, v15, v17, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x3
	buffer_store_b16 v75, v20, s[20:23], 0 offen
	buffer_store_b16 v42, v21, s[20:23], 0 offen
	buffer_store_b16 v74, v0, s[20:23], 0 offen
	buffer_store_b16 v43, v11, s[20:23], 0 offen
	v_add_lshl_u32 v0, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v11, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v76.l, v44.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v77.l, v43.h
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v10, v10, v17, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x3
	buffer_store_b16 v77, v16, s[20:23], 0 offen
	buffer_store_b16 v44, v15, s[20:23], 0 offen
	buffer_store_b16 v76, v0, s[20:23], 0 offen
	buffer_store_b16 v45, v11, s[20:23], 0 offen
	v_add_lshl_u32 v0, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v78.l, v46.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v79.l, v45.h
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	v_add_lshl_u32 v6, v6, v17, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x3
	buffer_store_b16 v79, v12, s[20:23], 0 offen
	buffer_store_b16 v46, v10, s[20:23], 0 offen
	buffer_store_b16 v78, v0, s[20:23], 0 offen
	buffer_store_b16 v47, v8, s[20:23], 0 offen
	v_add_lshl_u32 v0, v5, v17, 1
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
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_add_lshl_u32 v1, v1, v17, 1
	v_mov_b16_e32 v80.l, v48.h
	v_mov_b16_e32 v81.l, v47.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v83.l, v49.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_mov_b16_e32 v82.l, v50.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x6
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v48, v6, s[20:23], 0 offen
	buffer_store_b16 v80, v0, s[20:23], 0 offen
	buffer_store_b16 v49, v4, s[20:23], 0 offen
	buffer_store_b16 v83, v3, s[20:23], 0 offen
	buffer_store_b16 v50, v2, s[20:23], 0 offen
	buffer_store_b16 v82, v1, s[20:23], 0 offen
	.loc	1 544 5                         ; ragged.py:544:5
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 64
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14464
; TotalNumSgprs: 42
; NumVgprs: 256
; ScratchSize: 64
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 64
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
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
