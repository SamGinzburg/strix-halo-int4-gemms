	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 674 0                         ; ragged.py:674:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 701 20 prologue_end           ; ragged.py:701:20
	s_abs_i32 s9, s2
	.loc	1 706 36                        ; ragged.py:706:36
	v_and_b32_e32 v89, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:698:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:699:21 ]
	s_add_i32 s5, s35, 0xff
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
	s_ashr_i32 s30, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s7, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 700 27 is_stmt 1              ; ragged.py:700:27
	s_mul_i32 s4, s7, s30
	.loc	1 701 20                        ; ragged.py:701:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s8, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s6
	s_mul_hi_u32 s8, s6, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s6
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s6, s7
	.loc	1 701 20                        ; ragged.py:701:20
	s_xor_b32 s5, s5, s8
	.loc	1 703 17                        ; ragged.py:703:17
	s_cvt_f32_u32 s9, s6
	.loc	1 701 20                        ; ragged.py:701:20
	s_sub_i32 s10, s5, s8
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s5, 0, s6
	.loc	1 702 22                        ; ragged.py:702:22
	s_mul_i32 s4, s10, s4
	.loc	1 703 17                        ; ragged.py:703:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 702 16                        ; ragged.py:702:16
	s_sub_i32 s12, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s8, s12
	s_xor_b32 s11, s12, s7
	s_ashr_i32 s31, s11, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 703 17                        ; ragged.py:703:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s8, s9
	s_mul_i32 s13, s9, s6
	s_add_i32 s11, s9, 1
	s_sub_i32 s8, s8, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s13, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s8, s13, s8
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s9
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s11, s10, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s36, s6, s31
	.loc	1 710 19                        ; ragged.py:710:19
	s_lshl_b64 s[8:9], s[10:11], 2
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s6, s36, s31
	.loc	1 780 39                        ; ragged.py:780:39
	s_mul_i32 s11, s10, s34
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s13, s6, s7
	.loc	1 706 18                        ; ragged.py:706:18
	s_lshl_b32 s24, s6, 6
	.loc	1 704 17                        ; ragged.py:704:17
	s_sub_i32 s12, s12, s13
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v2, s24, v89
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s6, s[4:5], 0x0
	s_mov_b32 s13, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s5, s34, v2
	v_cmp_gt_i32_e64 s4, s34, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s9, s34, v4
	v_cmp_gt_i32_e64 s8, s34, v5
	.loc	1 711 27                        ; ragged.py:711:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s25, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 771 19                        ; ragged.py:771:19
	s_cmp_gt_i32 s25, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge20_crit_edge
	.loc	1 827 22                        ; ragged.py:827:22
	s_add_i32 s33, s24, s11
	s_lshl_b32 s44, s35, 4
	s_lshl_b32 s23, s35, 5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s13, -1
                                        ; implicit-def: $sgpr33
                                        ; implicit-def: $sgpr44
                                        ; implicit-def: $sgpr23
.LBB0_3:                                ; %Flow253
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v104, 0x70, v1
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_lshrrev_b32_e32 v105, 4, v0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v140, 0
	s_and_not1_b32 vcc_lo, exec_lo, s13
	s_lshl_b32 s45, s12, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	.loc	1 706 36 is_stmt 1              ; ragged.py:706:36
	v_lshrrev_b32_e32 v2, 2, v0
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v5, 3, v0
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x38
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 711 26                        ; ragged.py:711:26
	s_lshr_b32 s0, s25, 31
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v6, s24, v2
	v_dual_mov_b32 v139, 0 :: v_dual_and_b32 v72, 24, v5
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshlrev_b32_e32 v3, 4, v89
	.loc	1 711 26                        ; ragged.py:711:26
	s_add_i32 s25, s25, s0
	.loc	1 790 37                        ; ragged.py:790:37
	s_and_b32 s1, s6, 0x80000001
	.loc	1 774 23                        ; ragged.py:774:23
	s_lshl_b32 s3, s3, 5
	.loc	1 711 26                        ; ragged.py:711:26
	s_ashr_i32 s46, s25, 1
	.loc	1 790 37                        ; ragged.py:790:37
	s_cmp_eq_u32 s1, 1
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s1, s34, v6
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v6, 1, v0
	v_mov_b32_e32 v160, v72
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v7, s45, v3
	.loc	1 790 37                        ; ragged.py:790:37
	s_cselect_b32 s47, -1, 0
	.loc	1 790 67 is_stmt 0              ; ragged.py:790:67
	s_add_i32 s38, s46, -1
	s_cmpk_lt_i32 s3, 0x80
	v_mov_b32_e32 v138, 0
	.loc	1 709 20 is_stmt 1              ; ragged.py:709:20
	v_cmp_gt_i32_e64 s6, s35, v7
	v_and_b32_e32 v7, 24, v6
	s_cselect_b32 s39, -1, 0
	s_add_i32 s33, s24, s11
	v_mov_b32_e32 v134, 0
	.loc	1 784 39                        ; ragged.py:784:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s37, s10, s22
	v_lshl_or_b32 v142, v89, 5, v7
	v_add_nc_u32_e32 v7, s33, v89
	.loc	1 771 19                        ; ragged.py:771:19
	s_mul_i32 s30, s30, s10
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v141, s45, v0
	v_dual_mov_b32 v159, v105 :: v_dual_and_b32 v4, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v11, 16, v7
	.loc	1 816 37                        ; ragged.py:816:37
	s_mul_i32 s34, s10, s23
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v10, 4, v0
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v12, 32, v7
	v_mul_lo_u32 v145, v11, s23
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v0, 5, v0
	.loc	1 771 19                        ; ragged.py:771:19
	v_add3_u32 v11, s37, s3, v105
	s_sub_i32 s10, s31, s30
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v13, 48, v7
	s_sub_i32 s10, s10, s36
	v_mul_lo_u32 v144, v7, s23
	s_mul_i32 s7, s7, s10
	v_mul_lo_u32 v146, v12, s23
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v7, 2, v4
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v0, 32, v0
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v12, 16, v11
	s_lshl_b32 s7, s7, 8
	s_lshl_b32 s2, s2, 8
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v0, 0, v7, v0
	s_add_i32 s2, s2, s7
	s_lshl_b32 s7, s36, 6
	v_mul_lo_u32 v7, s35, v12
	v_mul_lo_u32 v11, s35, v11
	v_add3_u32 v2, s11, s7, v2
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v1, 24, v1
	s_sub_i32 s50, s3, 32
	s_lshl_b32 s3, s31, 6
	v_xor_b32_e32 v8, 16, v142
	v_subrev_nc_u32_e32 v2, s3, v2
	v_xor_b32_e32 v1, v5, v1
	v_xor_b32_e32 v5, 8, v142
	v_xor_b32_e32 v9, 24, v142
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v6, 28, v6
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v4, 1, v4
	v_add3_u32 v148, s2, v7, v3
	v_add3_u32 v149, s2, v11, v3
	v_cndmask_b32_e64 v3, 0, 1, s39
	v_mul_lo_u32 v147, v13, s23
	v_mad_u64_u32 v[73:74], null, s22, v2, v[72:73]
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s35, v141
	v_add3_u32 v143, 0, v104, v89
	.loc	1 771 19                        ; ragged.py:771:19
	v_subrev_nc_u32_e32 v150, s46, v72
	v_subrev_nc_u32_e32 v151, s46, v105
	v_cmp_ne_u32_e64 s7, 1, v3
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v152, 0, v1
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v153, 0, v5
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v154, 0, v8
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v155, 0, v9
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v156, 0, v10
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v157, v0, v6
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v158, 0, v4
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v74, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_lshl_b32 s44, s35, 4
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_mov_b32 s48, 0
	s_and_b32 s41, s19, 0xffff
	s_lshr_b32 s49, s38, 7
	s_lshl_b32 s51, s35, 7
	s_lshl_b32 s23, s35, 5
	s_mov_b32 s36, s16
	s_mov_b32 s37, s17
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s40, s18
	s_mov_b32 s42, s26
	s_mov_b32 s43, s27
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v32, v144, s48, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_add_i32 s2, s48, s34
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v33, v145, s48, 1
	v_add_lshl_u32 v34, v146, s48, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_mul_i32 s2, s2, s35
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v35, v147, s48, 1
	.loc	1 815 40                        ; ragged.py:815:40
	v_add_lshl_u32 v36, v141, s2, 1
	.loc	1 808 40                        ; ragged.py:808:40
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	v_cndmask_b32_e64 v34, 0x80000000, v34, s9
	v_cndmask_b32_e64 v35, 0x80000000, v35, s8
	.loc	1 815 40                        ; ragged.py:815:40
	v_cndmask_b32_e64 v36, 0x80000000, v36, s0
	.loc	1 808 40                        ; ragged.py:808:40
	s_clause 0x3
	buffer_load_u16 v32, v32, s[36:39], 0 offen
	buffer_load_u16 v33, v33, s[36:39], 0 offen
	buffer_load_u16 v34, v34, s[36:39], 0 offen
	buffer_load_u16 v35, v35, s[36:39], 0 offen
	.loc	1 815 40                        ; ragged.py:815:40
	buffer_load_u16 v36, v36, s[40:43], 0 offen
	.loc	1 820 21                        ; ragged.py:820:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 822 17                        ; ragged.py:822:17
	s_add_i32 s2, s48, 1
	.loc	1 771 19                        ; ragged.py:771:19
	s_cmp_lg_u32 s48, s49
	s_mov_b32 s48, s2
	v_add_nc_u32_e32 v159, 0x80, v159
	.loc	1 808 40                        ; ragged.py:808:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 813 21                        ; ragged.py:813:21
	v_dual_mul_f32 v57, v163, v33 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v39, v182, v32 :: v_dual_lshlrev_b32 v34, 16, v34
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v46, v175, v32 :: v_dual_lshlrev_b32 v35, 16, v35
	v_mul_f32_e32 v44, v177, v32
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v59, v161, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_dual_mul_f32 v53, v167, v33 :: v_dual_add_nc_u32 v148, s51, v148
	v_dual_mul_f32 v38, v183, v32 :: v_dual_add_nc_u32 v149, s51, v149
	v_dual_mul_f32 v40, v181, v32 :: v_dual_add_nc_u32 v73, 0x80, v73
	v_dual_mul_f32 v37, v184, v32 :: v_dual_add_nc_u32 v150, 0x80, v150
	v_dual_mul_f32 v55, v165, v33 :: v_dual_add_nc_u32 v160, 0x80, v160
	v_dual_mul_f32 v42, v179, v32 :: v_dual_add_nc_u32 v151, 0x80, v151
	v_dual_mul_f32 v41, v180, v32 :: v_dual_mul_f32 v54, v166, v33
	v_dual_mul_f32 v43, v178, v32 :: v_dual_mul_f32 v52, v168, v33
	v_dual_mul_f32 v45, v176, v32 :: v_dual_mul_f32 v58, v162, v33
	v_dual_mul_f32 v47, v174, v32 :: v_dual_mul_f32 v56, v164, v33
	v_dual_mul_f32 v48, v173, v32 :: v_dual_mul_f32 v61, v70, v33
	v_dual_mul_f32 v49, v172, v32 :: v_dual_mul_f32 v60, v71, v33
	v_dual_mul_f32 v50, v171, v32 :: v_dual_mul_f32 v63, v68, v33
	v_dual_mul_f32 v51, v170, v32 :: v_dual_mul_f32 v62, v69, v33
	v_dual_mul_f32 v32, v169, v32 :: v_dual_mul_f32 v67, v67, v33
	v_dual_mul_f32 v66, v66, v33 :: v_dual_mul_f32 v31, v31, v34
	v_dual_mul_f32 v65, v65, v33 :: v_dual_mul_f32 v30, v30, v34
	v_dual_mul_f32 v33, v64, v33 :: v_dual_mul_f32 v64, v27, v34
	v_dual_mul_f32 v29, v29, v34 :: v_dual_mul_f32 v14, v14, v35
	v_dual_mul_f32 v28, v28, v34 :: v_dual_mul_f32 v15, v15, v35
	v_dual_mul_f32 v68, v26, v34 :: v_dual_mul_f32 v167, v12, v35
	v_dual_mul_f32 v69, v25, v34 :: v_dual_mul_f32 v168, v11, v35
	v_dual_mul_f32 v70, v24, v34 :: v_dual_mul_f32 v169, v10, v35
	v_mul_f32_e32 v71, v23, v34
	v_dual_mul_f32 v161, v22, v34 :: v_dual_mul_f32 v8, v8, v35
	v_dual_mul_f32 v162, v21, v34 :: v_dual_mul_f32 v7, v7, v35
	v_dual_mul_f32 v163, v20, v34 :: v_dual_mul_f32 v6, v6, v35
	v_dual_mul_f32 v164, v19, v34 :: v_dual_mul_f32 v9, v9, v35
	v_dual_mul_f32 v165, v18, v34 :: v_dual_mul_f32 v4, v4, v35
	v_dual_mul_f32 v166, v17, v34 :: v_dual_mul_f32 v3, v3, v35
	v_dual_mul_f32 v34, v16, v34 :: v_dual_mul_f32 v5, v5, v35
	.loc	1 820 21                        ; ragged.py:820:21
	ds_store_b32 v157, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v158
	ds_load_b128 v[20:23], v158 offset:16
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v36, v13, v35
	.loc	1 820 21                        ; ragged.py:820:21
	ds_load_b128 v[10:13], v158 offset:512
	ds_load_b128 v[24:27], v158 offset:528
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v2, v2, v35
	v_mul_f32_e32 v1, v1, v35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v0, v0, v35 :: v_dual_fmac_f32 v139, v38, v17
	.loc	1 821 17                        ; ragged.py:821:17
	v_dual_fmac_f32 v140, v37, v16 :: v_dual_fmac_f32 v137, v40, v19
	v_fmac_f32_e32 v138, v39, v18
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v136, v41, v20 :: v_dual_fmac_f32 v135, v42, v21
	v_dual_fmac_f32 v134, v43, v22 :: v_dual_fmac_f32 v133, v44, v23
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v132, v45, v10 :: v_dual_fmac_f32 v131, v46, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v130, v47, v12 :: v_dual_fmac_f32 v127, v50, v25
	v_dual_fmac_f32 v129, v48, v13 :: v_dual_fmac_f32 v128, v49, v24
	v_dual_fmac_f32 v125, v32, v27 :: v_dual_fmac_f32 v126, v51, v26
	v_dual_fmac_f32 v123, v53, v17 :: v_dual_fmac_f32 v124, v52, v16
	v_dual_fmac_f32 v121, v55, v19 :: v_dual_fmac_f32 v122, v54, v18
	v_dual_fmac_f32 v119, v57, v21 :: v_dual_fmac_f32 v120, v56, v20
	v_dual_fmac_f32 v117, v59, v23 :: v_dual_fmac_f32 v118, v58, v22
	v_dual_fmac_f32 v115, v61, v11 :: v_dual_fmac_f32 v116, v60, v10
	v_dual_fmac_f32 v113, v63, v13 :: v_dual_fmac_f32 v114, v62, v12
	v_dual_fmac_f32 v109, v33, v27 :: v_dual_fmac_f32 v112, v67, v24
	v_dual_fmac_f32 v111, v66, v25 :: v_dual_fmac_f32 v110, v65, v26
	v_dual_fmac_f32 v107, v30, v17 :: v_dual_fmac_f32 v108, v31, v16
	v_dual_fmac_f32 v103, v28, v19 :: v_dual_fmac_f32 v106, v29, v18
	v_fmac_f32_e32 v101, v68, v21
	v_dual_fmac_f32 v102, v64, v20 :: v_dual_fmac_f32 v99, v70, v23
	v_dual_fmac_f32 v100, v69, v22 :: v_dual_fmac_f32 v95, v163, v13
	v_dual_fmac_f32 v98, v71, v10 :: v_dual_fmac_f32 v97, v161, v11
	v_dual_fmac_f32 v96, v162, v12 :: v_dual_fmac_f32 v93, v165, v25
	v_dual_fmac_f32 v94, v164, v24 :: v_dual_fmac_f32 v91, v34, v27
	v_dual_fmac_f32 v92, v166, v26 :: v_dual_fmac_f32 v85, v168, v20
	v_dual_fmac_f32 v90, v15, v16 :: v_dual_fmac_f32 v87, v36, v18
	v_dual_fmac_f32 v88, v14, v17 :: v_dual_fmac_f32 v83, v9, v22
	v_dual_fmac_f32 v86, v167, v19 :: v_dual_fmac_f32 v79, v5, v12
	v_dual_fmac_f32 v84, v169, v21 :: v_dual_fmac_f32 v81, v7, v10
	v_dual_fmac_f32 v82, v8, v23 :: v_dual_fmac_f32 v77, v3, v24
	v_dual_fmac_f32 v80, v6, v11 :: v_dual_fmac_f32 v75, v1, v26
	v_fmac_f32_e32 v78, v4, v13
	v_fmac_f32_e32 v76, v2, v25
	v_fmac_f32_e32 v74, v0, v27
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
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	.loc	1 775 23 is_stmt 1              ; ragged.py:775:23
	s_and_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v161, v149
	v_mov_b32_e32 v162, v148
	s_mov_b32 s22, s50
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
	v_add_nc_u32_e32 v65, s22, v160
	v_add_nc_u32_e32 v66, s22, v73
	.loc	1 775 23                        ; ragged.py:775:23
	s_add_i32 s19, s22, 32
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v64, s22, v159
	.loc	1 789 60                        ; ragged.py:789:60
	v_add_nc_u32_e32 v67, s19, v72
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v165, 36, v65
	v_add_nc_u32_e32 v168, 32, v66
	v_add_nc_u32_e32 v70, 32, v65
	v_add_nc_u32_e32 v167, 38, v65
	v_add_nc_u32_e32 v170, 34, v66
	v_add_nc_u32_e32 v171, 35, v66
	v_add_nc_u32_e32 v71, 33, v65
	v_add_nc_u32_e32 v172, 36, v66
	v_add_nc_u32_e32 v164, 35, v65
	v_add_nc_u32_e32 v173, 37, v66
	v_add_nc_u32_e32 v169, 33, v66
	v_add_nc_u32_e32 v174, 38, v66
	v_add_nc_u32_e32 v166, 37, v65
	.loc	1 791 38                        ; ragged.py:791:38
	v_add_nc_u32_e32 v66, 39, v66
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v163, 34, v65
	.loc	1 789 35                        ; ragged.py:789:35
	v_add_nc_u32_e32 v65, 39, v65
	.loc	1 789 59 is_stmt 0              ; ragged.py:789:59
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v67
	.loc	1 789 35                        ; ragged.py:789:35
	v_cmp_gt_i32_e64 s3, s46, v70
	v_cmp_gt_i32_e64 s10, s46, v71
	v_cmp_gt_i32_e64 s11, s46, v163
	v_cmp_gt_i32_e64 s12, s46, v164
	v_cmp_gt_i32_e64 s13, s46, v165
	v_cmp_gt_i32_e64 s14, s46, v166
	v_cmp_gt_i32_e64 s15, s46, v167
	v_cmp_gt_i32_e64 s16, s46, v65
	.loc	1 789 34                        ; ragged.py:789:34
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s10, s10, vcc_lo
	s_and_b32 s11, s11, vcc_lo
	s_and_b32 s12, s12, vcc_lo
	s_and_b32 s13, s13, vcc_lo
	s_and_b32 s14, s14, vcc_lo
	s_and_b32 s15, s15, vcc_lo
	s_and_b32 s16, s16, vcc_lo
	.loc	1 791 70 is_stmt 1              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s3
	.loc	1 789 59                        ; ragged.py:789:59
	v_add_nc_u32_e32 v68, s19, v105
	.loc	1 791 38                        ; ragged.py:791:38
	v_cndmask_b32_e32 v163, 0x80000000, v168, vcc_lo
	.loc	1 791 70 is_stmt 0              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s10
	.loc	1 791 38                        ; ragged.py:791:38
	v_dual_cndmask_b32 v164, 0x80000000, v169 :: v_dual_add_nc_u32 v69, 32, v64
	.loc	1 791 70                        ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s11
	.loc	1 791 38                        ; ragged.py:791:38
	v_dual_cndmask_b32 v165, 0x80000000, v170 :: v_dual_add_nc_u32 v64, 48, v64
	.loc	1 791 70                        ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s12
	.loc	1 789 59 is_stmt 1              ; ragged.py:789:59
	v_cmp_gt_i32_e64 s2, 0x80, v68
	.loc	1 789 35 is_stmt 0              ; ragged.py:789:35
	v_cmp_gt_i32_e64 s17, s46, v69
	.loc	1 791 38 is_stmt 1              ; ragged.py:791:38
	v_cndmask_b32_e32 v166, 0x80000000, v171, vcc_lo
	.loc	1 791 70 is_stmt 0              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s13
	.loc	1 789 35 is_stmt 1              ; ragged.py:789:35
	v_cmp_gt_i32_e64 s18, s46, v64
	.loc	1 791 38                        ; ragged.py:791:38
	v_cndmask_b32_e32 v167, 0x80000000, v172, vcc_lo
	.loc	1 791 70 is_stmt 0              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s14
	.loc	1 789 34 is_stmt 1              ; ragged.py:789:34
	s_and_b32 s17, s17, s2
	.loc	1 791 38                        ; ragged.py:791:38
	v_cndmask_b32_e32 v168, 0x80000000, v173, vcc_lo
	.loc	1 791 70 is_stmt 0              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s15
	.loc	1 789 34 is_stmt 1              ; ragged.py:789:34
	s_and_b32 s2, s18, s2
	.loc	1 791 38                        ; ragged.py:791:38
	v_cndmask_b32_e32 v169, 0x80000000, v174, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s17
	.loc	1 792 38 is_stmt 0              ; ragged.py:792:38
	s_mov_b32 s30, s26
	v_cndmask_b32_e32 v64, 0x80000000, v161, vcc_lo
	.loc	1 791 70 is_stmt 1              ; ragged.py:791:70
	s_and_b32 vcc_lo, s1, s16
	.loc	1 792 38                        ; ragged.py:792:38
	s_mov_b32 s31, s27
	.loc	1 791 38                        ; ragged.py:791:38
	v_cndmask_b32_e32 v170, 0x80000000, v66, vcc_lo
	.loc	1 792 70                        ; ragged.py:792:70
	s_and_b32 vcc_lo, s6, s2
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v172, s22, v150
	.loc	1 792 38                        ; ragged.py:792:38
	v_cndmask_b32_e32 v65, 0x80000000, v162, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[68:71], v64, s[28:31], 0 offen
	buffer_load_b128 v[64:67], v65, s[28:31], 0 offen
	.loc	1 791 38                        ; ragged.py:791:38
	s_clause 0x7
	buffer_load_u8 v163, v163, s[24:27], 0 offen
	buffer_load_u8 v164, v164, s[24:27], 0 offen
	buffer_load_u8 v165, v165, s[24:27], 0 offen
	buffer_load_u8 v166, v166, s[24:27], 0 offen
	buffer_load_u8 v167, v167, s[24:27], 0 offen
	buffer_load_u8 v168, v168, s[24:27], 0 offen
	buffer_load_u8 v169, v169, s[24:27], 0 offen
	buffer_load_u8 v170, v170, s[24:27], 0 offen
	.loc	1 776 26                        ; ragged.py:776:26
	v_add_nc_u32_e32 v173, s22, v151
	.loc	1 790 60                        ; ragged.py:790:60
	v_cmp_eq_u32_e32 vcc_lo, 0xffffffdf, v172
	v_cmp_eq_u32_e64 s2, 0xffffffde, v172
	v_cmp_eq_u32_e64 s3, 0xffffffdd, v172
	v_cmp_eq_u32_e64 s10, 0xffffffdc, v172
	v_cmp_eq_u32_e64 s11, 0xffffffdb, v172
	v_cmp_eq_u32_e64 s12, 0xffffffda, v172
	v_cmp_eq_u32_e64 s13, 0xffffffd9, v172
	v_cmp_eq_u32_e64 s15, 0xffffffdf, v173
	v_cmp_eq_u32_e64 s16, 0xffffffcf, v173
	v_cmp_eq_u32_e64 s14, 0xffffffd8, v172
	.loc	1 790 36 is_stmt 0              ; ragged.py:790:36
	s_and_b32 s17, s47, vcc_lo
	s_and_b32 s18, s47, s2
	s_and_b32 s22, s47, s3
	s_and_b32 s10, s47, s10
	s_and_b32 s11, s47, s11
	s_and_b32 s12, s47, s12
	s_and_b32 s13, s47, s13
	s_and_b32 s3, s47, s15
	s_and_b32 s2, s47, s16
	s_and_b32 s14, s47, s14
	.loc	1 793 38 is_stmt 1              ; ragged.py:793:38
	v_add_nc_u32_e32 v171, 0, v142
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 23                        ; ragged.py:775:23
	v_add_nc_u32_e32 v162, s23, v162
	v_add_nc_u32_e32 v161, s23, v161
	s_cmpk_lt_i32 s19, 0x60
	.loc	1 792 38                        ; ragged.py:792:38
	s_waitcnt vmcnt(9)
	v_lshrrev_b64 v[182:183], 24, v[68:69]
	v_lshrrev_b64 v[183:184], 24, v[70:71]
	s_waitcnt vmcnt(8)
	v_lshrrev_b64 v[184:185], 24, v[64:65]
	v_lshrrev_b32_e32 v187, 8, v68
	v_lshrrev_b32_e32 v188, 8, v69
	v_lshrrev_b32_e32 v189, 24, v69
	v_lshrrev_b32_e32 v190, 8, v70
	v_lshrrev_b32_e32 v191, 8, v71
	v_lshrrev_b32_e32 v192, 24, v71
	v_lshrrev_b64 v[185:186], 24, v[66:67]
	v_lshrrev_b32_e32 v197, 24, v67
	.loc	1 793 66                        ; ragged.py:793:66
	s_waitcnt vmcnt(7)
	v_and_b16 v163.h, v163.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v164.h, v164.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v165.h, v165.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v166.h, v166.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v167.h, v167.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v168.h, v168.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v169.h, v169.l, 15
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v172.l, v68.l, 15
	v_and_b16 v172.h, v68.h, 15
	v_and_b16 v176.l, v64.l, 15
	v_and_b16 v176.h, v64.h, 15
	.loc	1 792 38                        ; ragged.py:792:38
	v_lshrrev_b32_e32 v193, 8, v64
	v_lshrrev_b32_e32 v194, 8, v65
	v_lshrrev_b32_e32 v195, 24, v65
	v_lshrrev_b32_e32 v196, 8, v66
	v_lshrrev_b32_e32 v186, 8, v67
	.loc	1 793 66                        ; ragged.py:793:66
	s_waitcnt vmcnt(0)
	v_and_b16 v170.h, v170.l, 15
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v173.l, v69.l, 15
	v_and_b16 v173.h, v69.h, 15
	v_and_b16 v177.l, v65.l, 15
	v_and_b16 v177.h, v65.h, 15
	v_and_b16 v174.l, v70.l, 15
	v_and_b16 v174.h, v70.h, 15
	v_and_b16 v175.l, v71.l, 15
	v_and_b16 v175.h, v71.h, 15
	.loc	1 793 38                        ; ragged.py:793:38
	v_cndmask_b16 v163.l, v163.l, v163.h, s17
	v_cndmask_b16 v163.h, v164.l, v164.h, s18
	v_cndmask_b16 v164.l, v165.l, v165.h, s22
	v_cndmask_b16 v164.h, v166.l, v166.h, s10
	v_cndmask_b16 v165.l, v167.l, v167.h, s11
	v_cndmask_b16 v165.h, v168.l, v168.h, s12
	v_cndmask_b16 v166.l, v169.l, v169.h, s13
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v167.l, v187.l, 15
	v_and_b16 v167.h, v188.l, 15
	v_and_b16 v168.l, v189.l, 15
	v_and_b16 v168.h, v190.l, 15
	v_and_b16 v169.l, v191.l, 15
	v_and_b16 v169.h, v192.l, 15
	v_and_b16 v181.h, v197.l, 15
	.loc	1 794 38 is_stmt 0              ; ragged.py:794:38
	v_cndmask_b16 v68.l, v68.l, v172.l, s3
	v_cndmask_b16 v68.h, v68.h, v172.h, s3
	v_cndmask_b16 v64.l, v64.l, v176.l, s2
	v_cndmask_b16 v64.h, v64.h, v176.h, s2
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v172.l, v182.l, 15
	v_and_b16 v172.h, v183.l, 15
	v_and_b16 v178.l, v66.l, 15
	v_and_b16 v178.h, v66.h, 15
	v_and_b16 v179.l, v67.l, 15
	v_and_b16 v179.h, v67.h, 15
	.loc	1 793 38 is_stmt 1              ; ragged.py:793:38
	v_cndmask_b16 v166.h, v170.l, v170.h, s14
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v170.l, v193.l, 15
	v_and_b16 v170.h, v194.l, 15
	v_and_b16 v180.l, v195.l, 15
	v_and_b16 v180.h, v196.l, 15
	v_and_b16 v181.l, v186.l, 15
	.loc	1 794 38 is_stmt 0              ; ragged.py:794:38
	v_cndmask_b16 v69.l, v69.l, v173.l, s3
	v_cndmask_b16 v69.h, v69.h, v173.h, s3
	v_cndmask_b16 v65.l, v65.l, v177.l, s2
	v_cndmask_b16 v65.h, v65.h, v177.h, s2
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v173.l, v184.l, 15
	v_and_b16 v173.h, v185.l, 15
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v70.l, v70.l, v174.l, s3
	v_cndmask_b16 v70.h, v70.h, v174.h, s3
	v_cndmask_b16 v71.l, v71.l, v175.l, s3
	v_cndmask_b16 v71.h, v71.h, v175.h, s3
	v_cndmask_b16 v167.l, v187.l, v167.l, s3
	v_cndmask_b16 v167.h, v188.l, v167.h, s3
	v_cndmask_b16 v168.l, v189.l, v168.l, s3
	v_cndmask_b16 v168.h, v190.l, v168.h, s3
	v_cndmask_b16 v169.l, v191.l, v169.l, s3
	v_cndmask_b16 v169.h, v192.l, v169.h, s3
	v_cndmask_b16 v175.h, v197.l, v181.h, s2
	v_and_b16 v196.h, 0xff, v64.l
	v_and_b16 v197.l, 0xff, v64.h
	v_cndmask_b16 v64.l, v182.l, v172.l, s3
	v_cndmask_b16 v64.h, v183.l, v172.h, s3
	v_cndmask_b16 v66.l, v66.l, v178.l, s2
	v_cndmask_b16 v66.h, v66.h, v178.h, s2
	v_cndmask_b16 v67.l, v67.l, v179.l, s2
	v_cndmask_b16 v67.h, v67.h, v179.h, s2
	v_cndmask_b16 v170.l, v193.l, v170.l, s2
	v_cndmask_b16 v170.h, v194.l, v170.h, s2
	v_cndmask_b16 v174.l, v195.l, v180.l, s2
	v_cndmask_b16 v174.h, v196.l, v180.h, s2
	v_cndmask_b16 v175.l, v186.l, v181.l, s2
	v_and_b16 v195.h, 0xff, v65.l
	v_and_b16 v196.l, 0xff, v65.h
	v_cndmask_b16 v65.l, v184.l, v173.l, s2
	v_cndmask_b16 v65.h, v185.l, v173.h, s2
	.loc	1 793 38 is_stmt 1              ; ragged.py:793:38
	v_lshlrev_b16 v166.h, 8, v166.h
	v_lshlrev_b16 v165.h, 8, v165.h
	v_lshlrev_b16 v164.h, 8, v164.h
	v_lshlrev_b16 v163.h, 8, v163.h
	.loc	1 794 38                        ; ragged.py:794:38
	v_and_b16 v187.l, 0xff, v71.l
	v_and_b16 v187.h, 0xff, v71.h
	v_and_b16 v188.l, 0xff, v70.l
	v_and_b16 v189.h, 0xff, v70.h
	v_and_b16 v188.h, 0xff, v69.l
	v_and_b16 v191.l, 0xff, v69.h
	v_and_b16 v191.h, 0xff, v68.l
	v_and_b16 v193.h, 0xff, v68.h
	v_lshlrev_b16 v189.l, 8, v169.l
	v_lshlrev_b16 v190.h, 8, v169.h
	v_lshlrev_b16 v194.l, 8, v168.h
	v_lshlrev_b16 v194.h, 8, v167.h
	v_lshlrev_b16 v197.h, 8, v168.l
	v_lshlrev_b16 v198.l, 8, v167.l
	v_lshlrev_b16 v201.h, 8, v64.h
	v_lshlrev_b16 v202.l, 8, v64.l
	v_and_b16 v192.l, 0xff, v67.l
	v_and_b16 v192.h, 0xff, v67.h
	v_and_b16 v193.l, 0xff, v66.l
	v_and_b16 v195.l, 0xff, v66.h
	v_lshlrev_b16 v198.h, 8, v175.l
	v_lshlrev_b16 v199.l, 8, v175.h
	v_lshlrev_b16 v199.h, 8, v174.h
	v_lshlrev_b16 v200.l, 8, v170.h
	v_lshlrev_b16 v200.h, 8, v174.l
	v_lshlrev_b16 v201.l, 8, v170.l
	v_lshlrev_b16 v202.h, 8, v65.h
	v_lshlrev_b16 v203.l, 8, v65.l
	.loc	1 793 38                        ; ragged.py:793:38
	v_or_b16 v67.h, v166.l, v166.h
	v_or_b16 v67.l, v165.l, v165.h
	v_or_b16 v66.h, v164.l, v164.h
	v_or_b16 v66.l, v163.l, v163.h
	.loc	1 794 38                        ; ragged.py:794:38
	v_or_b16 v190.l, v187.l, v189.l
	v_or_b16 v190.h, v187.h, v190.h
	v_or_b16 v189.l, v188.l, v194.l
	v_or_b16 v188.l, v188.h, v194.h
	v_or_b16 v188.h, v191.l, v197.h
	v_or_b16 v187.l, v191.h, v198.l
	v_or_b16 v189.h, v189.h, v201.h
	v_or_b16 v187.h, v193.h, v202.l
	v_or_b16 v194.l, v192.l, v198.h
	v_or_b16 v194.h, v192.h, v199.l
	v_or_b16 v193.l, v193.l, v199.h
	v_or_b16 v192.l, v195.h, v200.l
	v_or_b16 v192.h, v196.l, v200.h
	v_or_b16 v191.l, v196.h, v201.l
	v_or_b16 v193.h, v195.l, v202.h
	v_or_b16 v191.h, v197.l, v203.l
	.loc	1 793 38                        ; ragged.py:793:38
	ds_store_b64 v152, v[66:67]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[64:67], v171 offset1:1
	ds_load_2addr_stride64_b64 v[68:71], v171 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[163:166], v153 offset1:1
	ds_load_2addr_stride64_b64 v[167:170], v153 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[171:174], v154 offset1:1
	ds_load_2addr_stride64_b64 v[175:178], v154 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[179:182], v155 offset1:1
	ds_load_2addr_stride64_b64 v[183:186], v155 offset0:2 offset1:3
	.loc	1 794 38                        ; ragged.py:794:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v156, v[187:190]
	ds_store_b128 v156, v[191:194] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 795 31                        ; ragged.py:795:31
	ds_load_u8 v187, v143 offset:4352
	ds_load_u8 v188, v143 offset:4096
	ds_load_u8 v189, v143 offset:4864
	ds_load_u8 v190, v143 offset:4608
	ds_load_u8 v191, v143 offset:7424
	ds_load_u8 v192, v143 offset:7168
	ds_load_u8 v193, v143 offset:7936
	ds_load_u8 v194, v143 offset:7680
	ds_load_u8 v195, v143 offset:6400
	ds_load_u8 v196, v143 offset:6144
	ds_load_u8 v197, v143 offset:6912
	ds_load_u8 v198, v143 offset:6656
	ds_load_u8 v199, v143 offset:1280
	ds_load_u8 v200, v143 offset:1024
	ds_load_u8 v201, v143 offset:1792
	ds_load_u8 v202, v143 offset:1536
	ds_load_u8 v203, v143 offset:1920
	ds_load_u8 v204, v143 offset:1664
	ds_load_u8 v205, v143 offset:1408
	ds_load_u8 v206, v143 offset:1152
	ds_load_u8 v207, v143 offset:256
	ds_load_u8 v208, v143
	ds_load_u8 v209, v143 offset:768
	ds_load_u8 v210, v143 offset:512
	ds_load_u8 v211, v143 offset:896
	ds_load_u8 v212, v143 offset:640
	ds_load_u8 v213, v143 offset:384
	ds_load_u8 v214, v143 offset:128
	ds_load_u8 v215, v143 offset:3328
	ds_load_u8 v216, v143 offset:3072
	ds_load_u8 v217, v143 offset:3840
	ds_load_u8 v218, v143 offset:3584
	ds_load_u8 v219, v143 offset:3968
	ds_load_u8 v220, v143 offset:3712
	ds_load_u8 v221, v143 offset:3456
	ds_load_u8 v222, v143 offset:3200
	ds_load_u8 v223, v143 offset:2304
	ds_load_u8 v224, v143 offset:2048
	ds_load_u8 v225, v143 offset:2816
	ds_load_u8 v226, v143 offset:2560
	ds_load_u8 v227, v143 offset:2944
	ds_load_u8 v228, v143 offset:2688
	ds_load_u8 v229, v143 offset:2432
	ds_load_u8 v230, v143 offset:2176
	ds_load_u8 v231, v143 offset:5376
	ds_load_u8 v232, v143 offset:5120
	ds_load_u8 v233, v143 offset:5888
	ds_load_u8 v234, v143 offset:5632
	ds_load_u8 v235, v143 offset:6016
	ds_load_u8 v236, v143 offset:5760
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	ds_load_u8 v200, v143 offset:5504
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v201, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v207, v208, v207, 0xc0c0004
	ds_load_u8 v208, v143 offset:4992
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v209, v210, v209, 0xc0c0004
	ds_load_u8 v210, v143 offset:4736
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v215, v216, v215, 0xc0c0004
	ds_load_u8 v216, v143 offset:4480
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	ds_load_u8 v218, v143 offset:4224
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v223, v224, v223, 0xc0c0004
	ds_load_u8 v224, v143 offset:8064
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v225, v226, v225, 0xc0c0004
	ds_load_u8 v226, v143 offset:7808
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v231, v232, v231, 0xc0c0004
	ds_load_u8 v232, v143 offset:7552
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v233, v234, v233, 0xc0c0004
	ds_load_u8 v234, v143 offset:7296
	v_perm_b32 v237, v188, v187, 0xc0c0004
	ds_load_u8 v187, v143 offset:7040
	ds_load_u8 v188, v143 offset:6784
	v_perm_b32 v238, v190, v189, 0xc0c0004
	ds_load_u8 v189, v143 offset:6528
	ds_load_u8 v190, v143 offset:6272
	ds_load_u8 v202, v143 offset:5248
	v_perm_b32 v239, v192, v191, 0xc0c0004
	v_perm_b32 v193, v194, v193, 0xc0c0004
	v_perm_b32 v195, v196, v195, 0xc0c0004
	v_perm_b32 v196, v198, v197, 0xc0c0004
	v_perm_b32 v197, v206, v205, 0xc0c0004
	v_perm_b32 v198, v204, v203, 0xc0c0004
	v_perm_b32 v203, v214, v213, 0xc0c0004
	v_perm_b32 v204, v212, v211, 0xc0c0004
	v_perm_b32 v205, v222, v221, 0xc0c0004
	v_perm_b32 v206, v220, v219, 0xc0c0004
	v_perm_b32 v211, v230, v229, 0xc0c0004
	v_perm_b32 v212, v228, v227, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v213, v218, v216, 0xc0c0004
	v_lshl_or_b32 v194, v193, 16, v239
	v_lshl_or_b32 v193, v196, 16, v195
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v218, v188, v187, 0xc0c0004
	v_lshl_or_b32 v188, v201, 16, v199
	v_lshl_or_b32 v187, v209, 16, v207
	v_lshl_or_b32 v196, v198, 16, v197
	v_lshl_or_b32 v195, v204, 16, v203
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v200, v202, v200, 0xc0c0004
	v_perm_b32 v202, v236, v235, 0xc0c0004
	v_perm_b32 v208, v210, v208, 0xc0c0004
	v_perm_b32 v216, v190, v189, 0xc0c0004
	v_lshl_or_b32 v190, v217, 16, v215
	v_lshl_or_b32 v189, v225, 16, v223
	v_lshl_or_b32 v198, v206, 16, v205
	v_lshl_or_b32 v197, v212, 16, v211
	v_wmma_i32_16x16x16_iu4 v[0:7], v[187:188], v[64:65], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[195:196], v[64:65], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[187:188], v[66:67], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[195:196], v[66:67], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[187:188], v[68:69], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[195:196], v[68:69], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[187:188], v[70:71], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[195:196], v[70:71], v[56:63] neg_lo:[1,1,0]
	v_perm_b32 v210, v234, v232, 0xc0c0004
	v_perm_b32 v214, v226, v224, 0xc0c0004
	v_lshl_or_b32 v192, v233, 16, v231
	v_lshl_or_b32 v191, v238, 16, v237
	v_lshl_or_b32 v200, v202, 16, v200
	v_lshl_or_b32 v199, v208, 16, v213
	v_wmma_i32_16x16x16_iu4 v[0:7], v[189:190], v[163:164], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[197:198], v[163:164], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[189:190], v[165:166], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[197:198], v[165:166], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[189:190], v[167:168], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[197:198], v[167:168], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[189:190], v[169:170], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[197:198], v[169:170], v[56:63] neg_lo:[1,1,0]
	v_lshl_or_b32 v202, v214, 16, v210
	v_lshl_or_b32 v201, v218, 16, v216
	v_wmma_i32_16x16x16_iu4 v[0:7], v[191:192], v[171:172], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[199:200], v[171:172], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[191:192], v[173:174], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[199:200], v[173:174], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[191:192], v[175:176], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[199:200], v[175:176], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[191:192], v[177:178], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[199:200], v[177:178], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[193:194], v[179:180], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[201:202], v[179:180], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[193:194], v[181:182], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[201:202], v[181:182], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[193:194], v[183:184], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[201:202], v[183:184], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[193:194], v[185:186], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[201:202], v[185:186], v[56:63] neg_lo:[1,1,0]
	s_mov_b32 s22, s19
	.loc	1 775 23                        ; ragged.py:775:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 806 27                        ; ragged.py:806:27
	v_cvt_f32_i32_e32 v184, v0
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
	v_cvt_f32_i32_e32 v71, v24
	v_cvt_f32_i32_e32 v70, v25
	v_cvt_f32_i32_e32 v69, v26
	v_cvt_f32_i32_e32 v68, v27
	v_cvt_f32_i32_e32 v67, v28
	v_cvt_f32_i32_e32 v66, v29
	v_cvt_f32_i32_e32 v65, v30
	v_cvt_f32_i32_e32 v64, v31
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
.LBB0_10:                               ; %._crit_edge20
	.loc	1 827 22                        ; ragged.py:827:22
	v_mul_lo_u32 v0, s35, v89
	.loc	1 707 36                        ; ragged.py:707:36
	v_and_or_b32 v3, v105, 1, v104
	.loc	1 827 22                        ; ragged.py:827:22
	s_mul_i32 s1, s33, s35
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 707 18 is_stmt 1              ; ragged.py:707:18
	v_or_b32_e32 v1, s45, v3
	.loc	1 707 36 is_stmt 0              ; ragged.py:707:36
	v_or_b32_e32 v4, 0x80, v3
	.loc	1 827 22 is_stmt 1              ; ragged.py:827:22
	v_add3_u32 v0, s1, s45, v0
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v16, 6, v3
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s35, v1
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v2, s45, v4
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
	.loc	1 827 22                        ; ragged.py:827:22
	v_add_nc_u32_e32 v20, s23, v0
	s_mov_b32 s23, 0x31027000
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v2
	.loc	1 827 22                        ; ragged.py:827:22
	v_mad_u64_u32 v[1:2], null, s35, 48, v[0:1]
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	buffer_store_b32 v140, v21, s[20:23], 0 offen
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
	buffer_store_b32 v139, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	v_cndmask_b32_e64 v23, 0x80000000, v24, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v11, 0x82, v3
	v_or_b32_e32 v10, 0x84, v3
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v138, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v0, v13, 2
	s_clause 0x2
	buffer_store_b32 v137, v21, s[20:23], 0 offen
	buffer_store_b32 v136, v22, s[20:23], 0 offen
	buffer_store_b32 v135, v23, s[20:23], 0 offen
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
	buffer_store_b32 v134, v2, s[20:23], 0 offen
	buffer_store_b32 v133, v21, s[20:23], 0 offen
	buffer_store_b32 v132, v22, s[20:23], 0 offen
	buffer_store_b32 v131, v23, s[20:23], 0 offen
	buffer_store_b32 v130, v24, s[20:23], 0 offen
	v_add_lshl_u32 v2, v0, v9, 2
	v_add_lshl_u32 v21, v0, v8, 2
	v_add_lshl_u32 v22, v0, v7, 2
	v_add_lshl_u32 v23, v0, v6, 2
	.loc	1 827 22 is_stmt 0              ; ragged.py:827:22
	v_add_nc_u32_e32 v19, s44, v0
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v0, v0, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x4
	buffer_store_b32 v129, v2, s[20:23], 0 offen
	buffer_store_b32 v128, v21, s[20:23], 0 offen
	buffer_store_b32 v127, v22, s[20:23], 0 offen
	buffer_store_b32 v126, v23, s[20:23], 0 offen
	buffer_store_b32 v125, v0, s[20:23], 0 offen
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
	buffer_store_b32 v124, v0, s[20:23], 0 offen
	buffer_store_b32 v123, v2, s[20:23], 0 offen
	buffer_store_b32 v122, v21, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v14, 2
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v23, s1
	buffer_store_b32 v121, v22, s[20:23], 0 offen
	v_add_lshl_u32 v22, v19, v12, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	buffer_store_b32 v120, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s4, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v119, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x2
	buffer_store_b32 v118, v21, s[20:23], 0 offen
	buffer_store_b32 v117, v22, s[20:23], 0 offen
	buffer_store_b32 v116, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v21, v19, v9, 2
	v_add_lshl_u32 v22, v19, v8, 2
	v_add_lshl_u32 v23, v19, v7, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_store_b32 v115, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v21, s1
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	buffer_store_b32 v114, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v6, 2
	s_clause 0x2
	buffer_store_b32 v113, v2, s[20:23], 0 offen
	buffer_store_b32 v112, v21, s[20:23], 0 offen
	buffer_store_b32 v111, v22, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v5, 2
	v_add_lshl_u32 v19, v20, v3, 2
	v_add_lshl_u32 v21, v20, v18, 2
	v_add_lshl_u32 v22, v20, v17, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s9, s0
	s_and_b32 s0, s8, s0
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	s_clause 0x4
	buffer_store_b32 v110, v0, s[20:23], 0 offen
	buffer_store_b32 v109, v2, s[20:23], 0 offen
	buffer_store_b32 v108, v19, s[20:23], 0 offen
	buffer_store_b32 v107, v21, s[20:23], 0 offen
	buffer_store_b32 v106, v22, s[20:23], 0 offen
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
	buffer_store_b32 v103, v0, s[20:23], 0 offen
	buffer_store_b32 v102, v2, s[20:23], 0 offen
	buffer_store_b32 v101, v19, s[20:23], 0 offen
	buffer_store_b32 v100, v21, s[20:23], 0 offen
	buffer_store_b32 v99, v22, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_add_lshl_u32 v2, v20, v11, 2
	v_add_lshl_u32 v19, v20, v10, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s9, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v21, v20, v9, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v22, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	s_clause 0x2
	buffer_store_b32 v98, v0, s[20:23], 0 offen
	buffer_store_b32 v97, v2, s[20:23], 0 offen
	buffer_store_b32 v96, v19, s[20:23], 0 offen
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v0, 0x80000000, v22, s1
	v_add_lshl_u32 v19, v20, v6, 2
	v_add_lshl_u32 v20, v20, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_clause 0x1
	buffer_store_b32 v95, v21, s[20:23], 0 offen
	buffer_store_b32 v94, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v3, 2
	v_cndmask_b32_e64 v3, 0x80000000, v19, s1
	v_cndmask_b32_e64 v19, 0x80000000, v20, s1
	buffer_store_b32 v93, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	s_clause 0x2
	buffer_store_b32 v92, v3, s[20:23], 0 offen
	buffer_store_b32 v91, v19, s[20:23], 0 offen
	buffer_store_b32 v90, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v16, 2
	v_add_lshl_u32 v15, v1, v15, 2
	v_add_lshl_u32 v14, v1, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_store_b32 v88, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v3, s0
	v_cndmask_b32_e64 v3, 0x80000000, v15, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	buffer_store_b32 v87, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v13, 2
	s_clause 0x2
	buffer_store_b32 v86, v2, s[20:23], 0 offen
	buffer_store_b32 v85, v3, s[20:23], 0 offen
	buffer_store_b32 v84, v14, s[20:23], 0 offen
	v_add_lshl_u32 v2, v1, v12, 2
	v_add_lshl_u32 v3, v1, v4, 2
	v_add_lshl_u32 v4, v1, v11, 2
	v_add_lshl_u32 v10, v1, v10, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 vcc_lo, s8, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	s_clause 0x4
	buffer_store_b32 v83, v0, s[20:23], 0 offen
	buffer_store_b32 v82, v2, s[20:23], 0 offen
	buffer_store_b32 v81, v3, s[20:23], 0 offen
	buffer_store_b32 v80, v4, s[20:23], 0 offen
	buffer_store_b32 v79, v10, s[20:23], 0 offen
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
	buffer_store_b32 v78, v0, s[20:23], 0 offen
	buffer_store_b32 v77, v2, s[20:23], 0 offen
	buffer_store_b32 v76, v3, s[20:23], 0 offen
	buffer_store_b32 v75, v4, s[20:23], 0 offen
	buffer_store_b32 v74, v1, s[20:23], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 240
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 240
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8608
; TotalNumSgprs: 54
; NumVgprs: 240
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 240
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     240
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
