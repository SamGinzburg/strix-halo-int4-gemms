	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
	v_and_b32_e32 v103, 15, v0
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
	s_mul_i32 s10, s7, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s7
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s7, s6
	.loc	1 701 20                        ; ragged.py:701:20
	s_xor_b32 s5, s5, s8
	.loc	1 703 17                        ; ragged.py:703:17
	s_cvt_f32_u32 s9, s7
	.loc	1 701 20                        ; ragged.py:701:20
	s_sub_i32 s8, s5, s8
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s5, 0, s7
	.loc	1 702 22                        ; ragged.py:702:22
	s_mul_i32 s4, s8, s4
	.loc	1 703 17                        ; ragged.py:703:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 702 16                        ; ragged.py:702:16
	s_sub_i32 s2, s2, s4
	.loc	1 809 37                        ; ragged.py:809:37
	s_mul_i32 s28, s8, s34
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s10, s2
	s_xor_b32 s11, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s11, s11, 31
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s5
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s9, s7
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s7
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s7, s12, s9
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s9, s8, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s7, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s12, s7, s11
	.loc	1 710 19                        ; ragged.py:710:19
	s_lshl_b64 s[10:11], s[8:9], 2
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s6, s12, s6
	.loc	1 706 18                        ; ragged.py:706:18
	s_lshl_b32 s9, s12, 6
	.loc	1 704 17                        ; ragged.py:704:17
	s_sub_i32 s7, s2, s6
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v1, s9, v103
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s6, s[4:5], 0x0
	s_mov_b32 s12, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s5, s34, v1
	v_cmp_gt_i32_e64 s4, s34, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s10, s34, v3
	v_cmp_gt_i32_e64 s2, s34, v4
	.loc	1 711 27                        ; ragged.py:711:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 771 19                        ; ragged.py:771:19
	s_cmp_gt_i32 s6, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge11_crit_edge
	.loc	1 827 22                        ; ragged.py:827:22
	s_add_i32 s11, s9, s28
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s12, -1
                                        ; implicit-def: $sgpr11
.LBB0_3:                                ; %Flow264
	s_load_b64 s[20:21], s[0:1], 0x28
	v_lshrrev_b32_e32 v119, 1, v0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v144, 0
	s_and_not1_b32 vcc_lo, exec_lo, s12
	s_lshl_b32 s22, s7, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[30:31], s[0:1], 0x38
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 774 23 is_stmt 1              ; ragged.py:774:23
	s_lshl_b32 s3, s3, 5
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v2, 3, v0
	.loc	1 711 26                        ; ragged.py:711:26
	s_lshr_b32 s29, s6, 1
	.loc	1 769 28                        ; ragged.py:769:28
	v_lshrrev_b32_e32 v1, 3, v0
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v5, 16, v0
	s_cmp_lt_i32 s3, 64
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v3, s22, v119
	s_cselect_b32 s37, -1, 0
	s_add_i32 s11, s9, s28
	.loc	1 782 39                        ; ragged.py:782:39
	s_mul_i32 s0, s8, s35
	v_lshrrev_b32_e32 v7, 2, v5
	s_add_i32 s33, s22, s0
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v6, 0x80, v3
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s35, v3
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v4, 1, v0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[74:75], null, s8, s30, v[1:2]
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v1, s11, v103
	v_mul_lo_u32 v3, s30, v119
	.loc	1 816 37                        ; ragged.py:816:37
	s_mul_i32 s23, s8, s31
	v_and_or_b32 v148, 0x78, v2, v7
	v_cmp_eq_u32_e64 s8, 0, v5
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v5, 16, v1
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v7, 32, v1
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v8, 48, v1
	v_mul_lo_u32 v151, v1, s31
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v1, 0xf0, v0
	v_lshl_add_u32 v146, v4, 4, v3
	v_mul_lo_u32 v152, v5, s31
	v_mul_lo_u32 v153, v7, s31
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v5, 1, v0
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v7, 2, v1
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v4, 5, v4
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v145, s22, v0
	.loc	1 706 18                        ; ragged.py:706:18
	v_and_or_b32 v73, v2, 56, s9
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s7, s35, v6
	v_or_b32_e32 v3, 0x3f0, v0
	v_or_b32_e32 v6, 0x7f0, v0
	v_mul_lo_u32 v154, v8, s31
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v5, 28, v5
	v_cndmask_b32_e64 v8, 0, 1, s37
	v_add3_u32 v4, 0, v7, v4
	v_dual_mov_b32 v126, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	v_cmp_gt_i32_e64 s1, s35, v145
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s6, s34, v73
	v_lshl_add_u32 v147, s30, 7, v146
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v149, 0, v103
	v_xor_b32_e32 v150, 4, v148
	v_cmp_ne_u32_e64 s9, 1, v8
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v155, 0, v3
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v156, 0, v6
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v157, v4, v5
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v158, 0, v1
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v159, 0, v2
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v80, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v79, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 771 19                        ; ragged.py:771:19
	s_add_i32 s29, s29, -1
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_mul_i32 s33, s33, s30
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s36, 0
	s_lshr_b32 s37, s29, 6
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_mov_b32 s38, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v33, v151, s36, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_add_i32 s14, s36, s23
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v34, v152, s36, 1
	v_add_lshl_u32 v35, v153, s36, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_mul_i32 s14, s14, s35
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v36, v154, s36, 1
	.loc	1 815 40                        ; ragged.py:815:40
	v_add_lshl_u32 v37, v145, s14, 1
	.loc	1 808 40                        ; ragged.py:808:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s10
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 815 40                        ; ragged.py:815:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	.loc	1 808 40                        ; ragged.py:808:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	buffer_load_u16 v36, v36, s[28:31], 0 offen
	.loc	1 815 40                        ; ragged.py:815:40
	buffer_load_u16 v37, v37, s[16:19], 0 offen
	.loc	1 820 21                        ; ragged.py:820:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 822 17                        ; ragged.py:822:17
	s_add_i32 s14, s36, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 771 19                        ; ragged.py:771:19
	s_lshl_b32 s38, s14, 6
	s_cmp_lg_u32 s36, s37
	s_mov_b32 s36, s14
	.loc	1 808 40                        ; ragged.py:808:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 813 21                        ; ragged.py:813:21
	v_dual_mul_f32 v54, v162, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v179, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v176, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v178, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v160, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v177, v33 :: v_dual_mul_f32 v53, v163, v34
	v_dual_mul_f32 v42, v175, v33 :: v_dual_mul_f32 v55, v161, v34
	v_dual_mul_f32 v43, v174, v33 :: v_dual_mul_f32 v58, v77, v34
	v_dual_mul_f32 v44, v173, v33 :: v_dual_mul_f32 v57, v78, v34
	v_dual_mul_f32 v45, v172, v33 :: v_dual_mul_f32 v60, v75, v34
	v_dual_mul_f32 v46, v171, v33 :: v_dual_mul_f32 v59, v76, v34
	v_dual_mul_f32 v47, v170, v33 :: v_dual_mul_f32 v62, v71, v34
	v_dual_mul_f32 v48, v169, v33 :: v_dual_mul_f32 v61, v72, v34
	v_dual_mul_f32 v49, v168, v33 :: v_dual_mul_f32 v64, v69, v34
	v_dual_mul_f32 v50, v167, v33 :: v_dual_mul_f32 v63, v70, v34
	v_dual_mul_f32 v51, v166, v33 :: v_dual_mul_f32 v68, v68, v34
	v_dual_mul_f32 v52, v165, v33 :: v_dual_mul_f32 v67, v67, v34
	v_dual_mul_f32 v33, v164, v33 :: v_dual_mul_f32 v66, v66, v34
	v_dual_mul_f32 v34, v65, v34 :: v_dual_mul_f32 v31, v31, v35
	v_dual_mul_f32 v32, v32, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v30, v30, v35 :: v_dual_mul_f32 v163, v12, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v16, v16, v36
	v_dual_mul_f32 v65, v28, v35 :: v_dual_mul_f32 v162, v13, v36
	v_dual_mul_f32 v69, v27, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v70, v26, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v71, v25, v35 :: v_dual_mul_f32 v164, v11, v36
	v_mul_f32_e32 v72, v24, v35
	v_dual_mul_f32 v75, v23, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v76, v22, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v77, v21, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v78, v20, v35 :: v_dual_mul_f32 v5, v5, v36
	v_dual_mul_f32 v160, v19, v35 :: v_dual_mul_f32 v1, v1, v36
	v_dual_mul_f32 v161, v18, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v35, v17, v35 :: v_dual_mul_f32 v2, v2, v36
	.loc	1 820 21                        ; ragged.py:820:21
	ds_store_b32 v157, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v158
	ds_load_b128 v[21:24], v158 offset:16
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 820 21                        ; ragged.py:820:21
	ds_load_b128 v[11:14], v158 offset:512
	ds_load_b128 v[25:28], v158 offset:528
	.loc	1 813 21                        ; ragged.py:813:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v3, v3, v36 :: v_dual_fmac_f32 v144, v38, v17
	.loc	1 821 17                        ; ragged.py:821:17
	v_dual_fmac_f32 v143, v39, v18 :: v_dual_fmac_f32 v142, v40, v19
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v141, v41, v20 :: v_dual_fmac_f32 v140, v42, v21
	v_dual_fmac_f32 v139, v43, v22 :: v_dual_fmac_f32 v138, v44, v23
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v137, v45, v24 :: v_dual_fmac_f32 v136, v46, v11
	v_dual_fmac_f32 v135, v47, v12 :: v_dual_fmac_f32 v134, v48, v13
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v133, v49, v14 :: v_dual_fmac_f32 v132, v50, v25
	v_dual_fmac_f32 v131, v51, v26 :: v_dual_fmac_f32 v130, v52, v27
	v_dual_fmac_f32 v129, v33, v28 :: v_dual_fmac_f32 v126, v55, v19
	v_dual_fmac_f32 v128, v53, v17 :: v_dual_fmac_f32 v127, v54, v18
	v_dual_fmac_f32 v125, v56, v20 :: v_dual_fmac_f32 v124, v57, v21
	v_dual_fmac_f32 v123, v58, v22 :: v_dual_fmac_f32 v122, v59, v23
	v_dual_fmac_f32 v121, v60, v24 :: v_dual_fmac_f32 v120, v61, v11
	v_dual_fmac_f32 v118, v62, v12 :: v_dual_fmac_f32 v117, v63, v13
	v_dual_fmac_f32 v116, v64, v14 :: v_dual_fmac_f32 v113, v66, v27
	v_dual_fmac_f32 v115, v68, v25 :: v_dual_fmac_f32 v114, v67, v26
	v_dual_fmac_f32 v112, v34, v28 :: v_dual_fmac_f32 v111, v32, v17
	v_dual_fmac_f32 v110, v31, v18 :: v_dual_fmac_f32 v109, v30, v19
	v_dual_fmac_f32 v108, v29, v20 :: v_dual_fmac_f32 v105, v70, v23
	v_dual_fmac_f32 v107, v65, v21 :: v_dual_fmac_f32 v104, v71, v24
	v_dual_fmac_f32 v106, v69, v22 :: v_dual_fmac_f32 v101, v75, v12
	v_dual_fmac_f32 v102, v72, v11 :: v_dual_fmac_f32 v99, v77, v14
	v_dual_fmac_f32 v100, v76, v13 :: v_dual_fmac_f32 v95, v35, v28
	v_dual_fmac_f32 v98, v78, v25 :: v_dual_fmac_f32 v97, v160, v26
	v_dual_fmac_f32 v96, v161, v27 :: v_dual_fmac_f32 v93, v15, v18
	v_dual_fmac_f32 v94, v16, v17 :: v_dual_fmac_f32 v91, v162, v20
	v_dual_fmac_f32 v92, v37, v19 :: v_dual_fmac_f32 v89, v164, v22
	v_dual_fmac_f32 v90, v163, v21 :: v_dual_fmac_f32 v87, v9, v24
	v_dual_fmac_f32 v88, v10, v23 :: v_dual_fmac_f32 v85, v7, v12
	v_dual_fmac_f32 v86, v8, v11 :: v_dual_fmac_f32 v83, v5, v14
	v_dual_fmac_f32 v84, v6, v13 :: v_dual_fmac_f32 v81, v3, v26
	v_dual_fmac_f32 v82, v4, v25 :: v_dual_fmac_f32 v79, v1, v28
	v_fmac_f32_e32 v80, v2, v27
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
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
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
	.loc	1 775 23 is_stmt 1              ; ragged.py:775:23
	s_and_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v1, 0
	s_mov_b32 s39, s3
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
	s_add_i32 s40, s39, s38
	.loc	1 787 38                        ; ragged.py:787:38
	s_mov_b32 s14, s26
	.loc	1 786 46                        ; ragged.py:786:46
	v_add_nc_u32_e32 v65, s40, v74
	.loc	1 787 46                        ; ragged.py:787:46
	s_add_i32 s40, s40, s33
	.loc	1 787 38 is_stmt 0              ; ragged.py:787:38
	s_mov_b32 s15, s27
	v_add_nc_u32_e32 v67, s40, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 786 46 is_stmt 1              ; ragged.py:786:46
	v_mad_u64_u32 v[65:66], null, v65, s34, v[73:74]
	v_add_nc_u32_e32 v66, s40, v146
	.loc	1 787 38                        ; ragged.py:787:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	.loc	1 786 38                        ; ragged.py:786:38
	v_cndmask_b32_e64 v65, 0x80000000, v65, s6
	buffer_load_b64 v[75:76], v65, s[24:27], 0 offen
	.loc	1 787 38                        ; ragged.py:787:38
	s_clause 0x1
	buffer_load_b128 v[69:72], v66, s[12:15], 0 offen
	buffer_load_b128 v[65:68], v67, s[12:15], 0 offen
	.loc	1 786 38                        ; ragged.py:786:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 805 21                        ; ragged.py:805:21
	s_add_i32 s14, s39, 32
	.loc	1 775 23                        ; ragged.py:775:23
	s_cmp_lt_i32 s39, 32
	s_mov_b32 s39, s14
	.loc	1 786 38                        ; ragged.py:786:38
	s_waitcnt vmcnt(2)
	ds_store_b64 v159, v[75:76]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 795 31                        ; ragged.py:795:31
	ds_load_u8 v75, v149 offset:320
	ds_load_u8 v76, v149 offset:256
	.loc	1 787 38                        ; ragged.py:787:38
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v168, v148, v65
	ds_bpermute_b32 v169, v148, v66
	ds_bpermute_b32 v170, v150, v65
	ds_bpermute_b32 v171, v150, v66
	ds_bpermute_b32 v172, v148, v67
	ds_bpermute_b32 v174, v150, v67
	ds_bpermute_b32 v167, v150, v70
	ds_bpermute_b32 v173, v148, v68
	ds_bpermute_b32 v175, v150, v68
	.loc	1 795 31                        ; ragged.py:795:31
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v149 offset:448
	ds_load_u8 v77, v149 offset:384
	.loc	1 787 38                        ; ragged.py:787:38
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v65, v170, v168, s8
	s_waitcnt lgkmcnt(7)
	v_cndmask_b32_e64 v66, v171, v169, s8
	.loc	1 795 31                        ; ragged.py:795:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v149 offset:64
	ds_load_u8 v78, v149
	v_lshl_or_b32 v76, v76, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v149 offset:192
	ds_load_u8 v160, v149 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v160, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v78, 16, v77
	ds_load_u8 v77, v149 offset:336
	ds_load_u8 v78, v149 offset:272
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[75:76], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v149 offset:464
	ds_load_u8 v160, v149 offset:400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v160, v78, 0xc0c0004
	ds_load_u8 v160, v149 offset:16
	ds_load_u8 v161, v149 offset:80
	v_lshl_or_b32 v78, v78, 16, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v160, v161, 0xc0c0004
	ds_load_u8 v161, v149 offset:208
	ds_load_u8 v162, v149 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v161, 16, v160
	ds_load_u8 v160, v149 offset:352
	ds_load_u8 v161, v149 offset:288
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[77:78], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v149 offset:480
	ds_load_u8 v162, v149 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v149 offset:32
	ds_load_u8 v163, v149 offset:96
	v_lshl_or_b32 v161, v161, 16, v160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v162, v163, 0xc0c0004
	ds_load_u8 v163, v149 offset:224
	ds_load_u8 v164, v149 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v163, 16, v162
	ds_load_u8 v162, v149 offset:368
	ds_load_u8 v163, v149 offset:304
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[160:161], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v149 offset:496
	ds_load_u8 v164, v149 offset:432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v149 offset:48
	ds_load_u8 v165, v149 offset:112
	v_lshl_or_b32 v163, v163, 16, v162
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v165, 0xc0c0004
	ds_load_u8 v165, v149 offset:240
	ds_load_u8 v166, v149 offset:176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	.loc	1 787 38                        ; ragged.py:787:38
	ds_bpermute_b32 v166, v150, v69
	.loc	1 795 31                        ; ragged.py:795:31
	v_lshl_or_b32 v162, v165, 16, v164
	.loc	1 787 38                        ; ragged.py:787:38
	ds_bpermute_b32 v164, v148, v69
	ds_bpermute_b32 v165, v148, v70
	.loc	1 795 31                        ; ragged.py:795:31
	v_wmma_i32_16x16x16_iu4 v[57:64], v[65:66], v[162:163], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v65, v149 offset:832
	ds_load_u8 v66, v149 offset:768
	.loc	1 787 38                        ; ragged.py:787:38
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v69, v166, v164, s8
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v70, v167, v165, s8
	.loc	1 795 31                        ; ragged.py:795:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v149 offset:960
	ds_load_u8 v67, v149 offset:896
	v_wmma_i32_16x16x16_iu4 v[1:8], v[69:70], v[75:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[69:70], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[69:70], v[160:161], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[69:70], v[162:163], v[49:56] neg_lo:[1,1,0]
	.loc	1 787 38                        ; ragged.py:787:38
	ds_bpermute_b32 v160, v148, v71
	ds_bpermute_b32 v162, v150, v71
	ds_bpermute_b32 v161, v148, v72
	ds_bpermute_b32 v163, v150, v72
	v_cndmask_b32_e64 v78, v175, v173, s8
	.loc	1 795 31                        ; ragged.py:795:31
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v149 offset:576
	ds_load_u8 v68, v149 offset:512
	v_lshl_or_b32 v66, v66, 16, v65
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v149 offset:704
	ds_load_u8 v69, v149 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v68, 16, v67
	ds_load_u8 v67, v149 offset:848
	ds_load_u8 v68, v149 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v149 offset:976
	ds_load_u8 v69, v149 offset:912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v149 offset:592
	ds_load_u8 v70, v149 offset:528
	v_lshl_or_b32 v68, v68, 16, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v149 offset:720
	ds_load_u8 v71, v149 offset:656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v70, 16, v69
	ds_load_u8 v69, v149 offset:864
	ds_load_u8 v70, v149 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v149 offset:992
	ds_load_u8 v71, v149 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v149 offset:608
	ds_load_u8 v72, v149 offset:544
	v_lshl_or_b32 v70, v70, 16, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v149 offset:736
	ds_load_u8 v75, v149 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v72, 16, v71
	ds_load_u8 v71, v149 offset:624
	ds_load_u8 v72, v149 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v149 offset:752
	ds_load_u8 v75, v149 offset:688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	ds_load_u8 v75, v149 offset:880
	ds_load_u8 v76, v149 offset:816
	v_lshl_or_b32 v71, v72, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v155
	ds_load_u8 v77, v149 offset:944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	.loc	1 787 38                        ; ragged.py:787:38
	v_cndmask_b32_e64 v77, v174, v172, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 795 31                        ; ragged.py:795:31
	v_lshl_or_b32 v72, v76, 16, v75
	.loc	1 787 38                        ; ragged.py:787:38
	v_cndmask_b32_e64 v75, v162, v160, s8
	v_cndmask_b32_e64 v76, v163, v161, s8
	.loc	1 795 31                        ; ragged.py:795:31
	v_wmma_i32_16x16x16_iu4 v[41:48], v[77:78], v[69:70], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[77:78], v[71:72], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[77:78], v[67:68], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[69:70], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v69, v149 offset:1344
	ds_load_u8 v70, v149 offset:1280
	v_wmma_i32_16x16x16_iu4 v[49:56], v[75:76], v[71:72], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[65:66], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[67:68], v[17:24] neg_lo:[1,1,0]
	.loc	1 787 38                        ; ragged.py:787:38
	v_cndmask_b32_e64 v65, v164, v166, s8
	v_cndmask_b32_e64 v66, v165, v167, s8
	v_cndmask_b32_e64 v67, v168, v170, s8
	v_cndmask_b32_e64 v68, v169, v171, s8
	.loc	1 795 31                        ; ragged.py:795:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v149 offset:1472
	ds_load_u8 v71, v149 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v149 offset:1088
	ds_load_u8 v72, v149 offset:1024
	v_lshl_or_b32 v70, v70, 16, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v149 offset:1216
	ds_load_u8 v75, v149 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v72, 16, v71
	ds_load_u8 v71, v149 offset:1360
	ds_load_u8 v72, v149 offset:1296
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[69:70], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v69, v149 offset:1856
	ds_load_u8 v70, v149 offset:1792
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v149 offset:1488
	ds_load_u8 v75, v149 offset:1424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	ds_load_u8 v75, v149 offset:1104
	ds_load_u8 v76, v149 offset:1040
	v_lshl_or_b32 v72, v72, 16, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v149 offset:1232
	ds_load_u8 v77, v149 offset:1168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v76, 16, v75
	ds_load_u8 v75, v149 offset:1376
	ds_load_u8 v76, v149 offset:1312
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[71:72], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v70, v149 offset:1984
	ds_load_u8 v71, v149 offset:1920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v149 offset:1504
	ds_load_u8 v77, v149 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v149 offset:1600
	ds_load_u8 v72, v149 offset:1536
	v_lshl_or_b32 v70, v70, 16, v69
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v149 offset:1120
	ds_load_u8 v78, v149 offset:1056
	v_lshl_or_b32 v76, v76, 16, v75
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v149 offset:1248
	ds_load_u8 v164, v149 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v164, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v78, 16, v77
	ds_load_u8 v77, v149 offset:1392
	ds_load_u8 v78, v149 offset:1328
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[75:76], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v72, v149 offset:1728
	ds_load_u8 v75, v149 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v149 offset:1520
	ds_load_u8 v164, v149 offset:1456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v72, 16, v71
	ds_load_u8 v71, v149 offset:1872
	ds_load_u8 v72, v149 offset:1808
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v78, v164, v78, 0xc0c0004
	ds_load_u8 v164, v149 offset:1136
	ds_load_u8 v165, v149 offset:1072
	v_lshl_or_b32 v78, v78, 16, v77
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	ds_load_u8 v72, v149 offset:2000
	ds_load_u8 v75, v149 offset:1936
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v149 offset:1264
	ds_load_u8 v166, v149 offset:1200
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v75, v72, 0xc0c0004
	ds_load_u8 v75, v149 offset:1616
	ds_load_u8 v76, v149 offset:1552
	v_lshl_or_b32 v72, v72, 16, v71
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v165, 16, v164
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[77:78], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[77:78], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v149 offset:1744
	ds_load_u8 v77, v149 offset:1680
	.loc	1 787 38                        ; ragged.py:787:38
	v_cndmask_b32_e64 v65, v160, v162, s8
	v_cndmask_b32_e64 v66, v161, v163, s8
	v_cndmask_b32_e64 v67, v172, v174, s8
	v_cndmask_b32_e64 v68, v173, v175, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 795 31                        ; ragged.py:795:31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[69:70], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v76, 16, v75
	ds_load_u8 v75, v149 offset:1888
	ds_load_u8 v76, v149 offset:1824
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[67:68], v[71:72], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v149 offset:2016
	ds_load_u8 v77, v149 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v149 offset:1632
	ds_load_u8 v78, v149 offset:1568
	v_lshl_or_b32 v76, v76, 16, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v149 offset:1760
	ds_load_u8 v160, v149 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v160, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v78, 16, v77
	ds_load_u8 v77, v149 offset:1648
	ds_load_u8 v78, v149 offset:1584
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[75:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[75:76], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v149 offset:1776
	ds_load_u8 v160, v149 offset:1712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v160, v78, 0xc0c0004
	ds_load_u8 v160, v149 offset:1904
	ds_load_u8 v161, v149 offset:1840
	v_lshl_or_b32 v77, v78, 16, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v156
	ds_load_u8 v162, v149 offset:1968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[49:56], v[65:66], v[77:78], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[67:68], v[77:78], v[57:64] neg_lo:[1,1,0]
	.loc	1 775 23                        ; ragged.py:775:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 806 27                        ; ragged.py:806:27
	v_cvt_f32_i32_e32 v179, v1
	v_cvt_f32_i32_e32 v178, v2
	v_cvt_f32_i32_e32 v177, v3
	v_cvt_f32_i32_e32 v176, v4
	v_cvt_f32_i32_e32 v175, v5
	v_cvt_f32_i32_e32 v174, v6
	v_cvt_f32_i32_e32 v173, v7
	v_cvt_f32_i32_e32 v172, v8
	v_cvt_f32_i32_e32 v171, v9
	v_cvt_f32_i32_e32 v170, v10
	v_cvt_f32_i32_e32 v169, v11
	v_cvt_f32_i32_e32 v168, v12
	v_cvt_f32_i32_e32 v167, v13
	v_cvt_f32_i32_e32 v166, v14
	v_cvt_f32_i32_e32 v165, v15
	v_cvt_f32_i32_e32 v164, v16
	v_cvt_f32_i32_e32 v163, v17
	v_cvt_f32_i32_e32 v162, v18
	v_cvt_f32_i32_e32 v161, v19
	v_cvt_f32_i32_e32 v160, v20
	v_cvt_f32_i32_e32 v78, v21
	v_cvt_f32_i32_e32 v77, v22
	v_cvt_f32_i32_e32 v76, v23
	v_cvt_f32_i32_e32 v75, v24
	v_cvt_f32_i32_e32 v72, v25
	v_cvt_f32_i32_e32 v71, v26
	v_cvt_f32_i32_e32 v70, v27
	v_cvt_f32_i32_e32 v69, v28
	v_cvt_f32_i32_e32 v68, v29
	v_cvt_f32_i32_e32 v67, v30
	v_cvt_f32_i32_e32 v66, v31
	v_cvt_f32_i32_e32 v65, v32
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
.LBB0_10:                               ; %._crit_edge11
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v1, 0x70, v119
	.loc	1 827 22                        ; ragged.py:827:22
	v_mul_lo_u32 v2, s35, v103
	s_mul_i32 s0, s11, s35
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 707 36 is_stmt 1              ; ragged.py:707:36
	v_and_or_b32 v3, v0, 1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 827 22                        ; ragged.py:827:22
	v_add3_u32 v0, s0, s22, v2
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v1, s22, v3
	.loc	1 707 36 is_stmt 0              ; ragged.py:707:36
	v_or_b32_e32 v4, 0x80, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 709 20 is_stmt 1              ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s35, v1
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v2, s22, v4
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
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v2
	.loc	1 827 22                        ; ragged.py:827:22
	v_mad_u64_u32 v[1:2], null, s35, 48, v[0:1]
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	buffer_store_b32 v144, v21, s[20:23], 0 offen
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
	buffer_store_b32 v143, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	v_cndmask_b32_e64 v23, 0x80000000, v24, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v11, 0x82, v3
	v_or_b32_e32 v10, 0x84, v3
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v142, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v0, v13, 2
	s_clause 0x2
	buffer_store_b32 v141, v21, s[20:23], 0 offen
	buffer_store_b32 v140, v22, s[20:23], 0 offen
	buffer_store_b32 v139, v23, s[20:23], 0 offen
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
	buffer_store_b32 v138, v2, s[20:23], 0 offen
	buffer_store_b32 v137, v21, s[20:23], 0 offen
	buffer_store_b32 v136, v22, s[20:23], 0 offen
	buffer_store_b32 v135, v23, s[20:23], 0 offen
	buffer_store_b32 v134, v24, s[20:23], 0 offen
	v_add_lshl_u32 v2, v0, v9, 2
	v_add_lshl_u32 v21, v0, v8, 2
	v_add_lshl_u32 v22, v0, v7, 2
	v_add_lshl_u32 v23, v0, v6, 2
	.loc	1 827 22 is_stmt 0              ; ragged.py:827:22
	v_lshl_add_u32 v19, s35, 4, v0
	v_lshl_add_u32 v20, s35, 5, v0
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v0, v0, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x4
	buffer_store_b32 v133, v2, s[20:23], 0 offen
	buffer_store_b32 v132, v21, s[20:23], 0 offen
	buffer_store_b32 v131, v22, s[20:23], 0 offen
	buffer_store_b32 v130, v23, s[20:23], 0 offen
	buffer_store_b32 v129, v0, s[20:23], 0 offen
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
	buffer_store_b32 v128, v0, s[20:23], 0 offen
	buffer_store_b32 v127, v2, s[20:23], 0 offen
	buffer_store_b32 v126, v21, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v14, 2
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v23, s1
	buffer_store_b32 v125, v22, s[20:23], 0 offen
	v_add_lshl_u32 v22, v19, v12, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	buffer_store_b32 v124, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s4, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v123, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x2
	buffer_store_b32 v122, v21, s[20:23], 0 offen
	buffer_store_b32 v121, v22, s[20:23], 0 offen
	buffer_store_b32 v120, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v21, v19, v9, 2
	v_add_lshl_u32 v22, v19, v8, 2
	v_add_lshl_u32 v23, v19, v7, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_store_b32 v118, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v21, s1
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	buffer_store_b32 v117, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v6, 2
	s_clause 0x2
	buffer_store_b32 v116, v2, s[20:23], 0 offen
	buffer_store_b32 v115, v21, s[20:23], 0 offen
	buffer_store_b32 v114, v22, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v5, 2
	v_add_lshl_u32 v19, v20, v3, 2
	v_add_lshl_u32 v21, v20, v18, 2
	v_add_lshl_u32 v22, v20, v17, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s10, s0
	s_and_b32 s0, s2, s0
	.loc	1 827 13                        ; ragged.py:827:13
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	s_clause 0x4
	buffer_store_b32 v113, v0, s[20:23], 0 offen
	buffer_store_b32 v112, v2, s[20:23], 0 offen
	buffer_store_b32 v111, v19, s[20:23], 0 offen
	buffer_store_b32 v110, v21, s[20:23], 0 offen
	buffer_store_b32 v109, v22, s[20:23], 0 offen
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
	buffer_store_b32 v108, v0, s[20:23], 0 offen
	buffer_store_b32 v107, v2, s[20:23], 0 offen
	buffer_store_b32 v106, v19, s[20:23], 0 offen
	buffer_store_b32 v105, v21, s[20:23], 0 offen
	buffer_store_b32 v104, v22, s[20:23], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_add_lshl_u32 v2, v20, v11, 2
	v_add_lshl_u32 v19, v20, v10, 2
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s10, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v21, v20, v9, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v22, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	s_clause 0x2
	buffer_store_b32 v102, v0, s[20:23], 0 offen
	buffer_store_b32 v101, v2, s[20:23], 0 offen
	buffer_store_b32 v100, v19, s[20:23], 0 offen
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v0, 0x80000000, v22, s1
	v_add_lshl_u32 v19, v20, v6, 2
	v_add_lshl_u32 v20, v20, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_clause 0x1
	buffer_store_b32 v99, v21, s[20:23], 0 offen
	buffer_store_b32 v98, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v3, 2
	v_cndmask_b32_e64 v3, 0x80000000, v19, s1
	v_cndmask_b32_e64 v19, 0x80000000, v20, s1
	buffer_store_b32 v97, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	s_clause 0x2
	buffer_store_b32 v96, v3, s[20:23], 0 offen
	buffer_store_b32 v95, v19, s[20:23], 0 offen
	buffer_store_b32 v94, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v16, 2
	v_add_lshl_u32 v15, v1, v15, 2
	v_add_lshl_u32 v14, v1, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_store_b32 v93, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v3, s0
	v_cndmask_b32_e64 v3, 0x80000000, v15, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	buffer_store_b32 v92, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v13, 2
	s_clause 0x2
	buffer_store_b32 v91, v2, s[20:23], 0 offen
	buffer_store_b32 v90, v3, s[20:23], 0 offen
	buffer_store_b32 v89, v14, s[20:23], 0 offen
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
	buffer_store_b32 v88, v0, s[20:23], 0 offen
	buffer_store_b32 v87, v2, s[20:23], 0 offen
	buffer_store_b32 v86, v3, s[20:23], 0 offen
	buffer_store_b32 v85, v4, s[20:23], 0 offen
	buffer_store_b32 v84, v10, s[20:23], 0 offen
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
	buffer_store_b32 v83, v0, s[20:23], 0 offen
	buffer_store_b32 v82, v2, s[20:23], 0 offen
	buffer_store_b32 v81, v3, s[20:23], 0 offen
	buffer_store_b32 v80, v4, s[20:23], 0 offen
	buffer_store_b32 v79, v1, s[20:23], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 180
		.amdhsa_next_free_sgpr 41
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 180
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8148
; TotalNumSgprs: 43
; NumVgprs: 180
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 180
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     180
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
