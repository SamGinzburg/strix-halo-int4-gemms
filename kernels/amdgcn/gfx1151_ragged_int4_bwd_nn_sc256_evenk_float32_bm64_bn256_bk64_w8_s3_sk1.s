	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 674 0                         ; ragged.py:674:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[10:11], s[0:1], 0x30
.Ltmp0:
	.loc	1 701 20 prologue_end           ; ragged.py:701:20
	s_abs_i32 s9, s2
	.loc	1 706 36                        ; ragged.py:706:36
	v_and_b32_e32 v122, 15, v0
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
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s6, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 700 27 is_stmt 1              ; ragged.py:700:27
	s_mul_i32 s4, s6, s4
	.loc	1 701 20                        ; ragged.py:701:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s8, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s12, s7, s5
	s_sub_i32 s9, s9, s12
	s_add_i32 s12, s7, 1
	s_sub_i32 s13, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s7, s12, s7
	s_cselect_b32 s9, s13, s9
	s_add_i32 s12, s7, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s12, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s7, s6
	.loc	1 701 20                        ; ragged.py:701:20
	s_xor_b32 s5, s5, s8
	.loc	1 703 17                        ; ragged.py:703:17
	s_cvt_f32_u32 s9, s7
	.loc	1 701 20                        ; ragged.py:701:20
	s_sub_i32 s22, s5, s8
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s5, 0, s7
	.loc	1 702 22                        ; ragged.py:702:22
	s_mul_i32 s4, s22, s4
	.loc	1 703 17                        ; ragged.py:703:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 702 16                        ; ragged.py:702:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s8, s2
	s_xor_b32 s12, s2, s6
	s_ashr_i32 s12, s12, 31
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
	s_mul_i32 s13, s9, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s13
	s_add_i32 s13, s9, 1
	s_sub_i32 s14, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s9, s13, s9
	s_cselect_b32 s8, s14, s8
	s_add_i32 s13, s9, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s7, s13, s9
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s23, s22, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s7, s7, s12
	.loc	1 710 19                        ; ragged.py:710:19
	s_lshl_b64 s[8:9], s[22:23], 2
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s7, s7, s12
	s_mov_b32 s13, 0
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s6, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 704 17 is_stmt 0              ; ragged.py:704:17
	s_sub_i32 s12, s2, s6
	.loc	1 706 18 is_stmt 1              ; ragged.py:706:18
	s_lshl_b32 s6, s7, 6
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v2, s6, v122
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s24, s[4:5], 0x0
	.loc	1 780 39                        ; ragged.py:780:39
	s_mul_i32 s7, s22, s10
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
	v_cmp_gt_i32_e64 s2, s10, v5
	.loc	1 711 27                        ; ragged.py:711:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s24, s24, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 771 19                        ; ragged.py:771:19
	s_cmp_gt_i32 s24, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge4_crit_edge
	.loc	1 827 22                        ; ragged.py:827:22
	s_add_i32 s9, s6, s7
	s_lshl_b32 s23, s11, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s13, -1
                                        ; implicit-def: $sgpr9
                                        ; implicit-def: $sgpr23
.LBB0_3:                                ; %Flow233
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v136, 0x70, v1
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_lshrrev_b32_e32 v138, 4, v0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_mov_b32_e32 v163, 0
	s_and_not1_b32 vcc_lo, exec_lo, s13
	s_lshl_b32 s33, s12, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x38
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 706 36 is_stmt 1              ; ragged.py:706:36
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 774 23                        ; ragged.py:774:23
	s_lshl_b32 s3, s3, 5
	.loc	1 711 26                        ; ragged.py:711:26
	s_lshr_b32 s30, s24, 1
	v_dual_mov_b32 v164, 0 :: v_dual_lshlrev_b32 v5, 3, v0
	v_dual_mov_b32 v163, 0 :: v_dual_lshlrev_b32 v2, 4, v122
	s_cmpk_lt_i32 s3, 0x80
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v7, s6, v4
	s_cselect_b32 s31, -1, 0
	s_add_i32 s9, s6, s7
	v_dual_mov_b32 v162, 0 :: v_dual_and_b32 v3, 24, v5
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v4, s9, v4
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v8, s33, v2
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s1, s10, v7
	v_dual_mov_b32 v160, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[96:97], null, v4, s28, v[3:4]
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v165, s33, v0
	v_dual_mov_b32 v161, 0 :: v_dual_and_b32 v6, 0xf0, v0
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s6, s11, v8
	v_mad_u64_u32 v[97:98], null, s11, v138, v[2:3]
	v_dual_mov_b32 v157, 0 :: v_dual_and_b32 v2, 24, v7
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v4, s9, v122
	v_dual_mov_b32 v153, 0 :: v_dual_lshlrev_b32 v8, 4, v0
	v_dual_mov_b32 v149, 0 :: v_dual_lshlrev_b32 v0, 5, v0
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v1, 24, v1
	v_lshl_or_b32 v166, v122, 5, v2
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v9, 16, v4
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v10, 32, v4
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v11, 48, v4
	v_mul_lo_u32 v168, v4, s29
	v_dual_mov_b32 v147, 0 :: v_dual_lshlrev_b32 v4, 2, v6
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v0, 32, v0
	v_xor_b32_e32 v1, v5, v1
	v_xor_b32_e32 v2, 8, v166
	v_xor_b32_e32 v3, 16, v166
	v_xor_b32_e32 v5, 24, v166
	v_mul_lo_u32 v169, v9, s29
	v_dual_mov_b32 v152, 0 :: v_dual_and_b32 v7, 28, v7
	v_cndmask_b32_e64 v9, 0, 1, s31
	v_add3_u32 v0, 0, v4, v0
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v4, 1, v6
	v_mul_lo_u32 v170, v10, s29
	v_mul_lo_u32 v171, v11, s29
	v_cmp_gt_i32_e64 s0, s11, v165
	v_add3_u32 v167, 0, v136, v122
	v_cmp_ne_u32_e64 s7, 1, v9
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v172, 0, v1
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v173, 0, v2
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v174, 0, v3
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v175, 0, v5
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v176, 0, v8
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v177, v0, v7
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v178, 0, v4
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v99, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v98, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 771 19                        ; ragged.py:771:19
	s_add_i32 s30, s30, -1
	.loc	1 784 39                        ; ragged.py:784:39
	s_mul_i32 s10, s22, s28
	.loc	1 816 37                        ; ragged.py:816:37
	s_mul_i32 s22, s22, s29
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_lshl_b32 s23, s11, 4
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s34, 0
	.loc	1 771 19                        ; ragged.py:771:19
	s_lshr_b32 s35, s30, 7
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_mov_b32 s36, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v32, v168, s34, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_add_i32 s14, s34, s22
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v33, v169, s34, 1
	v_add_lshl_u32 v34, v170, s34, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_mul_i32 s14, s14, s11
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v35, v171, s34, 1
	.loc	1 815 40                        ; ragged.py:815:40
	v_add_lshl_u32 v36, v165, s14, 1
	.loc	1 808 40                        ; ragged.py:808:40
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	v_cndmask_b32_e64 v34, 0x80000000, v34, s8
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
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
	s_add_i32 s14, s34, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 771 19                        ; ragged.py:771:19
	s_lshl_b32 s36, s14, 7
	s_cmp_lg_u32 s34, s35
	s_mov_b32 s34, s14
	.loc	1 808 40                        ; ragged.py:808:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 813 21                        ; ragged.py:813:21
	v_dual_mul_f32 v53, v78, v33 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v37, v95, v32 :: v_dual_lshlrev_b32 v34, 16, v34
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v40, v92, v32 :: v_dual_lshlrev_b32 v35, 16, v35
	v_mul_f32_e32 v38, v94, v32
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v55, v76, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_dual_mul_f32 v39, v93, v32 :: v_dual_mul_f32 v52, v79, v33
	v_dual_mul_f32 v41, v91, v32 :: v_dual_mul_f32 v54, v77, v33
	v_dual_mul_f32 v42, v90, v32 :: v_dual_mul_f32 v59, v72, v33
	v_dual_mul_f32 v43, v89, v32 :: v_dual_mul_f32 v56, v75, v33
	v_dual_mul_f32 v44, v88, v32 :: v_dual_mul_f32 v57, v74, v33
	v_dual_mul_f32 v45, v87, v32 :: v_dual_mul_f32 v58, v73, v33
	v_dual_mul_f32 v46, v86, v32 :: v_dual_mul_f32 v63, v68, v33
	v_dual_mul_f32 v47, v85, v32 :: v_dual_mul_f32 v60, v71, v33
	v_dual_mul_f32 v48, v84, v32 :: v_dual_mul_f32 v61, v70, v33
	v_dual_mul_f32 v49, v83, v32 :: v_dual_mul_f32 v62, v69, v33
	v_dual_mul_f32 v50, v82, v32 :: v_dual_mul_f32 v67, v67, v33
	v_dual_mul_f32 v51, v81, v32 :: v_dual_mul_f32 v66, v66, v33
	v_dual_mul_f32 v32, v80, v32 :: v_dual_mul_f32 v65, v65, v33
	v_dual_mul_f32 v33, v64, v33 :: v_dual_mul_f32 v30, v30, v34
	v_dual_mul_f32 v31, v31, v34 :: v_dual_mul_f32 v14, v14, v35
	v_dual_mul_f32 v29, v29, v34 :: v_dual_mul_f32 v78, v12, v35
	v_dual_mul_f32 v28, v28, v34 :: v_dual_mul_f32 v15, v15, v35
	v_dual_mul_f32 v64, v27, v34 :: v_dual_mul_f32 v9, v9, v35
	v_dual_mul_f32 v68, v26, v34 :: v_dual_mul_f32 v79, v11, v35
	v_dual_mul_f32 v69, v25, v34 :: v_dual_mul_f32 v80, v10, v35
	v_dual_mul_f32 v70, v24, v34 :: v_dual_mul_f32 v7, v7, v35
	v_mul_f32_e32 v71, v23, v34
	v_dual_mul_f32 v72, v22, v34 :: v_dual_mul_f32 v5, v5, v35
	v_dual_mul_f32 v73, v21, v34 :: v_dual_mul_f32 v8, v8, v35
	v_dual_mul_f32 v74, v20, v34 :: v_dual_mul_f32 v3, v3, v35
	v_dual_mul_f32 v75, v19, v34 :: v_dual_mul_f32 v6, v6, v35
	v_dual_mul_f32 v76, v18, v34 :: v_dual_mul_f32 v1, v1, v35
	v_dual_mul_f32 v77, v17, v34 :: v_dual_mul_f32 v4, v4, v35
	v_mul_f32_e32 v34, v16, v34
	.loc	1 820 21                        ; ragged.py:820:21
	ds_store_b32 v177, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v178
	ds_load_b128 v[20:23], v178 offset:16
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v36, v13, v35
	.loc	1 820 21                        ; ragged.py:820:21
	ds_load_b128 v[10:13], v178 offset:512
	ds_load_b128 v[24:27], v178 offset:528
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v2, v2, v35
	v_mul_f32_e32 v0, v0, v35
	.loc	1 821 17                        ; ragged.py:821:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v164, v37, v16 :: v_dual_fmac_f32 v161, v40, v19
	v_dual_fmac_f32 v163, v38, v17 :: v_dual_fmac_f32 v162, v39, v18
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v157, v44, v23 :: v_dual_fmac_f32 v160, v41, v20
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v155, v46, v11
	v_dual_fmac_f32 v159, v42, v21 :: v_dual_fmac_f32 v158, v43, v22
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v151, v50, v25 :: v_dual_fmac_f32 v156, v45, v10
	v_dual_fmac_f32 v149, v32, v27 :: v_dual_fmac_f32 v154, v47, v12
	v_fmac_f32_e32 v147, v53, v17
	v_dual_fmac_f32 v153, v48, v13 :: v_dual_fmac_f32 v152, v49, v24
	v_fmac_f32_e32 v145, v55, v19
	v_dual_fmac_f32 v150, v51, v26 :: v_dual_fmac_f32 v143, v57, v21
	v_dual_fmac_f32 v148, v52, v16 :: v_dual_fmac_f32 v141, v59, v23
	v_dual_fmac_f32 v146, v54, v18 :: v_dual_fmac_f32 v139, v61, v11
	v_dual_fmac_f32 v144, v56, v20 :: v_dual_fmac_f32 v135, v63, v13
	v_dual_fmac_f32 v142, v58, v22 :: v_dual_fmac_f32 v131, v33, v27
	v_dual_fmac_f32 v140, v60, v10 :: v_dual_fmac_f32 v137, v62, v12
	v_dual_fmac_f32 v134, v67, v24 :: v_dual_fmac_f32 v133, v66, v25
	v_dual_fmac_f32 v132, v65, v26 :: v_dual_fmac_f32 v129, v30, v17
	v_dual_fmac_f32 v130, v31, v16 :: v_dual_fmac_f32 v127, v28, v19
	v_dual_fmac_f32 v128, v29, v18 :: v_dual_fmac_f32 v125, v68, v21
	v_dual_fmac_f32 v126, v64, v20 :: v_dual_fmac_f32 v123, v70, v23
	v_dual_fmac_f32 v124, v69, v22 :: v_dual_fmac_f32 v117, v75, v24
	v_dual_fmac_f32 v121, v71, v10 :: v_dual_fmac_f32 v120, v72, v11
	v_dual_fmac_f32 v119, v73, v12 :: v_dual_fmac_f32 v118, v74, v13
	v_dual_fmac_f32 v116, v76, v25 :: v_dual_fmac_f32 v115, v77, v26
	v_dual_fmac_f32 v114, v34, v27 :: v_dual_fmac_f32 v113, v15, v16
	v_dual_fmac_f32 v112, v14, v17 :: v_dual_fmac_f32 v111, v36, v18
	v_dual_fmac_f32 v110, v78, v19 :: v_dual_fmac_f32 v109, v79, v20
	v_dual_fmac_f32 v108, v80, v21 :: v_dual_fmac_f32 v107, v9, v22
	v_dual_fmac_f32 v106, v8, v23 :: v_dual_fmac_f32 v105, v7, v10
	v_dual_fmac_f32 v104, v6, v11 :: v_dual_fmac_f32 v103, v5, v12
	v_dual_fmac_f32 v102, v4, v13 :: v_dual_fmac_f32 v101, v3, v24
	v_dual_fmac_f32 v100, v2, v25 :: v_dual_fmac_f32 v99, v1, v26
	v_fmac_f32_e32 v98, v0, v27
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
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	.loc	1 775 23 is_stmt 1              ; ragged.py:775:23
	s_and_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v0, 0
	s_mov_b32 s37, s3
	s_delay_alu instid0(VALU_DEP_1)
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
	s_add_i32 s38, s37, s36
	v_add_nc_u32_e32 v64, s23, v97
	.loc	1 786 46                        ; ragged.py:786:46
	v_add_nc_u32_e32 v65, s38, v96
	.loc	1 787 46                        ; ragged.py:787:46
	s_add_i32 s38, s38, s10
	.loc	1 787 38 is_stmt 0              ; ragged.py:787:38
	s_mov_b32 s14, s26
	.loc	1 787 46                        ; ragged.py:787:46
	s_mul_i32 s38, s38, s11
	.loc	1 787 38                        ; ragged.py:787:38
	s_mov_b32 s15, s27
	.loc	1 787 46                        ; ragged.py:787:46
	s_add_i32 s38, s38, s33
	.loc	1 786 38 is_stmt 1              ; ragged.py:786:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	v_add_nc_u32_e32 v66, s38, v97
	v_add_nc_u32_e32 v67, s38, v64
	buffer_load_b64 v[64:65], v65, s[24:27], 0 offen
	.loc	1 787 38                        ; ragged.py:787:38
	v_cndmask_b32_e64 v66, 0x80000000, v66, s6
	v_cndmask_b32_e64 v67, 0x80000000, v67, s6
	s_clause 0x1
	buffer_load_b128 v[179:182], v66, s[12:15], 0 offen
	buffer_load_b128 v[183:186], v67, s[12:15], 0 offen
	.loc	1 786 38                        ; ragged.py:786:38
	v_add_nc_u32_e32 v66, 0, v166
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 805 21                        ; ragged.py:805:21
	s_add_i32 s14, s37, 32
	.loc	1 775 23                        ; ragged.py:775:23
	s_cmpk_lt_i32 s37, 0x60
	s_mov_b32 s37, s14
	.loc	1 786 38                        ; ragged.py:786:38
	s_waitcnt vmcnt(2)
	ds_store_b64 v172, v[64:65]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[92:95], v66 offset1:1
	ds_load_2addr_stride64_b64 v[88:91], v66 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[84:87], v173 offset1:1
	ds_load_2addr_stride64_b64 v[80:83], v173 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[76:79], v174 offset1:1
	ds_load_2addr_stride64_b64 v[72:75], v174 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[68:71], v175 offset1:1
	ds_load_2addr_stride64_b64 v[64:67], v175 offset0:2 offset1:3
	.loc	1 787 38                        ; ragged.py:787:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v176, v[179:182]
	s_waitcnt vmcnt(0)
	ds_store_b128 v176, v[183:186] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 795 31                        ; ragged.py:795:31
	ds_load_u8 v179, v167 offset:1280
	ds_load_u8 v180, v167 offset:1024
	ds_load_u8 v181, v167 offset:1792
	ds_load_u8 v182, v167 offset:1536
	ds_load_u8 v183, v167 offset:1920
	ds_load_u8 v184, v167 offset:1664
	ds_load_u8 v185, v167 offset:1408
	ds_load_u8 v186, v167 offset:1152
	ds_load_u8 v187, v167 offset:256
	ds_load_u8 v188, v167
	ds_load_u8 v189, v167 offset:768
	ds_load_u8 v190, v167 offset:512
	ds_load_u8 v191, v167 offset:896
	ds_load_u8 v192, v167 offset:640
	ds_load_u8 v193, v167 offset:384
	ds_load_u8 v194, v167 offset:128
	ds_load_u8 v195, v167 offset:3328
	ds_load_u8 v196, v167 offset:3072
	ds_load_u8 v197, v167 offset:3840
	ds_load_u8 v198, v167 offset:3584
	ds_load_u8 v199, v167 offset:3968
	ds_load_u8 v200, v167 offset:3712
	ds_load_u8 v201, v167 offset:3456
	ds_load_u8 v202, v167 offset:3200
	ds_load_u8 v203, v167 offset:2304
	ds_load_u8 v204, v167 offset:2048
	ds_load_u8 v205, v167 offset:2816
	ds_load_u8 v206, v167 offset:2560
	ds_load_u8 v207, v167 offset:2944
	ds_load_u8 v208, v167 offset:2688
	ds_load_u8 v209, v167 offset:2432
	ds_load_u8 v210, v167 offset:2176
	ds_load_u8 v211, v167 offset:5376
	ds_load_u8 v212, v167 offset:5120
	ds_load_u8 v213, v167 offset:5888
	ds_load_u8 v214, v167 offset:5632
	ds_load_u8 v215, v167 offset:6016
	ds_load_u8 v216, v167 offset:5760
	ds_load_u8 v217, v167 offset:5504
	ds_load_u8 v218, v167 offset:5248
	ds_load_u8 v219, v167 offset:4352
	ds_load_u8 v220, v167 offset:4096
	ds_load_u8 v221, v167 offset:4864
	ds_load_u8 v222, v167 offset:4608
	ds_load_u8 v223, v167 offset:4992
	ds_load_u8 v224, v167 offset:4736
	ds_load_u8 v225, v167 offset:4480
	ds_load_u8 v226, v167 offset:4224
	ds_load_u8 v227, v167 offset:7424
	ds_load_u8 v228, v167 offset:7168
	ds_load_u8 v229, v167 offset:7936
	ds_load_u8 v230, v167 offset:7680
	ds_load_u8 v231, v167 offset:8064
	ds_load_u8 v232, v167 offset:7808
	ds_load_u8 v233, v167 offset:7552
	ds_load_u8 v234, v167 offset:7296
	ds_load_u8 v235, v167 offset:6400
	ds_load_u8 v236, v167 offset:6144
	ds_load_u8 v237, v167 offset:6912
	ds_load_u8 v238, v167 offset:6656
	ds_load_u8 v239, v167 offset:7040
	ds_load_u8 v240, v167 offset:6784
	ds_load_u8 v241, v167 offset:6528
	ds_load_u8 v242, v167 offset:6272
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v180, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v181, v188, v187, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v182, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v187, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v188, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v195, v212, v211, 0xc0c0004
	v_perm_b32 v211, v186, v185, 0xc0c0004
	v_perm_b32 v212, v184, v183, 0xc0c0004
	v_perm_b32 v193, v194, v193, 0xc0c0004
	v_perm_b32 v191, v192, v191, 0xc0c0004
	v_perm_b32 v189, v204, v203, 0xc0c0004
	v_perm_b32 v190, v206, v205, 0xc0c0004
	v_perm_b32 v192, v202, v201, 0xc0c0004
	v_perm_b32 v194, v200, v199, 0xc0c0004
	v_perm_b32 v199, v210, v209, 0xc0c0004
	v_perm_b32 v200, v208, v207, 0xc0c0004
	v_lshl_or_b32 v180, v180, 16, v179
	v_lshl_or_b32 v179, v182, 16, v181
	v_lshl_or_b32 v182, v188, 16, v187
	v_lshl_or_b32 v188, v212, 16, v211
	v_lshl_or_b32 v187, v191, 16, v193
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v196, v214, v213, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v197, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v198, v222, v221, 0xc0c0004
	v_perm_b32 v201, v218, v217, 0xc0c0004
	v_perm_b32 v202, v216, v215, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v207, v226, v225, 0xc0c0004
	v_perm_b32 v208, v224, v223, 0xc0c0004
	v_lshl_or_b32 v181, v190, 16, v189
	v_lshl_or_b32 v190, v194, 16, v192
	v_lshl_or_b32 v189, v200, 16, v199
	v_wmma_i32_16x16x16_iu4 v[0:7], v[179:180], v[92:93], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[187:188], v[92:93], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[179:180], v[94:95], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[187:188], v[94:95], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[179:180], v[88:89], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[187:188], v[88:89], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[179:180], v[90:91], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[187:188], v[90:91], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v203, v228, v227, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v204, v230, v229, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v205, v236, v235, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v206, v238, v237, 0xc0c0004
	v_perm_b32 v209, v234, v233, 0xc0c0004
	v_perm_b32 v210, v232, v231, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v213, v242, v241, 0xc0c0004
	v_perm_b32 v214, v240, v239, 0xc0c0004
	v_lshl_or_b32 v184, v196, 16, v195
	v_lshl_or_b32 v183, v198, 16, v197
	v_lshl_or_b32 v192, v202, 16, v201
	v_lshl_or_b32 v191, v208, 16, v207
	v_wmma_i32_16x16x16_iu4 v[0:7], v[181:182], v[84:85], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[189:190], v[84:85], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[181:182], v[86:87], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[189:190], v[86:87], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[181:182], v[80:81], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[189:190], v[80:81], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[181:182], v[82:83], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[189:190], v[82:83], v[56:63] neg_lo:[1,1,0]
	v_lshl_or_b32 v186, v204, 16, v203
	v_lshl_or_b32 v185, v206, 16, v205
	v_lshl_or_b32 v194, v210, 16, v209
	v_lshl_or_b32 v193, v214, 16, v213
	v_wmma_i32_16x16x16_iu4 v[0:7], v[183:184], v[76:77], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[191:192], v[76:77], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[183:184], v[78:79], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[191:192], v[78:79], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[183:184], v[72:73], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[191:192], v[72:73], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[183:184], v[74:75], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[191:192], v[74:75], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[185:186], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[193:194], v[68:69], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[185:186], v[70:71], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[193:194], v[70:71], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[185:186], v[64:65], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[193:194], v[64:65], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[185:186], v[66:67], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[193:194], v[66:67], v[56:63] neg_lo:[1,1,0]
	.loc	1 775 23                        ; ragged.py:775:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 806 27                        ; ragged.py:806:27
	v_cvt_f32_i32_e32 v95, v0
	v_cvt_f32_i32_e32 v94, v1
	v_cvt_f32_i32_e32 v93, v2
	v_cvt_f32_i32_e32 v92, v3
	v_cvt_f32_i32_e32 v91, v4
	v_cvt_f32_i32_e32 v90, v5
	v_cvt_f32_i32_e32 v89, v6
	v_cvt_f32_i32_e32 v88, v7
	v_cvt_f32_i32_e32 v87, v8
	v_cvt_f32_i32_e32 v86, v9
	v_cvt_f32_i32_e32 v85, v10
	v_cvt_f32_i32_e32 v84, v11
	v_cvt_f32_i32_e32 v83, v12
	v_cvt_f32_i32_e32 v82, v13
	v_cvt_f32_i32_e32 v81, v14
	v_cvt_f32_i32_e32 v80, v15
	v_cvt_f32_i32_e32 v79, v16
	v_cvt_f32_i32_e32 v78, v17
	v_cvt_f32_i32_e32 v77, v18
	v_cvt_f32_i32_e32 v76, v19
	v_cvt_f32_i32_e32 v75, v20
	v_cvt_f32_i32_e32 v74, v21
	v_cvt_f32_i32_e32 v73, v22
	v_cvt_f32_i32_e32 v72, v23
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
.LBB0_10:                               ; %._crit_edge4
	.loc	1 827 22                        ; ragged.py:827:22
	v_mul_lo_u32 v0, s11, v122
	.loc	1 707 36                        ; ragged.py:707:36
	v_and_or_b32 v3, v138, 1, v136
	.loc	1 827 22                        ; ragged.py:827:22
	s_mul_i32 s1, s9, s11
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
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
	.loc	1 827 22                        ; ragged.py:827:22
	v_add_nc_u32_e32 v19, s23, v0
	s_mov_b32 s23, 0x31027000
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e32 vcc_lo, s11, v2
	.loc	1 827 22                        ; ragged.py:827:22
	v_mad_u64_u32 v[1:2], null, s11, 48, v[0:1]
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	buffer_store_b32 v164, v21, s[20:23], 0 offen
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
	buffer_store_b32 v163, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	v_cndmask_b32_e64 v23, 0x80000000, v24, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v11, 0x82, v3
	v_or_b32_e32 v10, 0x84, v3
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v162, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v0, v13, 2
	s_clause 0x2
	buffer_store_b32 v161, v21, s[20:23], 0 offen
	buffer_store_b32 v160, v22, s[20:23], 0 offen
	buffer_store_b32 v159, v23, s[20:23], 0 offen
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
	buffer_store_b32 v158, v2, s[20:23], 0 offen
	buffer_store_b32 v157, v21, s[20:23], 0 offen
	buffer_store_b32 v156, v22, s[20:23], 0 offen
	buffer_store_b32 v155, v23, s[20:23], 0 offen
	buffer_store_b32 v154, v24, s[20:23], 0 offen
	v_add_lshl_u32 v2, v0, v9, 2
	v_add_lshl_u32 v21, v0, v8, 2
	v_add_lshl_u32 v22, v0, v7, 2
	v_add_lshl_u32 v23, v0, v6, 2
	.loc	1 827 22 is_stmt 0              ; ragged.py:827:22
	v_lshl_add_u32 v20, s11, 5, v0
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v0, v0, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x4
	buffer_store_b32 v153, v2, s[20:23], 0 offen
	buffer_store_b32 v152, v21, s[20:23], 0 offen
	buffer_store_b32 v151, v22, s[20:23], 0 offen
	buffer_store_b32 v150, v23, s[20:23], 0 offen
	buffer_store_b32 v149, v0, s[20:23], 0 offen
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
	buffer_store_b32 v148, v0, s[20:23], 0 offen
	buffer_store_b32 v147, v2, s[20:23], 0 offen
	buffer_store_b32 v146, v21, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v14, 2
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v23, s1
	buffer_store_b32 v145, v22, s[20:23], 0 offen
	v_add_lshl_u32 v22, v19, v12, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	buffer_store_b32 v144, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s4, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v143, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x2
	buffer_store_b32 v142, v21, s[20:23], 0 offen
	buffer_store_b32 v141, v22, s[20:23], 0 offen
	buffer_store_b32 v140, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v21, v19, v9, 2
	v_add_lshl_u32 v22, v19, v8, 2
	v_add_lshl_u32 v23, v19, v7, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_store_b32 v139, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v21, s1
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	buffer_store_b32 v137, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v6, 2
	s_clause 0x2
	buffer_store_b32 v135, v2, s[20:23], 0 offen
	buffer_store_b32 v134, v21, s[20:23], 0 offen
	buffer_store_b32 v133, v22, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v5, 2
	v_add_lshl_u32 v19, v20, v3, 2
	v_add_lshl_u32 v21, v20, v18, 2
	v_add_lshl_u32 v22, v20, v17, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s8, s0
	s_and_b32 s0, s2, s0
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	s_clause 0x4
	buffer_store_b32 v132, v0, s[20:23], 0 offen
	buffer_store_b32 v131, v2, s[20:23], 0 offen
	buffer_store_b32 v130, v19, s[20:23], 0 offen
	buffer_store_b32 v129, v21, s[20:23], 0 offen
	buffer_store_b32 v128, v22, s[20:23], 0 offen
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
	buffer_store_b32 v127, v0, s[20:23], 0 offen
	buffer_store_b32 v126, v2, s[20:23], 0 offen
	buffer_store_b32 v125, v19, s[20:23], 0 offen
	buffer_store_b32 v124, v21, s[20:23], 0 offen
	buffer_store_b32 v123, v22, s[20:23], 0 offen
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
	buffer_store_b32 v121, v0, s[20:23], 0 offen
	buffer_store_b32 v120, v2, s[20:23], 0 offen
	buffer_store_b32 v119, v19, s[20:23], 0 offen
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v0, 0x80000000, v22, s1
	v_add_lshl_u32 v19, v20, v6, 2
	v_add_lshl_u32 v20, v20, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_clause 0x1
	buffer_store_b32 v118, v21, s[20:23], 0 offen
	buffer_store_b32 v117, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v3, 2
	v_cndmask_b32_e64 v3, 0x80000000, v19, s1
	v_cndmask_b32_e64 v19, 0x80000000, v20, s1
	buffer_store_b32 v116, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	s_clause 0x2
	buffer_store_b32 v115, v3, s[20:23], 0 offen
	buffer_store_b32 v114, v19, s[20:23], 0 offen
	buffer_store_b32 v113, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v16, 2
	v_add_lshl_u32 v15, v1, v15, 2
	v_add_lshl_u32 v14, v1, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_store_b32 v112, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v3, s0
	v_cndmask_b32_e64 v3, 0x80000000, v15, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	buffer_store_b32 v111, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v13, 2
	s_clause 0x2
	buffer_store_b32 v110, v2, s[20:23], 0 offen
	buffer_store_b32 v109, v3, s[20:23], 0 offen
	buffer_store_b32 v108, v14, s[20:23], 0 offen
	v_add_lshl_u32 v2, v1, v12, 2
	v_add_lshl_u32 v3, v1, v4, 2
	v_add_lshl_u32 v4, v1, v11, 2
	v_add_lshl_u32 v10, v1, v10, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	s_clause 0x4
	buffer_store_b32 v107, v0, s[20:23], 0 offen
	buffer_store_b32 v106, v2, s[20:23], 0 offen
	buffer_store_b32 v105, v3, s[20:23], 0 offen
	buffer_store_b32 v104, v4, s[20:23], 0 offen
	buffer_store_b32 v103, v10, s[20:23], 0 offen
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
	buffer_store_b32 v102, v0, s[20:23], 0 offen
	buffer_store_b32 v101, v2, s[20:23], 0 offen
	buffer_store_b32 v100, v3, s[20:23], 0 offen
	buffer_store_b32 v99, v4, s[20:23], 0 offen
	buffer_store_b32 v98, v1, s[20:23], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 243
		.amdhsa_next_free_sgpr 39
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
		.amdhsa_inst_pref_size 53
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 243
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6668
; TotalNumSgprs: 41
; NumVgprs: 243
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 243
; Occupancy: 5
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc256_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     243
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
