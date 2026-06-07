	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 674 0                         ; ragged.py:674:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[10:11], s[0:1], 0x30
.Ltmp0:
	.loc	1 701 20 prologue_end           ; ragged.py:701:20
	s_abs_i32 s8, s2
	.loc	1 706 36                        ; ragged.py:706:36
	v_and_b32_e32 v84, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:698:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s10, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:699:21 ]
	s_add_i32 s5, s11, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:698:21 ]
	s_ashr_i32 s29, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s28, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 700 27 is_stmt 1              ; ragged.py:700:27
	s_mul_i32 s4, s28, s29
	.loc	1 701 20                        ; ragged.py:701:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s12, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s12, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s8, s28
	.loc	1 701 20                        ; ragged.py:701:20
	s_xor_b32 s5, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_cvt_f32_u32 s6, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 703 17                        ; ragged.py:703:17
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s6
	.loc	1 701 20                        ; ragged.py:701:20
	s_sub_i32 s6, s5, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s5, 0, s8
	.loc	1 702 22                        ; ragged.py:702:22
	s_mul_i32 s4, s6, s4
	.loc	1 703 17                        ; ragged.py:703:17
	s_mul_i32 s5, s5, s9
	.loc	1 702 16                        ; ragged.py:702:16
	s_sub_i32 s12, s2, s4
	.loc	1 703 17                        ; ragged.py:703:17
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s7, s12
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s7, s9
	s_xor_b32 s13, s12, s28
	s_mul_i32 s14, s9, s8
	s_ashr_i32 s30, s13, 31
	s_sub_i32 s7, s7, s14
	s_add_i32 s13, s9, 1
	s_sub_i32 s14, s7, s8
	s_cmp_ge_u32 s7, s8
	.loc	1 809 37                        ; ragged.py:809:37
	s_mul_i32 s39, s6, s10
	.loc	1 703 17                        ; ragged.py:703:17
	s_cselect_b32 s9, s13, s9
	s_cselect_b32 s7, s14, s7
	s_add_i32 s13, s9, 1
	s_cmp_ge_u32 s7, s8
	s_cselect_b32 s7, s13, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_xor_b32 s31, s7, s30
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s7, s6, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s13, s31, s30
	.loc	1 710 19                        ; ragged.py:710:19
	s_lshl_b64 s[8:9], s[6:7], 2
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s14, s13, s28
	.loc	1 706 18                        ; ragged.py:706:18
	s_lshl_b32 s38, s13, 6
	.loc	1 704 17                        ; ragged.py:704:17
	s_sub_i32 s12, s12, s14
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v2, s38, v84
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s24, s[4:5], 0x0
	s_mov_b32 s13, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s5, s10, v2
	v_cmp_gt_i32_e64 s4, s10, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s8, s10, v4
	v_cmp_gt_i32_e64 s7, s10, v5
	.loc	1 711 27                        ; ragged.py:711:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s25, s24, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 771 19                        ; ragged.py:771:19
	s_cmp_gt_i32 s25, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge30_crit_edge
	.loc	1 827 22                        ; ragged.py:827:22
	s_add_i32 s9, s38, s39
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s13, -1
                                        ; implicit-def: $sgpr9
.LBB0_3:                                ; %Flow429
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v99, 0x70, v1
	v_lshrrev_b32_e32 v100, 4, v0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_mov_b32_e32 v129, 0
	s_and_not1_b32 vcc_lo, exec_lo, s13
	s_lshl_b32 s33, s12, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x38
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 711 26 is_stmt 1              ; ragged.py:711:26
	s_lshr_b32 s0, s25, 31
	.loc	1 774 23                        ; ragged.py:774:23
	s_lshl_b32 s40, s3, 4
	.loc	1 711 26                        ; ragged.py:711:26
	s_add_i32 s25, s25, s0
	.loc	1 790 37                        ; ragged.py:790:37
	s_and_b32 s0, s24, 0x80000001
	.loc	1 711 26                        ; ragged.py:711:26
	s_ashr_i32 s3, s25, 1
	v_dual_mov_b32 v149, v100 :: v_dual_and_b32 v2, 0xf0, v0
	s_sub_i32 s35, 0, s3
	.loc	1 790 37                        ; ragged.py:790:37
	s_cmp_eq_u32 s0, 1
	.loc	1 771 19                        ; ragged.py:771:19
	s_mul_i32 s29, s29, s6
	.loc	1 790 37                        ; ragged.py:790:37
	s_cselect_b32 s36, -1, 0
	.loc	1 790 67 is_stmt 0              ; ragged.py:790:67
	s_add_i32 s41, s3, -1
	s_cmp_lt_i32 s40, 16
	v_mov_b32_e32 v126, 0
	s_cselect_b32 s43, -1, 0
	s_add_i32 s9, s38, s39
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v1, 2, v84
	v_add_nc_u32_e32 v5, s9, v84
	.loc	1 782 39 is_stmt 1              ; ragged.py:782:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s42, s6, s22
	s_mov_b32 s24, s12
	s_mov_b32 s12, s14
	.loc	1 771 19                        ; ragged.py:771:19
	s_sub_i32 s14, s30, s29
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v10, 16, v5
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v11, 32, v5
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v12, 48, v5
	v_mul_lo_u32 v132, v5, s23
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v5, 5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v134, v11, s23
	v_mul_lo_u32 v135, v12, s23
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v11, 2, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v116, 0 :: v_dual_and_b32 v5, 32, v5
	v_add3_u32 v12, s42, s40, v100
	s_sub_i32 s14, s14, s31
	.loc	1 816 37                        ; ragged.py:816:37
	s_mul_i32 s37, s6, s23
	.loc	1 771 19                        ; ragged.py:771:19
	s_mul_i32 s28, s28, s14
	v_add3_u32 v5, 0, v11, v5
	v_mul_lo_u32 v11, s10, v12
	s_lshl_b32 s14, s28, 8
	s_mul_i32 s6, s11, s6
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v3, s38, v1
	v_mul_lo_u32 v133, v10, s23
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v10, 1, v0
	.loc	1 771 19                        ; ragged.py:771:19
	s_add_i32 s14, s14, s6
	s_lshl_b32 s2, s2, 8
	s_lshl_b32 s6, s31, 6
	v_add3_u32 v12, s14, s2, v0
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v131, s33, v0
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s1, s10, v3
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v3, 2, v0
	v_or_b32_e32 v4, 0x3f0, v0
	v_or_b32_e32 v6, 0x300, v0
	v_or_b32_e32 v7, 0x700, v0
	v_or_b32_e32 v8, 0xb00, v0
	v_or_b32_e32 v9, 0xf00, v0
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v13, 0, v99
	v_dual_mov_b32 v123, 0 :: v_dual_and_b32 v10, 28, v10
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	.loc	1 771 19                        ; ragged.py:771:19
	v_add3_u32 v1, v11, s6, v1
	v_cndmask_b32_e64 v11, 0, 1, s43
	v_mul_lo_u32 v136, s22, v12
	s_lshl_b32 s2, s30, 6
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s11, v131
	.loc	1 771 19                        ; ragged.py:771:19
	v_subrev_nc_u32_e32 v137, s2, v1
	v_subrev_nc_u32_e32 v138, s3, v100
	v_cmp_ne_u32_e64 s6, 1, v11
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v139, 0, v3
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v140, 0, v4
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v141, 0, v0
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v142, 0, v6
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v143, 0, v7
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v144, 0, v8
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v145, 0, v9
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v146, v13, v84
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v147, v5, v10
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v148, 0, v2
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v64, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v65, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s34, 0
	s_and_b32 s25, s13, 0xffff
	s_and_b32 s13, s15, 0xffff
	s_lshr_b32 s23, s41, 4
	s_add_i32 s38, s40, -16
	s_lshl_b32 s10, s10, 4
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_mov_b32 s22, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v32, v132, s34, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_add_i32 s2, s34, s37
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v33, v133, s34, 1
	v_add_lshl_u32 v34, v134, s34, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_mul_i32 s2, s2, s11
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v35, v135, s34, 1
	.loc	1 815 40                        ; ragged.py:815:40
	v_add_lshl_u32 v36, v131, s2, 1
	.loc	1 808 40                        ; ragged.py:808:40
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	v_cndmask_b32_e64 v34, 0x80000000, v34, s8
	v_cndmask_b32_e64 v35, 0x80000000, v35, s7
	.loc	1 815 40                        ; ragged.py:815:40
	v_cndmask_b32_e64 v36, 0x80000000, v36, s0
	.loc	1 808 40                        ; ragged.py:808:40
	s_clause 0x3
	buffer_load_u16 v32, v32, s[28:31], 0 offen
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	.loc	1 815 40                        ; ragged.py:815:40
	buffer_load_u16 v36, v36, s[16:19], 0 offen
	.loc	1 820 21                        ; ragged.py:820:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 822 17                        ; ragged.py:822:17
	s_add_i32 s2, s34, 1
	.loc	1 771 19                        ; ragged.py:771:19
	s_add_i32 s35, s35, 16
	s_add_i32 s22, s22, 16
	s_cmp_lg_u32 s34, s23
	s_mov_b32 s34, s2
	v_add_nc_u32_e32 v149, 16, v149
	.loc	1 808 40                        ; ragged.py:808:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 813 21                        ; ragged.py:813:21
	v_dual_mul_f32 v55, v162, v33 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v39, v179, v32 :: v_dual_lshlrev_b32 v34, 16, v34
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v42, v176, v32 :: v_dual_lshlrev_b32 v35, 16, v35
	v_mul_f32_e32 v40, v178, v32
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v57, v160, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_dual_mul_f32 v53, v164, v33 :: v_dual_add_nc_u32 v136, 16, v136
	v_dual_mul_f32 v38, v180, v32 :: v_dual_add_nc_u32 v137, s10, v137
	v_dual_mul_f32 v37, v181, v32 :: v_dual_add_nc_u32 v138, 16, v138
	v_dual_mul_f32 v41, v177, v32 :: v_dual_mul_f32 v54, v163, v33
	v_dual_mul_f32 v43, v175, v32 :: v_dual_mul_f32 v52, v165, v33
	v_dual_mul_f32 v44, v174, v32 :: v_dual_mul_f32 v61, v156, v33
	v_dual_mul_f32 v45, v173, v32 :: v_dual_mul_f32 v58, v159, v33
	v_dual_mul_f32 v46, v172, v32 :: v_dual_mul_f32 v59, v158, v33
	v_dual_mul_f32 v47, v171, v32 :: v_dual_mul_f32 v56, v161, v33
	v_dual_mul_f32 v48, v170, v32 :: v_dual_mul_f32 v153, v153, v33
	v_dual_mul_f32 v49, v169, v32 :: v_dual_mul_f32 v62, v155, v33
	v_dual_mul_f32 v50, v168, v32 :: v_dual_mul_f32 v63, v154, v33
	v_dual_mul_f32 v51, v167, v32 :: v_dual_mul_f32 v60, v157, v33
	v_dual_mul_f32 v32, v166, v32 :: v_dual_mul_f32 v151, v151, v33
	v_dual_mul_f32 v152, v152, v33 :: v_dual_mul_f32 v31, v31, v34
	v_dual_mul_f32 v33, v150, v33 :: v_dual_mul_f32 v28, v28, v34
	v_dual_mul_f32 v30, v30, v34 :: v_dual_mul_f32 v15, v15, v35
	v_dual_mul_f32 v29, v29, v34 :: v_dual_mul_f32 v14, v14, v35
	v_dual_mul_f32 v150, v27, v34 :: v_dual_mul_f32 v9, v9, v35
	v_dual_mul_f32 v154, v26, v34 :: v_dual_mul_f32 v165, v11, v35
	v_dual_mul_f32 v155, v25, v34 :: v_dual_mul_f32 v164, v12, v35
	v_dual_mul_f32 v156, v24, v34 :: v_dual_mul_f32 v7, v7, v35
	v_mul_f32_e32 v157, v23, v34
	v_dual_mul_f32 v158, v22, v34 :: v_dual_mul_f32 v5, v5, v35
	v_dual_mul_f32 v159, v21, v34 :: v_dual_mul_f32 v166, v10, v35
	v_dual_mul_f32 v160, v20, v34 :: v_dual_mul_f32 v3, v3, v35
	v_dual_mul_f32 v161, v19, v34 :: v_dual_mul_f32 v8, v8, v35
	v_dual_mul_f32 v162, v18, v34 :: v_dual_mul_f32 v1, v1, v35
	v_dual_mul_f32 v163, v17, v34 :: v_dual_mul_f32 v6, v6, v35
	v_mul_f32_e32 v34, v16, v34
	.loc	1 820 21                        ; ragged.py:820:21
	ds_store_b32 v147, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v148
	ds_load_b128 v[20:23], v148 offset:16
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v36, v13, v35
	.loc	1 820 21                        ; ragged.py:820:21
	ds_load_b128 v[10:13], v148 offset:512
	ds_load_b128 v[24:27], v148 offset:528
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v4, v4, v35
	v_mul_f32_e32 v2, v2, v35
	v_mul_f32_e32 v0, v0, v35
	.loc	1 821 17                        ; ragged.py:821:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v130, v37, v16 :: v_dual_fmac_f32 v127, v40, v19
	v_dual_fmac_f32 v129, v38, v17 :: v_dual_fmac_f32 v128, v39, v18
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v123, v44, v23 :: v_dual_fmac_f32 v126, v41, v20
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v121, v46, v11
	v_dual_fmac_f32 v125, v42, v21 :: v_dual_fmac_f32 v124, v43, v22
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v115, v32, v27 :: v_dual_fmac_f32 v122, v45, v10
	v_fmac_f32_e32 v111, v55, v19
	v_dual_fmac_f32 v120, v47, v12 :: v_dual_fmac_f32 v113, v53, v17
	v_dual_fmac_f32 v119, v48, v13 :: v_dual_fmac_f32 v118, v49, v24
	v_fmac_f32_e32 v107, v59, v23
	v_dual_fmac_f32 v117, v50, v25 :: v_dual_fmac_f32 v116, v51, v26
	v_dual_fmac_f32 v109, v57, v21 :: v_dual_fmac_f32 v114, v52, v16
	v_dual_fmac_f32 v105, v61, v11 :: v_dual_fmac_f32 v112, v54, v18
	v_dual_fmac_f32 v103, v63, v13 :: v_dual_fmac_f32 v110, v56, v20
	v_dual_fmac_f32 v97, v33, v27 :: v_dual_fmac_f32 v108, v58, v22
	v_fmac_f32_e32 v101, v152, v25
	v_dual_fmac_f32 v106, v60, v10 :: v_dual_fmac_f32 v95, v30, v17
	v_dual_fmac_f32 v104, v62, v12 :: v_dual_fmac_f32 v93, v28, v19
	v_dual_fmac_f32 v102, v153, v24 :: v_dual_fmac_f32 v91, v154, v21
	v_dual_fmac_f32 v98, v151, v26 :: v_dual_fmac_f32 v89, v156, v23
	v_dual_fmac_f32 v96, v31, v16 :: v_dual_fmac_f32 v87, v158, v11
	v_dual_fmac_f32 v94, v29, v18 :: v_dual_fmac_f32 v85, v160, v13
	v_dual_fmac_f32 v92, v150, v20 :: v_dual_fmac_f32 v81, v163, v26
	v_dual_fmac_f32 v90, v155, v22 :: v_dual_fmac_f32 v83, v161, v24
	v_dual_fmac_f32 v88, v157, v10 :: v_dual_fmac_f32 v79, v15, v16
	v_dual_fmac_f32 v86, v159, v12 :: v_dual_fmac_f32 v77, v36, v18
	v_dual_fmac_f32 v82, v162, v25 :: v_dual_fmac_f32 v75, v165, v20
	v_dual_fmac_f32 v80, v34, v27 :: v_dual_fmac_f32 v73, v9, v22
	v_dual_fmac_f32 v78, v14, v17 :: v_dual_fmac_f32 v71, v7, v10
	v_dual_fmac_f32 v76, v164, v19 :: v_dual_fmac_f32 v69, v5, v12
	v_dual_fmac_f32 v74, v166, v21 :: v_dual_fmac_f32 v67, v3, v24
	v_dual_fmac_f32 v72, v8, v23 :: v_dual_fmac_f32 v65, v1, v26
	v_fmac_f32_e32 v70, v6, v11
	v_fmac_f32_e32 v68, v4, v13
	v_fmac_f32_e32 v66, v2, v25
	v_fmac_f32_e32 v64, v0, v27
	.loc	1 771 19                        ; ragged.py:771:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	.loc	1 775 23 is_stmt 1              ; ragged.py:775:23
	s_and_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v150, v137
	s_mov_b32 s40, s38
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v9, v0
	v_mov_b32_e32 v10, v0
	v_mov_b32_e32 v11, v0
	v_mov_b32_e32 v12, v0
	v_mov_b32_e32 v13, v0
	v_mov_b32_e32 v14, v0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v17, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v25, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v33, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v41, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v49, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v57, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 776 26 is_stmt 1              ; ragged.py:776:26
	s_add_i32 s2, s22, s40
	s_add_i32 s41, s35, s40
	s_add_i32 s42, s2, 16
	.loc	1 775 23                        ; ragged.py:775:23
	s_add_i32 s39, s40, 16
	.loc	1 776 26                        ; ragged.py:776:26
	s_add_i32 s43, s2, 17
	s_add_i32 s44, s2, 18
	s_add_i32 s45, s2, 19
	s_add_i32 s46, s2, 20
	s_add_i32 s47, s2, 21
	s_add_i32 s48, s2, 22
	s_add_i32 s49, s2, 23
	s_add_i32 s50, s2, 24
	s_add_i32 s51, s2, 25
	s_add_i32 s52, s2, 26
	s_add_i32 s53, s2, 27
	s_add_i32 s54, s2, 28
	s_add_i32 s55, s2, 29
	s_add_i32 s56, s2, 30
	s_add_i32 s57, s2, 31
	.loc	1 789 35                        ; ragged.py:789:35
	s_cmp_lt_i32 s42, s3
	v_add_nc_u32_e32 v152, s39, v149
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s43, s3
	.loc	1 789 59 is_stmt 0              ; ragged.py:789:59
	v_add_nc_u32_e32 v153, s39, v100
	.loc	1 789 35                        ; ragged.py:789:35
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s44, s3
	v_cmp_gt_i32_e32 vcc_lo, s3, v152
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s45, s3
	.loc	1 789 59                        ; ragged.py:789:59
	v_cmp_gt_i32_e64 s2, 16, v153
	.loc	1 789 35                        ; ragged.py:789:35
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s46, s3
	v_add_nc_u32_e32 v151, s40, v136
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s47, s3
	.loc	1 792 38 is_stmt 1              ; ragged.py:792:38
	s_mov_b32 s14, s26
	.loc	1 789 35                        ; ragged.py:789:35
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s48, s3
	v_add_nc_u32_e32 v165, 27, v151
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s49, s3
	v_add_nc_u32_e32 v161, 23, v151
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s50, s3
	v_add_nc_u32_e32 v157, 19, v151
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s51, s3
	v_add_nc_u32_e32 v163, 25, v151
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s52, s3
	v_add_nc_u32_e32 v167, 29, v151
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s53, s3
	.loc	1 792 38                        ; ragged.py:792:38
	s_mov_b32 s15, s27
	.loc	1 789 35                        ; ragged.py:789:35
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s54, s3
	.loc	1 793 38                        ; ragged.py:793:38
	v_add_nc_u32_e32 v178, 0, v84
	.loc	1 789 35                        ; ragged.py:789:35
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s55, s3
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s56, s3
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s57, s3
	s_cselect_b32 s57, -1, 0
	.loc	1 789 34 is_stmt 0              ; ragged.py:789:34
	s_and_b32 s58, vcc_lo, s2
	.loc	1 790 60 is_stmt 1              ; ragged.py:790:60
	s_cmpk_eq_i32 s41, 0xffef
	s_cselect_b32 s59, -1, 0
	s_cmpk_eq_i32 s41, 0xffee
	s_cselect_b32 s60, -1, 0
	s_cmpk_eq_i32 s41, 0xffed
	s_cselect_b32 s61, -1, 0
	s_cmpk_eq_i32 s41, 0xffec
	s_cselect_b32 s62, -1, 0
	s_cmpk_eq_i32 s41, 0xffeb
	s_cselect_b32 s63, -1, 0
	s_cmpk_eq_i32 s41, 0xffea
	s_cselect_b32 s64, -1, 0
	s_cmpk_eq_i32 s41, 0xffe9
	s_cselect_b32 s65, -1, 0
	s_cmpk_eq_i32 s41, 0xffe8
	s_cselect_b32 s66, -1, 0
	s_cmpk_eq_i32 s41, 0xffe7
	s_cselect_b32 s67, -1, 0
	s_cmpk_eq_i32 s41, 0xffe6
	s_cselect_b32 s68, -1, 0
	s_cmpk_eq_i32 s41, 0xffe5
	s_cselect_b32 s69, -1, 0
	s_cmpk_eq_i32 s41, 0xffe4
	s_cselect_b32 s70, -1, 0
	s_cmpk_eq_i32 s41, 0xffe3
	s_cselect_b32 s71, -1, 0
	s_cmpk_eq_i32 s41, 0xffe2
	s_cselect_b32 s72, -1, 0
	s_cmpk_eq_i32 s41, 0xffe1
	s_cselect_b32 s73, -1, 0
	s_cmpk_eq_i32 s41, 0xffe0
	s_cselect_b32 s2, -1, 0
	.loc	1 791 70                        ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s58
	.loc	1 791 38 is_stmt 0              ; ragged.py:791:38
	v_dual_cndmask_b32 v152, 0x80000000, v150 :: v_dual_add_nc_u32 v155, 17, v151
	.loc	1 792 70 is_stmt 1              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s42
	v_add_nc_u32_e32 v156, 18, v151
	v_add_nc_u32_e32 v154, 16, v151
	.loc	1 790 36                        ; ragged.py:790:36
	s_and_b32 s41, s36, s61
	s_and_b32 s42, s36, s62
	s_and_b32 s2, s36, s2
	.loc	1 775 23                        ; ragged.py:775:23
	v_add_nc_u32_e32 v150, s10, v150
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v153, 0x80000000, v154, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s43
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s43, s36, s63
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v154, 0x80000000, v155, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s44
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s44, s36, s64
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v155, 0x80000000, v156, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s45
	.loc	1 792 38                        ; ragged.py:792:38
	v_dual_cndmask_b32 v156, 0x80000000, v157 :: v_dual_add_nc_u32 v159, 21, v151
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s46
	v_add_nc_u32_e32 v160, 22, v151
	v_add_nc_u32_e32 v158, 20, v151
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s45, s36, s65
	s_and_b32 s46, s36, s66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v157, 0x80000000, v158, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s47
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s47, s36, s67
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v158, 0x80000000, v159, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s48
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s48, s36, s68
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v159, 0x80000000, v160, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s49
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s49, s36, s69
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v160, 0x80000000, v161, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s50
	v_add_nc_u32_e32 v164, 26, v151
	v_add_nc_u32_e32 v162, 24, v151
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s50, s36, s70
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v161, 0x80000000, v162, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s51
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s51, s36, s71
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v162, 0x80000000, v163, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s52
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s52, s36, s72
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v163, 0x80000000, v164, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s53
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s53, s36, s73
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v164, 0x80000000, v165, vcc_lo
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s54
	v_add_nc_u32_e32 v168, 30, v151
	v_add_nc_u32_e32 v166, 28, v151
	.loc	1 792 38                        ; ragged.py:792:38
	v_add_nc_u32_e32 v151, 31, v151
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v165, 0x80000000, v166, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s55
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v166, 0x80000000, v167, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s56
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v167, 0x80000000, v168, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s0, s57
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v151, 0x80000000, v151, vcc_lo
	.loc	1 791 38 is_stmt 1              ; ragged.py:791:38
	buffer_load_b32 v168, v152, s[24:27], 0 offen
	.loc	1 792 38                        ; ragged.py:792:38
	s_clause 0xf
	buffer_load_u8 v169, v153, s[12:15], 0 offen
	buffer_load_u8 v170, v154, s[12:15], 0 offen
	buffer_load_u8 v171, v155, s[12:15], 0 offen
	buffer_load_u8 v172, v156, s[12:15], 0 offen
	buffer_load_u8 v173, v157, s[12:15], 0 offen
	buffer_load_u8 v174, v158, s[12:15], 0 offen
	buffer_load_u8 v175, v159, s[12:15], 0 offen
	buffer_load_u8 v176, v160, s[12:15], 0 offen
	buffer_load_u8 v161, v161, s[12:15], 0 offen
	buffer_load_u8 v162, v162, s[12:15], 0 offen
	buffer_load_u8 v163, v163, s[12:15], 0 offen
	buffer_load_u8 v164, v164, s[12:15], 0 offen
	buffer_load_u8 v165, v165, s[12:15], 0 offen
	buffer_load_u8 v166, v166, s[12:15], 0 offen
	buffer_load_u8 v167, v167, s[12:15], 0 offen
	buffer_load_u8 v177, v151, s[12:15], 0 offen
	.loc	1 789 35                        ; ragged.py:789:35
	v_add_nc_u32_e32 v151, s40, v138
	.loc	1 790 36                        ; ragged.py:790:36
	s_and_b32 s15, s36, s59
	s_and_b32 s40, s36, s60
	.loc	1 793 38                        ; ragged.py:793:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 790 60                        ; ragged.py:790:60
	v_cmp_eq_u32_e32 vcc_lo, 0xffffffef, v151
	.loc	1 790 36 is_stmt 0              ; ragged.py:790:36
	s_and_b32 s14, s36, vcc_lo
	.loc	1 775 23 is_stmt 1              ; ragged.py:775:23
	s_cmp_lt_i32 s39, 0
	.loc	1 791 38                        ; ragged.py:791:38
	s_waitcnt vmcnt(16)
	v_lshrrev_b32_e32 v179, 8, v168
	v_lshrrev_b32_e32 v180, 24, v168
	.loc	1 793 66                        ; ragged.py:793:66
	v_and_b16 v151.l, v168.l, 15
	v_and_b16 v151.h, v168.h, 15
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(15)
	v_and_b16 v152.l, v169.l, 15
	.loc	1 793 66                        ; ragged.py:793:66
	v_and_b16 v160.l, v179.l, 15
	v_and_b16 v160.h, v180.l, 15
	.loc	1 793 38 is_stmt 0              ; ragged.py:793:38
	v_cndmask_b16 v151.l, v168.l, v151.l, s14
	v_cndmask_b16 v151.h, v168.h, v151.h, s14
	.loc	1 794 66 is_stmt 1              ; ragged.py:794:66
	s_waitcnt vmcnt(14)
	v_and_b16 v152.h, v170.l, 15
	.loc	1 793 38                        ; ragged.py:793:38
	v_cndmask_b16 v160.l, v179.l, v160.l, s14
	v_cndmask_b16 v160.h, v180.l, v160.h, s14
	v_and_b16 v151.l, 0xff, v151.l
	v_and_b16 v151.h, 0xff, v151.h
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(13)
	v_and_b16 v153.l, v171.l, 15
	.loc	1 793 38                        ; ragged.py:793:38
	v_lshlrev_b16 v160.l, 8, v160.l
	v_lshlrev_b16 v160.h, 8, v160.h
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(12)
	v_and_b16 v153.h, v172.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v154.l, v173.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v154.h, v174.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v155.l, v175.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v155.h, v176.l, 15
	s_waitcnt vmcnt(7)
	v_and_b16 v156.l, v161.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v156.h, v162.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v157.l, v163.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v157.h, v164.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v158.l, v165.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v158.h, v166.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v159.l, v167.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v159.h, v177.l, 15
	.loc	1 793 38                        ; ragged.py:793:38
	v_or_b16 v151.l, v151.l, v160.l
	v_or_b16 v151.h, v151.h, v160.h
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v152.l, v169.l, v152.l, s15
	v_cndmask_b16 v152.h, v170.l, v152.h, s40
	v_cndmask_b16 v153.l, v171.l, v153.l, s41
	v_cndmask_b16 v153.h, v172.l, v153.h, s42
	v_cndmask_b16 v154.l, v173.l, v154.l, s43
	v_cndmask_b16 v154.h, v174.l, v154.h, s44
	v_cndmask_b16 v155.l, v175.l, v155.l, s45
	v_cndmask_b16 v155.h, v176.l, v155.h, s46
	v_cndmask_b16 v156.l, v161.l, v156.l, s47
	v_cndmask_b16 v156.h, v162.l, v156.h, s48
	v_cndmask_b16 v157.l, v163.l, v157.l, s49
	v_cndmask_b16 v157.h, v164.l, v157.h, s50
	v_cndmask_b16 v158.l, v165.l, v158.l, s51
	v_cndmask_b16 v158.h, v166.l, v158.h, s52
	v_cndmask_b16 v159.l, v167.l, v159.l, s53
	v_cndmask_b16 v159.h, v177.l, v159.h, s2
	.loc	1 793 38                        ; ragged.py:793:38
	ds_store_b32 v139, v151
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 795 31                        ; ragged.py:795:31
	ds_load_u8 v151, v178 offset:192
	ds_load_u8 v160, v178 offset:128
	ds_load_u8 v161, v178 offset:208
	ds_load_u8 v162, v178 offset:144
	ds_load_u8 v163, v178 offset:224
	ds_load_u8 v164, v178 offset:160
	ds_load_u8 v165, v178 offset:240
	ds_load_u8 v166, v178 offset:176
	ds_load_u8 v167, v178 offset:448
	ds_load_u8 v168, v178 offset:384
	ds_load_u8 v169, v178 offset:464
	ds_load_u8 v170, v178 offset:400
	ds_load_u8 v171, v178 offset:480
	ds_load_u8 v172, v178 offset:416
	ds_load_u8 v173, v178 offset:496
	ds_load_u8 v174, v178 offset:432
	ds_load_u8 v175, v178 offset:320
	ds_load_u8 v176, v178 offset:256
	ds_load_u8 v177, v178 offset:336
	ds_load_u8 v179, v178 offset:272
	ds_load_u8 v180, v178 offset:352
	ds_load_u8 v181, v178 offset:288
	ds_load_u8 v182, v178 offset:368
	ds_load_u8 v183, v178 offset:304
	ds_load_u8 v184, v178 offset:64
	ds_load_u8 v185, v178 offset:80
	ds_load_u8 v186, v178 offset:96
	ds_load_u8 v187, v178 offset:112
	ds_load_u8 v188, v178
	ds_load_u8 v189, v178 offset:16
	ds_load_u8 v190, v178 offset:32
	ds_load_u8 v191, v178 offset:48
	ds_load_u8 v192, v178 offset:704
	ds_load_u8 v193, v178 offset:640
	ds_load_u8 v194, v178 offset:720
	ds_load_u8 v195, v178 offset:656
	ds_load_u8 v196, v178 offset:736
	ds_load_u8 v197, v178 offset:672
	ds_load_u8 v198, v178 offset:752
	ds_load_u8 v199, v178 offset:688
	ds_load_u8 v200, v178 offset:576
	ds_load_u8 v201, v178 offset:512
	ds_load_u8 v202, v178 offset:592
	ds_load_u8 v203, v178 offset:528
	ds_load_u8 v204, v178 offset:608
	ds_load_u8 v205, v178 offset:544
	ds_load_u8 v206, v178 offset:624
	ds_load_u8 v207, v178 offset:560
	ds_load_u8 v208, v178 offset:960
	ds_load_u8 v209, v178 offset:896
	ds_load_u8 v210, v178 offset:976
	ds_load_u8 v211, v178 offset:912
	ds_load_u8 v212, v178 offset:992
	ds_load_u8 v213, v178 offset:928
	ds_load_u8 v214, v140
	ds_load_u8 v215, v178 offset:944
	ds_load_u8 v216, v178 offset:832
	ds_load_u8 v217, v178 offset:768
	ds_load_u8 v218, v178 offset:848
	ds_load_u8 v219, v178 offset:784
	ds_load_u8 v220, v178 offset:864
	ds_load_u8 v221, v178 offset:800
	ds_load_u8 v222, v178 offset:880
	ds_load_u8 v178, v178 offset:816
	.loc	1 794 38                        ; ragged.py:794:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v141, v152
	ds_store_b8_d16_hi v141, v152 offset:256
	ds_store_b8 v141, v153 offset:512
	ds_store_b8 v141, v154 offset:1024
	ds_store_b8_d16_hi v141, v154 offset:1280
	ds_store_b8 v141, v155 offset:1536
	ds_store_b8 v141, v156 offset:2048
	ds_store_b8_d16_hi v141, v156 offset:2304
	ds_store_b8 v141, v157 offset:2560
	ds_store_b8 v141, v158 offset:3072
	ds_store_b8_d16_hi v141, v158 offset:3328
	ds_store_b8_d16_hi v142, v153
	ds_store_b8_d16_hi v143, v155
	ds_store_b8_d16_hi v144, v157
	ds_store_b8 v141, v159 offset:3584
	ds_store_b8_d16_hi v145, v159
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 795 31                        ; ragged.py:795:31
	ds_load_u8 v152, v146 offset:1280
	ds_load_u8 v153, v146 offset:1024
	ds_load_u8 v154, v146 offset:1792
	ds_load_u8 v155, v146 offset:1536
	ds_load_u8 v156, v146 offset:256
	ds_load_u8 v157, v146
	ds_load_u8 v158, v146 offset:768
	ds_load_u8 v159, v146 offset:512
	ds_load_u8 v223, v146 offset:3328
	ds_load_u8 v224, v146 offset:3072
	ds_load_u8 v225, v146 offset:3840
	ds_load_u8 v226, v146 offset:3584
	ds_load_u8 v227, v146 offset:2304
	ds_load_u8 v228, v146 offset:2048
	ds_load_u8 v229, v146 offset:2816
	ds_load_u8 v230, v146 offset:2560
	ds_load_u8 v231, v146 offset:1920
	ds_load_u8 v232, v146 offset:1664
	ds_load_u8 v233, v146 offset:1408
	ds_load_u8 v234, v146 offset:1152
	ds_load_u8 v235, v146 offset:896
	ds_load_u8 v236, v146 offset:640
	v_perm_b32 v175, v176, v175, 0xc0c0004
	ds_load_u8 v176, v146 offset:384
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v153, v153, v152, 0xc0c0004
	ds_load_u8 v152, v146 offset:3456
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v146 offset:3200
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v146 offset:2944
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v146 offset:2688
	v_perm_b32 v216, v217, v216, 0xc0c0004
	ds_load_u8 v217, v146 offset:2432
	v_perm_b32 v208, v209, v208, 0xc0c0004
	ds_load_u8 v209, v146 offset:2176
	ds_load_u8 v168, v146 offset:128
	v_perm_b32 v184, v188, v184, 0xc0c0004
	ds_load_u8 v188, v146 offset:3968
	v_perm_b32 v151, v160, v151, 0xc0c0004
	ds_load_u8 v160, v146 offset:3712
	v_perm_b32 v200, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v201, v226, v225, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v225, v234, v233, 0xc0c0004
	v_perm_b32 v226, v232, v231, 0xc0c0004
	v_perm_b32 v177, v179, v177, 0xc0c0004
	v_perm_b32 v169, v170, v169, 0xc0c0004
	v_perm_b32 v170, v189, v185, 0xc0c0004
	v_perm_b32 v179, v162, v161, 0xc0c0004
	v_perm_b32 v180, v181, v180, 0xc0c0004
	v_perm_b32 v171, v172, v171, 0xc0c0004
	v_perm_b32 v172, v190, v186, 0xc0c0004
	v_perm_b32 v181, v164, v163, 0xc0c0004
	v_perm_b32 v182, v183, v182, 0xc0c0004
	v_perm_b32 v173, v174, v173, 0xc0c0004
	v_perm_b32 v174, v191, v187, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v168, v168, v176, 0xc0c0004
	v_perm_b32 v176, v236, v235, 0xc0c0004
	v_perm_b32 v183, v166, v165, 0xc0c0004
	v_perm_b32 v192, v193, v192, 0xc0c0004
	v_perm_b32 v193, v224, v223, 0xc0c0004
	v_perm_b32 v223, v228, v227, 0xc0c0004
	v_perm_b32 v224, v230, v229, 0xc0c0004
	v_perm_b32 v227, v155, v152, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v160, v188, 0xc0c0004
	v_perm_b32 v209, v209, v217, 0xc0c0004
	v_perm_b32 v217, v159, v157, 0xc0c0004
	v_perm_b32 v185, v219, v218, 0xc0c0004
	v_perm_b32 v189, v211, v210, 0xc0c0004
	v_perm_b32 v202, v203, v202, 0xc0c0004
	v_perm_b32 v194, v195, v194, 0xc0c0004
	v_perm_b32 v186, v221, v220, 0xc0c0004
	v_perm_b32 v190, v213, v212, 0xc0c0004
	v_perm_b32 v195, v205, v204, 0xc0c0004
	v_perm_b32 v196, v197, v196, 0xc0c0004
	v_perm_b32 v178, v178, v222, 0xc0c0004
	v_perm_b32 v187, v215, v214, 0xc0c0004
	v_perm_b32 v191, v207, v206, 0xc0c0004
	v_perm_b32 v197, v199, v198, 0xc0c0004
	v_lshl_or_b32 v152, v167, 16, v175
	v_lshl_or_b32 v151, v151, 16, v184
	v_lshl_or_b32 v154, v154, 16, v153
	v_lshl_or_b32 v153, v158, 16, v156
	v_lshl_or_b32 v160, v226, 16, v225
	v_lshl_or_b32 v159, v176, 16, v168
	v_lshl_or_b32 v164, v169, 16, v177
	v_lshl_or_b32 v163, v179, 16, v170
	v_lshl_or_b32 v168, v171, 16, v180
	v_lshl_or_b32 v167, v181, 16, v172
	v_lshl_or_b32 v172, v173, 16, v182
	v_lshl_or_b32 v171, v183, 16, v174
	v_lshl_or_b32 v156, v208, 16, v216
	v_lshl_or_b32 v155, v192, 16, v200
	v_lshl_or_b32 v158, v201, 16, v193
	v_lshl_or_b32 v157, v224, 16, v223
	v_lshl_or_b32 v162, v188, 16, v227
	v_lshl_or_b32 v161, v217, 16, v209
	v_lshl_or_b32 v166, v189, 16, v185
	v_lshl_or_b32 v165, v194, 16, v202
	v_lshl_or_b32 v170, v190, 16, v186
	v_lshl_or_b32 v169, v196, 16, v195
	v_lshl_or_b32 v174, v187, 16, v178
	v_lshl_or_b32 v173, v197, 16, v191
	v_wmma_i32_16x16x16_iu4 v[0:7], v[153:154], v[151:152], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[159:160], v[151:152], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[153:154], v[163:164], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[159:160], v[163:164], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[153:154], v[167:168], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[159:160], v[167:168], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[153:154], v[171:172], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[159:160], v[171:172], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[157:158], v[155:156], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[161:162], v[155:156], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[157:158], v[165:166], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[161:162], v[165:166], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[157:158], v[169:170], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[161:162], v[169:170], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[157:158], v[173:174], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[161:162], v[173:174], v[56:63] neg_lo:[1,1,0]
	s_mov_b32 s40, s39
	.loc	1 775 23                        ; ragged.py:775:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 806 27                        ; ragged.py:806:27
	v_cvt_f32_i32_e32 v181, v0
	v_cvt_f32_i32_e32 v180, v1
	v_cvt_f32_i32_e32 v179, v2
	v_cvt_f32_i32_e32 v178, v3
	v_cvt_f32_i32_e32 v177, v4
	v_cvt_f32_i32_e32 v176, v5
	v_cvt_f32_i32_e32 v175, v6
	v_cvt_f32_i32_e32 v174, v7
	v_cvt_f32_i32_e32 v173, v8
	v_cvt_f32_i32_e32 v172, v9
	v_cvt_f32_i32_e32 v171, v10
	v_cvt_f32_i32_e32 v170, v11
	v_cvt_f32_i32_e32 v169, v12
	v_cvt_f32_i32_e32 v168, v13
	v_cvt_f32_i32_e32 v167, v14
	v_cvt_f32_i32_e32 v166, v15
	v_cvt_f32_i32_e32 v165, v16
	v_cvt_f32_i32_e32 v164, v17
	v_cvt_f32_i32_e32 v163, v18
	v_cvt_f32_i32_e32 v162, v19
	v_cvt_f32_i32_e32 v161, v20
	v_cvt_f32_i32_e32 v160, v21
	v_cvt_f32_i32_e32 v159, v22
	v_cvt_f32_i32_e32 v158, v23
	v_cvt_f32_i32_e32 v157, v24
	v_cvt_f32_i32_e32 v156, v25
	v_cvt_f32_i32_e32 v155, v26
	v_cvt_f32_i32_e32 v154, v27
	v_cvt_f32_i32_e32 v153, v28
	v_cvt_f32_i32_e32 v152, v29
	v_cvt_f32_i32_e32 v151, v30
	v_cvt_f32_i32_e32 v150, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v30, v33
	v_cvt_f32_i32_e32 v29, v34
	v_cvt_f32_i32_e32 v28, v35
	v_cvt_f32_i32_e32 v27, v36
	v_cvt_f32_i32_e32 v26, v37
	v_cvt_f32_i32_e32 v25, v38
	v_cvt_f32_i32_e32 v24, v39
	v_cvt_f32_i32_e32 v23, v40
	v_cvt_f32_i32_e32 v22, v41
	v_cvt_f32_i32_e32 v21, v42
	v_cvt_f32_i32_e32 v20, v43
	v_cvt_f32_i32_e32 v19, v44
	v_cvt_f32_i32_e32 v18, v45
	v_cvt_f32_i32_e32 v17, v46
	v_cvt_f32_i32_e32 v16, v47
	v_cvt_f32_i32_e32 v15, v48
	v_cvt_f32_i32_e32 v14, v49
	v_cvt_f32_i32_e32 v13, v50
	v_cvt_f32_i32_e32 v12, v51
	v_cvt_f32_i32_e32 v11, v52
	v_cvt_f32_i32_e32 v10, v53
	v_cvt_f32_i32_e32 v9, v54
	v_cvt_f32_i32_e32 v8, v55
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v6, v57
	v_cvt_f32_i32_e32 v5, v58
	v_cvt_f32_i32_e32 v4, v59
	v_cvt_f32_i32_e32 v3, v60
	v_cvt_f32_i32_e32 v2, v61
	v_cvt_f32_i32_e32 v1, v62
	v_cvt_f32_i32_e32 v0, v63
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge30
	.loc	1 827 22                        ; ragged.py:827:22
	v_mul_lo_u32 v0, s11, v84
	.loc	1 707 36                        ; ragged.py:707:36
	v_and_or_b32 v3, v100, 1, v99
	.loc	1 827 22                        ; ragged.py:827:22
	s_mul_i32 s1, s9, s11
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 707 18 is_stmt 1              ; ragged.py:707:18
	v_or_b32_e32 v1, s33, v3
	.loc	1 707 36 is_stmt 0              ; ragged.py:707:36
	v_or_b32_e32 v4, 0x80, v3
	.loc	1 827 22 is_stmt 1              ; ragged.py:827:22
	v_add3_u32 v0, s1, s33, v0
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v16, 6, v3
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s11, v1
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v2, s33, v4
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v17, 4, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v22, v0, v18, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s5, s0
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v15, 8, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v21, 0x80000000, v1, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v14, 10, v3
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e32 vcc_lo, s11, v2
	.loc	1 827 22                        ; ragged.py:827:22
	v_mad_u64_u32 v[1:2], null, s11, 48, v[0:1]
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	buffer_store_b32 v130, v21, s[20:23], 0 offen
	v_add_lshl_u32 v2, v0, v17, 2
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_add_lshl_u32 v22, v0, v16, 2
	v_add_lshl_u32 v23, v0, v15, 2
	v_add_lshl_u32 v24, v0, v14, 2
	.loc	1 707 36 is_stmt 1              ; ragged.py:707:36
	v_or_b32_e32 v12, 14, v3
	v_or_b32_e32 v13, 12, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	buffer_store_b32 v129, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	v_cndmask_b32_e64 v23, 0x80000000, v24, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v11, 0x82, v3
	v_or_b32_e32 v10, 0x84, v3
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v128, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v0, v13, 2
	s_clause 0x2
	buffer_store_b32 v127, v21, s[20:23], 0 offen
	buffer_store_b32 v126, v22, s[20:23], 0 offen
	buffer_store_b32 v125, v23, s[20:23], 0 offen
	v_add_lshl_u32 v21, v0, v12, 2
	v_add_lshl_u32 v22, v0, v4, 2
	v_add_lshl_u32 v23, v0, v11, 2
	v_add_lshl_u32 v24, v0, v10, 2
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v9, 0x86, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s5, vcc_lo
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v8, 0x88, v3
	v_or_b32_e32 v7, 0x8a, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v6, 0x8c, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v5, 0x8e, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v24, 0x80000000, v24, s1
	s_clause 0x4
	buffer_store_b32 v124, v2, s[20:23], 0 offen
	buffer_store_b32 v123, v21, s[20:23], 0 offen
	buffer_store_b32 v122, v22, s[20:23], 0 offen
	buffer_store_b32 v121, v23, s[20:23], 0 offen
	buffer_store_b32 v120, v24, s[20:23], 0 offen
	v_add_lshl_u32 v2, v0, v9, 2
	v_add_lshl_u32 v21, v0, v8, 2
	v_add_lshl_u32 v22, v0, v7, 2
	v_add_lshl_u32 v23, v0, v6, 2
	.loc	1 827 22 is_stmt 0              ; ragged.py:827:22
	v_lshl_add_u32 v19, s11, 4, v0
	v_lshl_add_u32 v20, s11, 5, v0
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v0, v0, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x4
	buffer_store_b32 v119, v2, s[20:23], 0 offen
	buffer_store_b32 v118, v21, s[20:23], 0 offen
	buffer_store_b32 v117, v22, s[20:23], 0 offen
	buffer_store_b32 v116, v23, s[20:23], 0 offen
	buffer_store_b32 v115, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v3, 2
	v_add_lshl_u32 v2, v19, v18, 2
	v_add_lshl_u32 v21, v19, v17, 2
	.loc	1 825 20 is_stmt 1              ; ragged.py:825:20
	s_and_b32 s1, s4, s0
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v22, v19, v16, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_add_lshl_u32 v23, v19, v15, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	s_clause 0x2
	buffer_store_b32 v114, v0, s[20:23], 0 offen
	buffer_store_b32 v113, v2, s[20:23], 0 offen
	buffer_store_b32 v112, v21, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v14, 2
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v23, s1
	buffer_store_b32 v111, v22, s[20:23], 0 offen
	v_add_lshl_u32 v22, v19, v12, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	buffer_store_b32 v110, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s4, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v109, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x2
	buffer_store_b32 v108, v21, s[20:23], 0 offen
	buffer_store_b32 v107, v22, s[20:23], 0 offen
	buffer_store_b32 v106, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v21, v19, v9, 2
	v_add_lshl_u32 v22, v19, v8, 2
	v_add_lshl_u32 v23, v19, v7, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_store_b32 v105, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v21, s1
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	buffer_store_b32 v104, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v6, 2
	s_clause 0x2
	buffer_store_b32 v103, v2, s[20:23], 0 offen
	buffer_store_b32 v102, v21, s[20:23], 0 offen
	buffer_store_b32 v101, v22, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v5, 2
	v_add_lshl_u32 v19, v20, v3, 2
	v_add_lshl_u32 v21, v20, v18, 2
	v_add_lshl_u32 v22, v20, v17, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s8, s0
	s_and_b32 s0, s7, s0
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	s_clause 0x4
	buffer_store_b32 v98, v0, s[20:23], 0 offen
	buffer_store_b32 v97, v2, s[20:23], 0 offen
	buffer_store_b32 v96, v19, s[20:23], 0 offen
	buffer_store_b32 v95, v21, s[20:23], 0 offen
	buffer_store_b32 v94, v22, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_add_lshl_u32 v2, v20, v15, 2
	v_add_lshl_u32 v19, v20, v14, 2
	v_add_lshl_u32 v21, v20, v13, 2
	v_add_lshl_u32 v22, v20, v12, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	s_clause 0x4
	buffer_store_b32 v93, v0, s[20:23], 0 offen
	buffer_store_b32 v92, v2, s[20:23], 0 offen
	buffer_store_b32 v91, v19, s[20:23], 0 offen
	buffer_store_b32 v90, v21, s[20:23], 0 offen
	buffer_store_b32 v89, v22, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_add_lshl_u32 v2, v20, v11, 2
	v_add_lshl_u32 v19, v20, v10, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s8, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v21, v20, v9, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v22, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	s_clause 0x2
	buffer_store_b32 v88, v0, s[20:23], 0 offen
	buffer_store_b32 v87, v2, s[20:23], 0 offen
	buffer_store_b32 v86, v19, s[20:23], 0 offen
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v0, 0x80000000, v22, s1
	v_add_lshl_u32 v19, v20, v6, 2
	v_add_lshl_u32 v20, v20, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_clause 0x1
	buffer_store_b32 v85, v21, s[20:23], 0 offen
	buffer_store_b32 v83, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v3, 2
	v_cndmask_b32_e64 v3, 0x80000000, v19, s1
	v_cndmask_b32_e64 v19, 0x80000000, v20, s1
	buffer_store_b32 v82, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	s_clause 0x2
	buffer_store_b32 v81, v3, s[20:23], 0 offen
	buffer_store_b32 v80, v19, s[20:23], 0 offen
	buffer_store_b32 v79, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v16, 2
	v_add_lshl_u32 v15, v1, v15, 2
	v_add_lshl_u32 v14, v1, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_store_b32 v78, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v3, s0
	v_cndmask_b32_e64 v3, 0x80000000, v15, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	buffer_store_b32 v77, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v13, 2
	s_clause 0x2
	buffer_store_b32 v76, v2, s[20:23], 0 offen
	buffer_store_b32 v75, v3, s[20:23], 0 offen
	buffer_store_b32 v74, v14, s[20:23], 0 offen
	v_add_lshl_u32 v2, v1, v12, 2
	v_add_lshl_u32 v3, v1, v4, 2
	v_add_lshl_u32 v4, v1, v11, 2
	v_add_lshl_u32 v10, v1, v10, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 vcc_lo, s7, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	s_clause 0x4
	buffer_store_b32 v73, v0, s[20:23], 0 offen
	buffer_store_b32 v72, v2, s[20:23], 0 offen
	buffer_store_b32 v71, v3, s[20:23], 0 offen
	buffer_store_b32 v70, v4, s[20:23], 0 offen
	buffer_store_b32 v69, v10, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v9, 2
	v_add_lshl_u32 v2, v1, v8, 2
	v_add_lshl_u32 v3, v1, v7, 2
	v_add_lshl_u32 v4, v1, v6, 2
	v_add_lshl_u32 v1, v1, v5, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	s_clause 0x4
	buffer_store_b32 v68, v0, s[20:23], 0 offen
	buffer_store_b32 v67, v2, s[20:23], 0 offen
	buffer_store_b32 v66, v3, s[20:23], 0 offen
	buffer_store_b32 v65, v4, s[20:23], 0 offen
	buffer_store_b32 v64, v1, s[20:23], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 237
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 237
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8384
; TotalNumSgprs: 76
; NumVgprs: 237
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 76
; NumVGPRsForWavesPerEU: 237
; Occupancy: 6
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
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
	.short	698                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	699                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     237
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
