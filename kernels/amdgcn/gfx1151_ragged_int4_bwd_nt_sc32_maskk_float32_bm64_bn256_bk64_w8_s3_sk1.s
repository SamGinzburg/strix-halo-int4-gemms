	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 674 0                         ; ragged.py:674:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.loc	1 701 20 prologue_end           ; ragged.py:701:20
	s_abs_i32 s8, s2
	.loc	1 706 36                        ; ragged.py:706:36
	v_and_b32_e32 v86, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:698:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s22, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:699:21 ]
	s_add_i32 s5, s23, 0xff
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
	s_ashr_i32 s20, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s10, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 700 27 is_stmt 1              ; ragged.py:700:27
	s_mul_i32 s4, s10, s20
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
	s_sub_i32 s11, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s11, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s8, s10
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
	s_sub_i32 s11, s2, s4
	.loc	1 703 17                        ; ragged.py:703:17
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s7, s11
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s7, s9
	s_xor_b32 s12, s11, s10
	s_mul_i32 s13, s9, s8
	s_ashr_i32 s21, s12, 31
	s_sub_i32 s7, s7, s13
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s7, s8
	s_cmp_ge_u32 s7, s8
	.loc	1 780 39                        ; ragged.py:780:39
	s_mul_i32 s39, s6, s22
	.loc	1 703 17                        ; ragged.py:703:17
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s7, s8
	s_cselect_b32 s7, s12, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_xor_b32 s38, s7, s21
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s7, s6, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s9, s38, s21
	.loc	1 710 19                        ; ragged.py:710:19
	s_lshl_b64 s[12:13], s[6:7], 2
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s8, s9, s10
	.loc	1 706 18                        ; ragged.py:706:18
	s_lshl_b32 s28, s9, 6
	.loc	1 704 17                        ; ragged.py:704:17
	s_sub_i32 s8, s11, s8
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s12
	s_addc_u32 s5, s5, s13
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v2, s28, v86
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s29, s[4:5], 0x0
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s5, s22, v2
	v_cmp_gt_i32_e64 s4, s22, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s11, s22, v4
	v_cmp_gt_i32_e64 s7, s22, v5
	.loc	1 711 27                        ; ragged.py:711:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s30, s29, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 771 19                        ; ragged.py:771:19
	s_cmp_gt_i32 s30, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge38_crit_edge
	.loc	1 827 22                        ; ragged.py:827:22
	s_add_i32 s26, s28, s39
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr26
.LBB0_3:                                ; %Flow253
	s_load_b64 s[24:25], s[0:1], 0x28
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v92, 0x70, v1
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
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
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_mov_b32_e32 v131, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s27, s8, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	.loc	1 769 28 is_stmt 1              ; ragged.py:769:28
	v_lshlrev_b32_e32 v2, 2, v0
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x38
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 711 26                        ; ragged.py:711:26
	s_lshr_b32 s0, s30, 31
	v_bfe_i32 v4, v0, 5, 1
	s_add_i32 s30, s30, s0
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v65, 12, v2
	s_ashr_i32 s33, s30, 1
	.loc	1 790 37                        ; ragged.py:790:37
	s_and_b32 s1, s29, 0x80000001
	.loc	1 774 23                        ; ragged.py:774:23
	s_lshl_b32 s50, s3, 4
	.loc	1 711 26                        ; ragged.py:711:26
	s_sub_i32 s35, 0, s33
	.loc	1 790 37                        ; ragged.py:790:37
	s_cmp_eq_u32 s1, 1
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v4, 0x88, v4
	s_cselect_b32 s48, -1, 0
	.loc	1 790 67 is_stmt 0              ; ragged.py:790:67
	s_add_i32 s3, s33, -1
	v_dual_mov_b32 v151, v65 :: v_dual_and_b32 v2, 0x37c, v2
	v_mov_b32_e32 v131, 0
	s_cmp_lt_i32 s50, 16
	.loc	1 706 36 is_stmt 1              ; ragged.py:706:36
	v_lshrrev_b32_e32 v1, 2, v0
	s_cselect_b32 s40, -1, 0
	s_add_i32 s26, s28, s39
	v_xor_b32_e32 v2, v4, v2
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v4, s26, v86
	.loc	1 706 18 is_stmt 0              ; ragged.py:706:18
	v_or_b32_e32 v3, s28, v1
	.loc	1 771 19 is_stmt 1              ; ragged.py:771:19
	s_mul_i32 s20, s20, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v9, 16, v4
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v10, 32, v4
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v11, 48, v4
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s1, s22, v3
	.loc	1 816 37                        ; ragged.py:816:37
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s22, s6, s9
	v_mul_lo_u32 v135, v4, s9
	v_mul_lo_u32 v136, v9, s9
	v_mul_lo_u32 v137, v10, s9
	v_mul_lo_u32 v138, v11, s9
	.loc	1 771 19                        ; ragged.py:771:19
	s_sub_i32 s9, s21, s20
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v3, 4, v0
	s_sub_i32 s9, s9, s38
	v_dual_mov_b32 v121, 0 :: v_dual_and_b32 v4, 0xf0, v0
	v_dual_mov_b32 v122, 0 :: v_dual_lshlrev_b32 v9, 5, v0
	s_mul_i32 s10, s10, s9
	s_mul_i32 s6, s23, s6
	s_lshl_b32 s9, s10, 8
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v3, 0x70, v3
	v_bfe_i32 v5, v0, 3, 1
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v11, 2, v4
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v9, 32, v9
	s_add_i32 s9, s9, s6
	s_lshl_b32 s6, s38, 6
	s_lshl_b32 s2, s2, 8
	v_add3_u32 v1, s39, s6, v1
	v_and_or_b32 v134, 0x88, v5, v3
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v10, 1, v0
	v_add3_u32 v9, 0, v11, v9
	v_add3_u32 v11, s9, s2, v0
	s_lshl_b32 s2, s21, 6
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v133, s27, v0
	.loc	1 771 19                        ; ragged.py:771:19
	v_subrev_nc_u32_e32 v1, s2, v1
	v_xor_b32_e32 v3, 8, v134
	v_or_b32_e32 v5, 0x300, v0
	v_or_b32_e32 v6, 0x700, v0
	v_or_b32_e32 v7, 0xb00, v0
	v_or_b32_e32 v8, 0xf00, v0
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v12, 0, v92
	v_dual_mov_b32 v117, 0 :: v_dual_and_b32 v10, 28, v10
	v_dual_mov_b32 v115, 0 :: v_dual_lshlrev_b32 v4, 1, v4
	v_cndmask_b32_e64 v13, 0, 1, s40
	v_mul_lo_u32 v139, s8, v11
	v_mad_u64_u32 v[66:67], null, s8, v1, v[65:66]
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s23, v133
	.loc	1 771 19                        ; ragged.py:771:19
	v_subrev_nc_u32_e32 v140, s33, v65
	v_cmp_ne_u32_e64 s6, 1, v13
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v141, 0, v2
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v142, 0, v3
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v143, 0, v0
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v144, 0, v5
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v145, 0, v6
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v146, 0, v7
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v147, 0, v8
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v148, v12, v86
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v149, v9, v10
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v150, 0, v4
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_mov_b32_e32 v67, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s34, 0
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_and_b32 s45, s19, 0xffff
	s_lshr_b32 s49, s3, 4
	s_add_i32 s50, s50, -16
	s_mov_b32 s40, s16
	s_mov_b32 s41, s17
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s44, s18
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	s_mov_b32 s51, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v33, v135, s34, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_add_i32 s2, s34, s22
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v34, v136, s34, 1
	v_add_lshl_u32 v35, v137, s34, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_mul_i32 s2, s2, s23
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v36, v138, s34, 1
	.loc	1 815 40                        ; ragged.py:815:40
	v_add_lshl_u32 v37, v133, s2, 1
	.loc	1 808 40                        ; ragged.py:808:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s11
	v_cndmask_b32_e64 v36, 0x80000000, v36, s7
	.loc	1 815 40                        ; ragged.py:815:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	.loc	1 808 40                        ; ragged.py:808:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[40:43], 0 offen
	buffer_load_u16 v34, v34, s[40:43], 0 offen
	buffer_load_u16 v35, v35, s[40:43], 0 offen
	buffer_load_u16 v36, v36, s[40:43], 0 offen
	.loc	1 815 40                        ; ragged.py:815:40
	buffer_load_u16 v37, v37, s[44:47], 0 offen
	.loc	1 820 21                        ; ragged.py:820:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 771 19                        ; ragged.py:771:19
	v_add_nc_u32_e32 v151, 16, v151
	.loc	1 822 17                        ; ragged.py:822:17
	s_add_i32 s2, s34, 1
	.loc	1 771 19                        ; ragged.py:771:19
	s_add_i32 s35, s35, 16
	s_add_i32 s51, s51, 16
	s_cmp_lg_u32 s34, s49
	s_mov_b32 s34, s2
	.loc	1 808 40                        ; ragged.py:808:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 813 21                        ; ragged.py:813:21
	v_dual_mul_f32 v54, v166, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v40, v181, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v45, v176, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v43, v178, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v164, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v38, v183, v33 :: v_dual_add_nc_u32 v139, 16, v139
	v_dual_mul_f32 v39, v182, v33 :: v_dual_add_nc_u32 v66, 16, v66
	v_dual_mul_f32 v41, v180, v33 :: v_dual_add_nc_u32 v140, 16, v140
	v_dual_mul_f32 v42, v179, v33 :: v_dual_mul_f32 v55, v165, v34
	v_dual_mul_f32 v44, v177, v33 :: v_dual_mul_f32 v53, v167, v34
	v_dual_mul_f32 v46, v175, v33 :: v_dual_mul_f32 v59, v161, v34
	v_dual_mul_f32 v47, v174, v33 :: v_dual_mul_f32 v60, v160, v34
	v_dual_mul_f32 v48, v173, v33 :: v_dual_mul_f32 v57, v163, v34
	v_dual_mul_f32 v49, v172, v33 :: v_dual_mul_f32 v58, v162, v34
	v_dual_mul_f32 v50, v171, v33 :: v_dual_mul_f32 v63, v157, v34
	v_dual_mul_f32 v51, v170, v33 :: v_dual_mul_f32 v64, v156, v34
	v_dual_mul_f32 v52, v169, v33 :: v_dual_mul_f32 v61, v159, v34
	v_dual_mul_f32 v33, v168, v33 :: v_dual_mul_f32 v62, v158, v34
	v_dual_mul_f32 v155, v155, v34 :: v_dual_mul_f32 v32, v32, v35
	v_dual_mul_f32 v154, v154, v34 :: v_dual_mul_f32 v31, v31, v35
	v_dual_mul_f32 v153, v153, v34 :: v_dual_mul_f32 v30, v30, v35
	v_dual_mul_f32 v34, v152, v34 :: v_dual_mul_f32 v29, v29, v35
	v_dual_mul_f32 v152, v28, v35 :: v_dual_mul_f32 v15, v15, v36
	v_mul_f32_e32 v156, v27, v35
	v_dual_mul_f32 v157, v26, v35 :: v_dual_mul_f32 v16, v16, v36
	v_dual_mul_f32 v158, v25, v35 :: v_dual_mul_f32 v167, v12, v36
	v_dual_mul_f32 v159, v24, v35 :: v_dual_mul_f32 v166, v13, v36
	v_dual_mul_f32 v160, v23, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v161, v22, v35 :: v_dual_mul_f32 v168, v11, v36
	v_dual_mul_f32 v162, v21, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v163, v20, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v164, v19, v35 :: v_dual_mul_f32 v5, v5, v36
	v_dual_mul_f32 v165, v18, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v35, v17, v35 :: v_dual_mul_f32 v6, v6, v36
	.loc	1 820 21                        ; ragged.py:820:21
	ds_store_b32 v149, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v150
	ds_load_b128 v[21:24], v150 offset:16
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 820 21                        ; ragged.py:820:21
	ds_load_b128 v[11:14], v150 offset:512
	ds_load_b128 v[25:28], v150 offset:528
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v4, v4, v36
	v_mul_f32_e32 v3, v3, v36
	v_mul_f32_e32 v2, v2, v36
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v1, v1, v36 :: v_dual_fmac_f32 v130, v40, v19
	.loc	1 821 17                        ; ragged.py:821:17
	v_dual_fmac_f32 v132, v38, v17 :: v_dual_fmac_f32 v131, v39, v18
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v129, v41, v20 :: v_dual_fmac_f32 v128, v42, v21
	v_dual_fmac_f32 v127, v43, v22 :: v_dual_fmac_f32 v126, v44, v23
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v125, v45, v24 :: v_dual_fmac_f32 v124, v46, v11
	v_dual_fmac_f32 v123, v47, v12 :: v_dual_fmac_f32 v122, v48, v13
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v121, v49, v14 :: v_dual_fmac_f32 v120, v50, v25
	v_dual_fmac_f32 v119, v51, v26 :: v_dual_fmac_f32 v118, v52, v27
	v_fmac_f32_e32 v117, v33, v28
	v_dual_fmac_f32 v116, v53, v17 :: v_dual_fmac_f32 v115, v54, v18
	v_dual_fmac_f32 v114, v55, v19 :: v_dual_fmac_f32 v113, v56, v20
	v_dual_fmac_f32 v112, v57, v21 :: v_dual_fmac_f32 v111, v58, v22
	v_dual_fmac_f32 v110, v59, v23 :: v_dual_fmac_f32 v109, v60, v24
	v_dual_fmac_f32 v108, v61, v11 :: v_dual_fmac_f32 v107, v62, v12
	v_dual_fmac_f32 v106, v63, v13 :: v_dual_fmac_f32 v105, v64, v14
	v_dual_fmac_f32 v104, v155, v25 :: v_dual_fmac_f32 v103, v154, v26
	v_dual_fmac_f32 v102, v153, v27 :: v_dual_fmac_f32 v101, v34, v28
	v_dual_fmac_f32 v100, v32, v17 :: v_dual_fmac_f32 v99, v31, v18
	v_dual_fmac_f32 v98, v30, v19 :: v_dual_fmac_f32 v97, v29, v20
	v_dual_fmac_f32 v96, v152, v21 :: v_dual_fmac_f32 v93, v158, v24
	v_dual_fmac_f32 v95, v156, v22 :: v_dual_fmac_f32 v94, v157, v23
	v_dual_fmac_f32 v91, v159, v11 :: v_dual_fmac_f32 v90, v160, v12
	v_dual_fmac_f32 v89, v161, v13 :: v_dual_fmac_f32 v88, v162, v14
	v_dual_fmac_f32 v87, v163, v25 :: v_dual_fmac_f32 v84, v165, v27
	v_dual_fmac_f32 v85, v164, v26 :: v_dual_fmac_f32 v80, v37, v19
	v_dual_fmac_f32 v83, v35, v28 :: v_dual_fmac_f32 v82, v16, v17
	v_dual_fmac_f32 v81, v15, v18 :: v_dual_fmac_f32 v76, v10, v23
	v_dual_fmac_f32 v79, v166, v20 :: v_dual_fmac_f32 v78, v167, v21
	v_dual_fmac_f32 v77, v168, v22 :: v_dual_fmac_f32 v72, v6, v13
	v_dual_fmac_f32 v75, v9, v24 :: v_dual_fmac_f32 v74, v8, v11
	v_dual_fmac_f32 v73, v7, v12 :: v_dual_fmac_f32 v70, v4, v25
	v_dual_fmac_f32 v71, v5, v14 :: v_dual_fmac_f32 v68, v2, v27
	v_fmac_f32_e32 v69, v3, v26
	v_fmac_f32_e32 v67, v1, v28
	.loc	1 771 19                        ; ragged.py:771:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
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
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	.loc	1 775 23 is_stmt 1              ; ragged.py:775:23
	s_and_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v1, 0
	s_mov_b32 s38, s50
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 776 26 is_stmt 1              ; ragged.py:776:26
	s_add_i32 s2, s51, s38
	s_add_i32 s17, s35, s38
	s_add_i32 s9, s2, 16
	s_add_i32 s12, s2, 17
	s_add_i32 s13, s2, 18
	s_add_i32 s14, s2, 19
	s_add_i32 s15, s2, 20
	s_add_i32 s16, s2, 21
	s_add_i32 s18, s2, 22
	s_add_i32 s19, s2, 23
	s_add_i32 s20, s2, 24
	s_add_i32 s21, s2, 25
	s_add_i32 s39, s2, 26
	s_add_i32 s52, s2, 27
	s_add_i32 s53, s2, 28
	s_add_i32 s54, s2, 29
	s_add_i32 s55, s2, 30
	s_add_i32 s56, s2, 31
	.loc	1 789 35                        ; ragged.py:789:35
	s_cmp_lt_i32 s9, s33
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v153, s38, v151
	.loc	1 789 35                        ; ragged.py:789:35
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s12, s33
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v152, s38, v140
	.loc	1 789 35                        ; ragged.py:789:35
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s13, s33
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v154, 16, v153
	.loc	1 789 35                        ; ragged.py:789:35
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s14, s33
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v155, 17, v153
	.loc	1 789 35                        ; ragged.py:789:35
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s15, s33
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v156, 18, v153
	.loc	1 789 35                        ; ragged.py:789:35
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s16, s33
	v_add_nc_u32_e32 v153, 19, v153
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s18, s33
	v_cmp_gt_i32_e32 vcc_lo, s33, v154
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s19, s33
	v_cmp_gt_i32_e64 s8, s33, v153
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s20, s33
	v_cmp_gt_i32_e64 s2, s33, v155
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s21, s33
	v_cmp_gt_i32_e64 s3, s33, v156
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s39, s33
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s52, s33
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s53, s33
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s54, s33
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s55, s33
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s56, s33
	s_cselect_b32 s81, -1, 0
	.loc	1 775 23                        ; ragged.py:775:23
	s_add_i32 s52, s38, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 789 59                        ; ragged.py:789:59
	v_add_nc_u32_e32 v153, s52, v65
	v_cmp_gt_i32_e64 s9, 16, v153
	.loc	1 789 34 is_stmt 0              ; ragged.py:789:34
	s_and_b32 s18, vcc_lo, s9
	s_and_b32 s19, s2, s9
	s_and_b32 s20, s3, s9
	s_and_b32 s9, s8, s9
	.loc	1 790 60 is_stmt 1              ; ragged.py:790:60
	s_cmpk_eq_i32 s17, 0xffef
	v_cmp_eq_u32_e32 vcc_lo, 0xffffffef, v152
	s_cselect_b32 s21, -1, 0
	s_cmpk_eq_i32 s17, 0xffee
	v_cmp_eq_u32_e64 s2, 0xffffffee, v152
	s_cselect_b32 s54, -1, 0
	s_cmpk_eq_i32 s17, 0xffed
	v_cmp_eq_u32_e64 s3, 0xffffffed, v152
	s_cselect_b32 s55, -1, 0
	s_cmpk_eq_i32 s17, 0xffec
	v_cmp_eq_u32_e64 s8, 0xffffffec, v152
	s_cselect_b32 s56, -1, 0
	s_cmpk_eq_i32 s17, 0xffeb
	v_add_nc_u32_e32 v152, s38, v66
	s_cselect_b32 s57, -1, 0
	s_cmpk_eq_i32 s17, 0xffea
	s_cselect_b32 s58, -1, 0
	s_cmpk_eq_i32 s17, 0xffe9
	v_add_nc_u32_e32 v153, 16, v152
	s_cselect_b32 s59, -1, 0
	s_cmpk_eq_i32 s17, 0xffe8
	v_add_nc_u32_e32 v155, 18, v152
	s_cselect_b32 s60, -1, 0
	s_cmpk_eq_i32 s17, 0xffe7
	s_cselect_b32 s61, -1, 0
	s_cmpk_eq_i32 s17, 0xffe6
	s_cselect_b32 s62, -1, 0
	s_cmpk_eq_i32 s17, 0xffe5
	s_cselect_b32 s63, -1, 0
	s_cmpk_eq_i32 s17, 0xffe4
	s_cselect_b32 s64, -1, 0
	s_cmpk_eq_i32 s17, 0xffe3
	s_cselect_b32 s65, -1, 0
	s_cmpk_eq_i32 s17, 0xffe2
	s_cselect_b32 s66, -1, 0
	s_cmpk_eq_i32 s17, 0xffe1
	s_cselect_b32 s67, -1, 0
	s_cmpk_eq_i32 s17, 0xffe0
	s_cselect_b32 s17, -1, 0
	.loc	1 790 36 is_stmt 0              ; ragged.py:790:36
	s_and_b32 s69, s48, vcc_lo
	.loc	1 791 70 is_stmt 1              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s18
	.loc	1 791 38 is_stmt 0              ; ragged.py:791:38
	v_dual_cndmask_b32 v153, 0x80000000, v153 :: v_dual_add_nc_u32 v154, 17, v152
	v_add_nc_u32_e32 v152, 19, v152
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s72, s48, s8
	.loc	1 791 70                        ; ragged.py:791:70
	s_and_b32 s8, s1, s9
	.loc	1 790 36                        ; ragged.py:790:36
	s_and_b32 s70, s48, s2
	.loc	1 791 70                        ; ragged.py:791:70
	s_and_b32 s2, s1, s19
	.loc	1 791 38 is_stmt 0              ; ragged.py:791:38
	v_cndmask_b32_e64 v152, 0x80000000, v152, s8
	buffer_load_u8 v156, v153, s[28:31], 0 offen
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s71, s48, s3
	.loc	1 791 70                        ; ragged.py:791:70
	s_and_b32 s3, s1, s20
	.loc	1 790 36                        ; ragged.py:790:36
	s_and_b32 s53, s48, s21
	.loc	1 791 38                        ; ragged.py:791:38
	buffer_load_u8 v157, v152, s[28:31], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v154, s2
	v_add_nc_u32_e32 v152, s38, v139
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 s21, s0, s10
	s_and_b32 vcc_lo, s0, s81
	s_and_b32 s20, s0, s12
	.loc	1 791 38                        ; ragged.py:791:38
	buffer_load_u8 v154, v153, s[28:31], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v155, s3
	v_add_nc_u32_e32 v158, 17, v152
	v_add_nc_u32_e32 v159, 18, v152
	v_add_nc_u32_e32 v160, 19, v152
	v_add_nc_u32_e32 v161, 20, v152
	buffer_load_u8 v155, v153, s[28:31], 0 offen
	v_add_nc_u32_e32 v153, 16, v152
	v_add_nc_u32_e32 v162, 21, v152
	v_add_nc_u32_e32 v163, 22, v152
	v_add_nc_u32_e32 v164, 23, v152
	v_add_nc_u32_e32 v165, 24, v152
	v_add_nc_u32_e32 v166, 25, v152
	v_add_nc_u32_e32 v167, 26, v152
	v_add_nc_u32_e32 v168, 27, v152
	v_add_nc_u32_e32 v169, 28, v152
	v_add_nc_u32_e32 v170, 29, v152
	v_add_nc_u32_e32 v171, 30, v152
	.loc	1 792 38                        ; ragged.py:792:38
	v_add_nc_u32_e32 v152, 31, v152
	v_cndmask_b32_e64 v153, 0x80000000, v153, s21
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 s3, s0, s39
	.loc	1 792 38                        ; ragged.py:792:38
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	v_cndmask_b32_e32 v152, 0x80000000, v152, vcc_lo
	buffer_load_u8 v172, v153, s[36:39], 0 offen
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 s19, s0, s13
	s_and_b32 s18, s0, s14
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s68, s48, s17
	.loc	1 792 38                        ; ragged.py:792:38
	buffer_load_u8 v181, v152, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v158, s20
	.loc	1 792 70 is_stmt 0              ; ragged.py:792:70
	s_and_b32 s17, s0, s15
	s_and_b32 s16, s0, s16
	s_and_b32 s15, s0, s73
	s_and_b32 s14, s0, s74
	.loc	1 792 38                        ; ragged.py:792:38
	buffer_load_u8 v173, v153, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v159, s19
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 s13, s0, s75
	s_and_b32 s12, s0, s76
	s_and_b32 s10, s0, s77
	s_and_b32 s9, s0, s78
	.loc	1 792 38                        ; ragged.py:792:38
	buffer_load_u8 v174, v153, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v160, s18
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 s8, s0, s79
	s_and_b32 s2, s0, s80
	.loc	1 790 36 is_stmt 1              ; ragged.py:790:36
	s_and_b32 s57, s48, s57
	s_and_b32 s58, s48, s58
	.loc	1 792 38                        ; ragged.py:792:38
	buffer_load_u8 v175, v153, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v161, s17
	.loc	1 790 36                        ; ragged.py:790:36
	s_and_b32 s54, s48, s54
	s_and_b32 s55, s48, s55
	s_and_b32 s56, s48, s56
	s_and_b32 s59, s48, s59
	.loc	1 792 38                        ; ragged.py:792:38
	buffer_load_u8 v176, v153, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v162, s16
	.loc	1 790 36                        ; ragged.py:790:36
	s_and_b32 s60, s48, s60
	s_and_b32 s61, s48, s61
	s_and_b32 s62, s48, s62
	s_and_b32 s63, s48, s63
	.loc	1 792 38                        ; ragged.py:792:38
	buffer_load_u8 v162, v153, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v163, s15
	.loc	1 790 36                        ; ragged.py:790:36
	s_and_b32 s64, s48, s64
	s_and_b32 s65, s48, s65
	s_and_b32 s66, s48, s66
	s_and_b32 s67, s48, s67
	.loc	1 792 38                        ; ragged.py:792:38
	buffer_load_u8 v163, v153, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v164, s14
	.loc	1 775 23                        ; ragged.py:775:23
	s_cmp_lt_i32 s52, 0
	.loc	1 792 38                        ; ragged.py:792:38
	buffer_load_u8 v164, v153, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v165, s13
	buffer_load_u8 v165, v153, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v166, s12
	buffer_load_u8 v166, v153, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v167, s3
	buffer_load_u8 v167, v153, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v168, s10
	buffer_load_u8 v177, v153, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v169, s9
	buffer_load_u8 v178, v153, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v170, s8
	buffer_load_u8 v179, v153, s[36:39], 0 offen
	v_cndmask_b32_e64 v153, 0x80000000, v171, s2
	buffer_load_u8 v180, v153, s[36:39], 0 offen
	.loc	1 793 38                        ; ragged.py:793:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s38, s52
	.loc	1 793 66 is_stmt 0              ; ragged.py:793:66
	s_waitcnt vmcnt(19)
	v_and_b16 v152.l, v156.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v153.h, v157.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 793 38                        ; ragged.py:793:38
	v_cndmask_b16 v152.l, v156.l, v152.l, s69
	v_cndmask_b16 v153.h, v157.l, v153.h, s72
	.loc	1 793 66                        ; ragged.py:793:66
	s_waitcnt vmcnt(17)
	v_and_b16 v152.h, v154.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 793 38                        ; ragged.py:793:38
	v_lshlrev_b16 v153.h, 8, v153.h
	v_cndmask_b16 v152.h, v154.l, v152.h, s70
	.loc	1 793 66                        ; ragged.py:793:66
	s_waitcnt vmcnt(16)
	v_and_b16 v153.l, v155.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 793 38                        ; ragged.py:793:38
	v_lshlrev_b16 v152.h, 8, v152.h
	v_cndmask_b16 v153.l, v155.l, v153.l, s71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v153.h, v153.l, v153.h
	v_or_b16 v153.l, v152.l, v152.h
	ds_store_b32 v141, v153
	s_waitcnt vmcnt(15) lgkmcnt(0)
	.loc	1 794 66 is_stmt 1              ; ragged.py:794:66
	v_and_b16 v154.l, v172.l, 15
	.loc	1 793 38                        ; ragged.py:793:38
	s_barrier
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(14)
	v_and_b16 v161.h, v181.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 794 38 is_stmt 0              ; ragged.py:794:38
	v_cndmask_b16 v168.l, v172.l, v154.l, s53
	s_waitcnt vmcnt(11)
	v_cndmask_b16 v175.h, v181.l, v161.h, s68
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v154.h, v173.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v168.h, v173.l, v154.h, s54
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v155.l, v174.l, 15
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v169.l, v174.l, v155.l, s55
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v155.h, v175.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v169.h, v175.l, v155.h, s56
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(10)
	v_and_b16 v156.l, v176.l, 15
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v170.l, v176.l, v156.l, s57
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(9)
	v_and_b16 v156.h, v162.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v170.h, v162.l, v156.h, s58
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(8)
	v_and_b16 v157.l, v163.l, 15
	.loc	1 793 38 is_stmt 1              ; ragged.py:793:38
	v_add_nc_u32_e32 v156, 0, v134
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v171.l, v163.l, v157.l, s59
	.loc	1 794 66 is_stmt 0              ; ragged.py:794:66
	s_waitcnt vmcnt(7)
	v_and_b16 v157.h, v164.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v171.h, v164.l, v157.h, s60
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(6)
	v_and_b16 v158.l, v165.l, 15
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v172.l, v165.l, v158.l, s61
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(5)
	v_and_b16 v158.h, v166.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v172.h, v166.l, v158.h, s62
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(4)
	v_and_b16 v159.l, v167.l, 15
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v173.l, v167.l, v159.l, s63
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(3)
	v_and_b16 v159.h, v177.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v173.h, v177.l, v159.h, s64
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(2)
	v_and_b16 v160.l, v178.l, 15
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v174.l, v178.l, v160.l, s65
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(1)
	v_and_b16 v160.h, v179.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v174.h, v179.l, v160.h, s66
	.loc	1 794 66                        ; ragged.py:794:66
	s_waitcnt vmcnt(0)
	v_and_b16 v161.l, v180.l, 15
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v175.l, v180.l, v161.l, s67
	.loc	1 793 38 is_stmt 1              ; ragged.py:793:38
	ds_load_2addr_b64 v[152:155], v156 offset1:32
	ds_load_2addr_b64 v[156:159], v156 offset0:64 offset1:96
	ds_load_2addr_b64 v[160:163], v142 offset1:32
	ds_load_2addr_b64 v[164:167], v142 offset0:64 offset1:96
	.loc	1 794 38                        ; ragged.py:794:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v143, v168
	ds_store_b8_d16_hi v143, v168 offset:256
	ds_store_b8 v143, v169 offset:512
	ds_store_b8_d16_hi v144, v169
	ds_store_b8 v143, v170 offset:1024
	ds_store_b8_d16_hi v143, v170 offset:1280
	ds_store_b8 v143, v171 offset:1536
	ds_store_b8_d16_hi v145, v171
	ds_store_b8 v143, v172 offset:2048
	ds_store_b8_d16_hi v143, v172 offset:2304
	ds_store_b8 v143, v173 offset:2560
	ds_store_b8_d16_hi v146, v173
	ds_store_b8 v143, v174 offset:3072
	ds_store_b8_d16_hi v143, v174 offset:3328
	ds_store_b8 v143, v175 offset:3584
	ds_store_b8_d16_hi v147, v175
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 795 31                        ; ragged.py:795:31
	ds_load_u8 v168, v148 offset:1280
	ds_load_u8 v169, v148 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v148 offset:1792
	ds_load_u8 v170, v148 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v169, 16, v168
	ds_load_u8 v168, v148 offset:256
	ds_load_u8 v170, v148
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v170, v168, 0xc0c0004
	ds_load_u8 v170, v148 offset:768
	ds_load_u8 v171, v148 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v170, 16, v168
	ds_load_u8 v170, v148 offset:3328
	ds_load_u8 v171, v148 offset:3072
	v_wmma_i32_16x16x16_iu4 v[1:8], v[168:169], v[152:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[168:169], v[154:155], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[168:169], v[156:157], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[168:169], v[158:159], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v148 offset:3840
	ds_load_u8 v172, v148 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v171, 16, v170
	ds_load_u8 v170, v148 offset:2304
	ds_load_u8 v172, v148 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v172, v170, 0xc0c0004
	ds_load_u8 v172, v148 offset:2816
	ds_load_u8 v173, v148 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v172, 16, v170
	ds_load_u8 v172, v148 offset:1408
	ds_load_u8 v173, v148 offset:1152
	v_wmma_i32_16x16x16_iu4 v[1:8], v[170:171], v[160:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[170:171], v[162:163], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[170:171], v[164:165], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[170:171], v[166:167], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v148 offset:1920
	ds_load_u8 v174, v148 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v173, 16, v172
	ds_load_u8 v172, v148 offset:384
	ds_load_u8 v174, v148 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v174, v172, 0xc0c0004
	ds_load_u8 v174, v148 offset:896
	ds_load_u8 v175, v148 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v172, v174, 16, v172
	v_wmma_i32_16x16x16_iu4 v[9:16], v[172:173], v[152:153], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v152, v148 offset:3456
	ds_load_u8 v153, v148 offset:3200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[172:173], v[154:155], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[172:173], v[156:157], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[172:173], v[158:159], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v148 offset:3968
	ds_load_u8 v174, v148 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v174, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v153, v153, 16, v152
	ds_load_u8 v152, v148 offset:2432
	ds_load_u8 v174, v148 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v174, v152, 0xc0c0004
	ds_load_u8 v174, v148 offset:2944
	ds_load_u8 v175, v148 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v152, v174, 16, v152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[152:153], v[160:161], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[152:153], v[162:163], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[152:153], v[164:165], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[152:153], v[166:167], v[57:64] neg_lo:[1,1,0]
	.loc	1 775 23                        ; ragged.py:775:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 806 27                        ; ragged.py:806:27
	v_cvt_f32_i32_e32 v183, v1
	v_cvt_f32_i32_e32 v182, v2
	v_cvt_f32_i32_e32 v181, v3
	v_cvt_f32_i32_e32 v180, v4
	v_cvt_f32_i32_e32 v179, v5
	v_cvt_f32_i32_e32 v178, v6
	v_cvt_f32_i32_e32 v177, v7
	v_cvt_f32_i32_e32 v176, v8
	v_cvt_f32_i32_e32 v175, v9
	v_cvt_f32_i32_e32 v174, v10
	v_cvt_f32_i32_e32 v173, v11
	v_cvt_f32_i32_e32 v172, v12
	v_cvt_f32_i32_e32 v171, v13
	v_cvt_f32_i32_e32 v170, v14
	v_cvt_f32_i32_e32 v169, v15
	v_cvt_f32_i32_e32 v168, v16
	v_cvt_f32_i32_e32 v167, v17
	v_cvt_f32_i32_e32 v166, v18
	v_cvt_f32_i32_e32 v165, v19
	v_cvt_f32_i32_e32 v164, v20
	v_cvt_f32_i32_e32 v163, v21
	v_cvt_f32_i32_e32 v162, v22
	v_cvt_f32_i32_e32 v161, v23
	v_cvt_f32_i32_e32 v160, v24
	v_cvt_f32_i32_e32 v159, v25
	v_cvt_f32_i32_e32 v158, v26
	v_cvt_f32_i32_e32 v157, v27
	v_cvt_f32_i32_e32 v156, v28
	v_cvt_f32_i32_e32 v155, v29
	v_cvt_f32_i32_e32 v154, v30
	v_cvt_f32_i32_e32 v153, v31
	v_cvt_f32_i32_e32 v152, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v31, v34
	v_cvt_f32_i32_e32 v30, v35
	v_cvt_f32_i32_e32 v29, v36
	v_cvt_f32_i32_e32 v28, v37
	v_cvt_f32_i32_e32 v27, v38
	v_cvt_f32_i32_e32 v26, v39
	v_cvt_f32_i32_e32 v25, v40
	v_cvt_f32_i32_e32 v24, v41
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v22, v43
	v_cvt_f32_i32_e32 v21, v44
	v_cvt_f32_i32_e32 v20, v45
	v_cvt_f32_i32_e32 v19, v46
	v_cvt_f32_i32_e32 v18, v47
	v_cvt_f32_i32_e32 v17, v48
	v_cvt_f32_i32_e32 v16, v49
	v_cvt_f32_i32_e32 v15, v50
	v_cvt_f32_i32_e32 v14, v51
	v_cvt_f32_i32_e32 v13, v52
	v_cvt_f32_i32_e32 v12, v53
	v_cvt_f32_i32_e32 v11, v54
	v_cvt_f32_i32_e32 v10, v55
	v_cvt_f32_i32_e32 v9, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v7, v58
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v5, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge38
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 827 22                        ; ragged.py:827:22
	v_mul_lo_u32 v1, s23, v86
	s_mul_i32 s0, s26, s23
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 707 36 is_stmt 1              ; ragged.py:707:36
	v_and_or_b32 v3, v0, 1, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 827 22                        ; ragged.py:827:22
	v_add3_u32 v0, s0, s27, v1
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v1, s27, v3
	.loc	1 707 36 is_stmt 0              ; ragged.py:707:36
	v_or_b32_e32 v4, 0x80, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 709 20 is_stmt 1              ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s23, v1
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v2, s27, v4
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v22, v0, v18, 2
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v15, 8, v3
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s5, s0
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v14, 10, v3
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v21, 0x80000000, v1, s1
	s_mov_b32 s27, 0x31027000
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e32 vcc_lo, s23, v2
	.loc	1 827 22                        ; ragged.py:827:22
	v_mad_u64_u32 v[1:2], null, s23, 48, v[0:1]
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	buffer_store_b32 v132, v21, s[24:27], 0 offen
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
	buffer_store_b32 v131, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	v_cndmask_b32_e64 v23, 0x80000000, v24, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v11, 0x82, v3
	v_or_b32_e32 v10, 0x84, v3
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v130, v2, s[24:27], 0 offen
	v_add_lshl_u32 v2, v0, v13, 2
	s_clause 0x2
	buffer_store_b32 v129, v21, s[24:27], 0 offen
	buffer_store_b32 v128, v22, s[24:27], 0 offen
	buffer_store_b32 v127, v23, s[24:27], 0 offen
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
	buffer_store_b32 v126, v2, s[24:27], 0 offen
	buffer_store_b32 v125, v21, s[24:27], 0 offen
	buffer_store_b32 v124, v22, s[24:27], 0 offen
	buffer_store_b32 v123, v23, s[24:27], 0 offen
	buffer_store_b32 v122, v24, s[24:27], 0 offen
	v_add_lshl_u32 v2, v0, v9, 2
	v_add_lshl_u32 v21, v0, v8, 2
	v_add_lshl_u32 v22, v0, v7, 2
	v_add_lshl_u32 v23, v0, v6, 2
	.loc	1 827 22 is_stmt 0              ; ragged.py:827:22
	v_lshl_add_u32 v19, s23, 4, v0
	v_lshl_add_u32 v20, s23, 5, v0
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v0, v0, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x4
	buffer_store_b32 v121, v2, s[24:27], 0 offen
	buffer_store_b32 v120, v21, s[24:27], 0 offen
	buffer_store_b32 v119, v22, s[24:27], 0 offen
	buffer_store_b32 v118, v23, s[24:27], 0 offen
	buffer_store_b32 v117, v0, s[24:27], 0 offen
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
	buffer_store_b32 v116, v0, s[24:27], 0 offen
	buffer_store_b32 v115, v2, s[24:27], 0 offen
	buffer_store_b32 v114, v21, s[24:27], 0 offen
	v_add_lshl_u32 v2, v19, v14, 2
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v23, s1
	buffer_store_b32 v113, v22, s[24:27], 0 offen
	v_add_lshl_u32 v22, v19, v12, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	buffer_store_b32 v112, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s4, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v111, v2, s[24:27], 0 offen
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x2
	buffer_store_b32 v110, v21, s[24:27], 0 offen
	buffer_store_b32 v109, v22, s[24:27], 0 offen
	buffer_store_b32 v108, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v21, v19, v9, 2
	v_add_lshl_u32 v22, v19, v8, 2
	v_add_lshl_u32 v23, v19, v7, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_store_b32 v107, v2, s[24:27], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v21, s1
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	buffer_store_b32 v106, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v19, v6, 2
	s_clause 0x2
	buffer_store_b32 v105, v2, s[24:27], 0 offen
	buffer_store_b32 v104, v21, s[24:27], 0 offen
	buffer_store_b32 v103, v22, s[24:27], 0 offen
	v_add_lshl_u32 v2, v19, v5, 2
	v_add_lshl_u32 v19, v20, v3, 2
	v_add_lshl_u32 v21, v20, v18, 2
	v_add_lshl_u32 v22, v20, v17, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s11, s0
	s_and_b32 s0, s7, s0
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	s_clause 0x4
	buffer_store_b32 v102, v0, s[24:27], 0 offen
	buffer_store_b32 v101, v2, s[24:27], 0 offen
	buffer_store_b32 v100, v19, s[24:27], 0 offen
	buffer_store_b32 v99, v21, s[24:27], 0 offen
	buffer_store_b32 v98, v22, s[24:27], 0 offen
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
	buffer_store_b32 v97, v0, s[24:27], 0 offen
	buffer_store_b32 v96, v2, s[24:27], 0 offen
	buffer_store_b32 v95, v19, s[24:27], 0 offen
	buffer_store_b32 v94, v21, s[24:27], 0 offen
	buffer_store_b32 v93, v22, s[24:27], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_add_lshl_u32 v2, v20, v11, 2
	v_add_lshl_u32 v19, v20, v10, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s11, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v21, v20, v9, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v22, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	s_clause 0x2
	buffer_store_b32 v91, v0, s[24:27], 0 offen
	buffer_store_b32 v90, v2, s[24:27], 0 offen
	buffer_store_b32 v89, v19, s[24:27], 0 offen
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v0, 0x80000000, v22, s1
	v_add_lshl_u32 v19, v20, v6, 2
	v_add_lshl_u32 v20, v20, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_clause 0x1
	buffer_store_b32 v88, v21, s[24:27], 0 offen
	buffer_store_b32 v87, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v1, v3, 2
	v_cndmask_b32_e64 v3, 0x80000000, v19, s1
	v_cndmask_b32_e64 v19, 0x80000000, v20, s1
	buffer_store_b32 v85, v2, s[24:27], 0 offen
	v_add_lshl_u32 v2, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	s_clause 0x2
	buffer_store_b32 v84, v3, s[24:27], 0 offen
	buffer_store_b32 v83, v19, s[24:27], 0 offen
	buffer_store_b32 v82, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v16, 2
	v_add_lshl_u32 v15, v1, v15, 2
	v_add_lshl_u32 v14, v1, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_store_b32 v81, v2, s[24:27], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v3, s0
	v_cndmask_b32_e64 v3, 0x80000000, v15, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	buffer_store_b32 v80, v0, s[24:27], 0 offen
	v_add_lshl_u32 v0, v1, v13, 2
	s_clause 0x2
	buffer_store_b32 v79, v2, s[24:27], 0 offen
	buffer_store_b32 v78, v3, s[24:27], 0 offen
	buffer_store_b32 v77, v14, s[24:27], 0 offen
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
	buffer_store_b32 v76, v0, s[24:27], 0 offen
	buffer_store_b32 v75, v2, s[24:27], 0 offen
	buffer_store_b32 v74, v3, s[24:27], 0 offen
	buffer_store_b32 v73, v4, s[24:27], 0 offen
	buffer_store_b32 v72, v10, s[24:27], 0 offen
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
	buffer_store_b32 v71, v0, s[24:27], 0 offen
	buffer_store_b32 v70, v2, s[24:27], 0 offen
	buffer_store_b32 v69, v3, s[24:27], 0 offen
	buffer_store_b32 v68, v4, s[24:27], 0 offen
	buffer_store_b32 v67, v1, s[24:27], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 184
		.amdhsa_next_free_sgpr 82
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
		.amdhsa_inst_pref_size 61
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 184
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7744
; TotalNumSgprs: 84
; NumVgprs: 184
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 184
; Occupancy: 8
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     184
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
