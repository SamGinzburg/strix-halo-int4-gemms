	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
	v_and_b32_e32 v90, 15, v0
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s10, s2
	s_xor_b32 s11, s2, s6
	s_ashr_i32 s11, s11, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s10, s9
	s_mul_i32 s12, s9, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s7
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s7
	s_mov_b32 s13, 0
	s_cselect_b32 s7, s12, s9
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s9, s8, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s7, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s11
	.loc	1 710 19                        ; ragged.py:710:19
	s_lshl_b64 s[10:11], s[8:9], 2
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s6, s7, s6
	.loc	1 704 17 is_stmt 0              ; ragged.py:704:17
	s_sub_i32 s12, s2, s6
	.loc	1 706 18 is_stmt 1              ; ragged.py:706:18
	s_lshl_b32 s6, s7, 6
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v1, s6, v90
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s9, s[4:5], 0x0
	.loc	1 780 39                        ; ragged.py:780:39
	s_mul_i32 s7, s8, s34
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
	s_add_i32 s9, s9, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 771 19                        ; ragged.py:771:19
	s_cmp_gt_i32 s9, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge11_crit_edge
	.loc	1 827 22                        ; ragged.py:827:22
	s_add_i32 s11, s6, s7
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s13, -1
                                        ; implicit-def: $sgpr11
.LBB0_3:                                ; %Flow165
	s_load_b64 s[20:21], s[0:1], 0x28
	v_lshrrev_b32_e32 v101, 1, v0
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
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	s_and_not1_b32 vcc_lo, exec_lo, s13
	s_lshl_b32 s22, s12, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x38
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 707 18 is_stmt 1              ; ragged.py:707:18
	v_or_b32_e32 v1, s22, v101
	.loc	1 774 23                        ; ragged.py:774:23
	s_lshl_b32 s3, s3, 5
	.loc	1 706 36                        ; ragged.py:706:36
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 711 26                        ; ragged.py:711:26
	s_lshr_b32 s9, s9, 1
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v3, 3, v0
	s_cmp_lt_i32 s3, 64
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v5, 0x80, v1
	s_cselect_b32 s31, -1, 0
	s_add_i32 s11, s6, s7
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v4, s6, v2
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s35, v1
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v1, 24, v3
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v2, s11, v2
	v_dual_mov_b32 v125, 0 :: v_dual_and_b32 v6, 24, v101
	v_cmp_gt_i32_e64 s7, s35, v5
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v5, s28, v101
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s6, s34, v4
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v4, 1, v0
	v_mad_u64_u32 v[65:66], null, v2, s28, v[1:2]
	v_dual_mov_b32 v126, 0 :: v_dual_lshlrev_b32 v1, 1, v0
	v_xor_b32_e32 v3, v3, v6
	v_dual_mov_b32 v121, 0 :: v_dual_and_b32 v6, 16, v0
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v7, s11, v90
	.loc	1 782 39                        ; ragged.py:782:39
	s_mul_i32 s30, s8, s35
	.loc	1 816 37                        ; ragged.py:816:37
	s_mul_i32 s23, s8, s29
	v_lshl_add_u32 v133, v4, 4, v5
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v2, 24, v1
	v_bfe_u32 v5, v0, 4, 1
	v_cmp_eq_u32_e64 s8, 0, v6
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v6, 16, v7
	v_dual_mov_b32 v120, 0 :: v_dual_and_b32 v11, 0xf0, v0
	v_lshl_or_b32 v135, v90, 5, v2
	v_and_or_b32 v2, v1, 30, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v139, v6, s29
	v_dual_mov_b32 v115, 0 :: v_dual_lshlrev_b32 v6, 2, v11
	v_dual_mov_b32 v113, 0 :: v_dual_lshlrev_b32 v4, 5, v4
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v9, 32, v7
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v10, 48, v7
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v132, s22, v0
	v_xor_b32_e32 v5, 8, v135
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v136, 2, v2
	v_xor_b32_e32 v2, 16, v135
	v_xor_b32_e32 v8, 24, v135
	v_mul_lo_u32 v138, v7, s29
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v1, 28, v1
	v_cndmask_b32_e64 v7, 0, 1, s31
	v_add3_u32 v4, 0, v6, v4
	v_dual_mov_b32 v111, 0 :: v_dual_lshlrev_b32 v6, 1, v11
	v_mul_lo_u32 v140, v9, s29
	v_mul_lo_u32 v141, v10, s29
	.loc	1 771 19                        ; ragged.py:771:19
	s_add_i32 s9, s9, -1
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s1, s35, v132
	v_lshl_add_u32 v134, s28, 7, v133
	v_xor_b32_e32 v137, 4, v136
	.loc	1 771 19                        ; ragged.py:771:19
	s_lshr_b32 s36, s9, 6
	v_cmp_ne_u32_e64 s9, 1, v7
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v142, 0, v3
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v143, 0, v5
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v144, 0, v2
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v145, 0, v8
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v146, v4, v1
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v147, 0, v6
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v66, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_add_i32 s33, s22, s30
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_mul_i32 s33, s33, s28
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s34, 0
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_mov_b32 s37, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v33, v138, s34, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_add_i32 s14, s34, s23
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v34, v139, s34, 1
	v_add_lshl_u32 v35, v140, s34, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_mul_i32 s14, s14, s35
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v36, v141, s34, 1
	.loc	1 815 40                        ; ragged.py:815:40
	v_add_lshl_u32 v37, v132, s14, 1
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
	s_add_i32 s14, s34, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 771 19                        ; ragged.py:771:19
	s_lshl_b32 s37, s14, 6
	s_cmp_lg_u32 s34, s36
	s_mov_b32 s34, s14
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
	v_dual_mul_f32 v43, v174, v33 :: v_dual_mul_f32 v60, v156, v34
	v_dual_mul_f32 v44, v173, v33 :: v_dual_mul_f32 v57, v159, v34
	v_dual_mul_f32 v45, v172, v33 :: v_dual_mul_f32 v58, v158, v34
	v_dual_mul_f32 v46, v171, v33 :: v_dual_mul_f32 v59, v157, v34
	v_dual_mul_f32 v47, v170, v33 :: v_dual_mul_f32 v64, v152, v34
	v_dual_mul_f32 v48, v169, v33 :: v_dual_mul_f32 v61, v155, v34
	v_dual_mul_f32 v49, v168, v33 :: v_dual_mul_f32 v62, v154, v34
	v_dual_mul_f32 v50, v167, v33 :: v_dual_mul_f32 v63, v153, v34
	v_mul_f32_e32 v51, v166, v33
	v_dual_mul_f32 v52, v165, v33 :: v_dual_mul_f32 v151, v151, v34
	v_dual_mul_f32 v33, v164, v33 :: v_dual_mul_f32 v150, v150, v34
	v_dual_mul_f32 v149, v149, v34 :: v_dual_mul_f32 v32, v32, v35
	v_dual_mul_f32 v34, v148, v34 :: v_dual_mul_f32 v31, v31, v35
	v_mul_f32_e32 v16, v16, v36
	v_dual_mul_f32 v30, v30, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v164, v11, v36
	v_mul_f32_e32 v148, v28, v35
	v_dual_mul_f32 v152, v27, v35 :: v_dual_mul_f32 v163, v12, v36
	v_dual_mul_f32 v153, v26, v35 :: v_dual_mul_f32 v162, v13, v36
	v_dual_mul_f32 v154, v25, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v155, v24, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v156, v23, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v157, v22, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v158, v21, v35 :: v_dual_mul_f32 v3, v3, v36
	v_dual_mul_f32 v159, v20, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v160, v19, v35 :: v_dual_mul_f32 v5, v5, v36
	v_dual_mul_f32 v161, v18, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v35, v17, v35 :: v_dual_mul_f32 v2, v2, v36
	.loc	1 820 21                        ; ragged.py:820:21
	ds_store_b32 v146, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v147
	ds_load_b128 v[21:24], v147 offset:16
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 820 21                        ; ragged.py:820:21
	ds_load_b128 v[11:14], v147 offset:512
	ds_load_b128 v[25:28], v147 offset:528
	.loc	1 813 21                        ; ragged.py:813:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v1, v1, v36 :: v_dual_fmac_f32 v130, v39, v18
	.loc	1 821 17                        ; ragged.py:821:17
	v_dual_fmac_f32 v131, v38, v17 :: v_dual_fmac_f32 v128, v41, v20
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v129, v40, v19 :: v_dual_fmac_f32 v126, v43, v22
	v_dual_fmac_f32 v127, v42, v21 :: v_dual_fmac_f32 v124, v45, v24
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v125, v44, v23 :: v_dual_fmac_f32 v122, v47, v12
	v_dual_fmac_f32 v123, v46, v11 :: v_dual_fmac_f32 v120, v49, v14
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v121, v48, v13 :: v_dual_fmac_f32 v118, v51, v26
	v_dual_fmac_f32 v119, v50, v25 :: v_dual_fmac_f32 v116, v33, v28
	v_dual_fmac_f32 v117, v52, v27 :: v_dual_fmac_f32 v114, v54, v18
	v_dual_fmac_f32 v115, v53, v17 :: v_dual_fmac_f32 v112, v56, v20
	v_dual_fmac_f32 v113, v55, v19 :: v_dual_fmac_f32 v110, v58, v22
	v_dual_fmac_f32 v111, v57, v21 :: v_dual_fmac_f32 v108, v60, v24
	v_dual_fmac_f32 v109, v59, v23 :: v_dual_fmac_f32 v106, v62, v12
	v_dual_fmac_f32 v107, v61, v11 :: v_dual_fmac_f32 v104, v64, v14
	v_dual_fmac_f32 v105, v63, v13 :: v_dual_fmac_f32 v102, v150, v26
	v_dual_fmac_f32 v103, v151, v25 :: v_dual_fmac_f32 v100, v149, v27
	v_dual_fmac_f32 v99, v34, v28 :: v_dual_fmac_f32 v98, v32, v17
	v_dual_fmac_f32 v97, v31, v18 :: v_dual_fmac_f32 v96, v30, v19
	v_dual_fmac_f32 v95, v29, v20 :: v_dual_fmac_f32 v94, v148, v21
	v_dual_fmac_f32 v93, v152, v22 :: v_dual_fmac_f32 v92, v153, v23
	v_dual_fmac_f32 v91, v154, v24 :: v_dual_fmac_f32 v84, v160, v26
	v_dual_fmac_f32 v89, v155, v11 :: v_dual_fmac_f32 v88, v156, v12
	v_dual_fmac_f32 v87, v157, v13 :: v_dual_fmac_f32 v86, v158, v14
	v_dual_fmac_f32 v85, v159, v25 :: v_dual_fmac_f32 v78, v162, v20
	v_dual_fmac_f32 v83, v161, v27 :: v_dual_fmac_f32 v82, v35, v28
	v_dual_fmac_f32 v81, v16, v17 :: v_dual_fmac_f32 v80, v15, v18
	v_dual_fmac_f32 v79, v37, v19 :: v_dual_fmac_f32 v76, v164, v22
	v_dual_fmac_f32 v77, v163, v21 :: v_dual_fmac_f32 v74, v9, v24
	v_dual_fmac_f32 v75, v10, v23 :: v_dual_fmac_f32 v72, v7, v12
	v_dual_fmac_f32 v73, v8, v11 :: v_dual_fmac_f32 v70, v5, v14
	v_dual_fmac_f32 v71, v6, v13 :: v_dual_fmac_f32 v68, v3, v26
	v_dual_fmac_f32 v69, v4, v25 :: v_dual_fmac_f32 v66, v1, v28
	v_fmac_f32_e32 v67, v2, v27
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
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
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
	.loc	1 775 23 is_stmt 1              ; ragged.py:775:23
	s_and_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v1, 0
	s_mov_b32 s38, s3
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
	s_add_i32 s39, s38, s37
	.loc	1 787 38                        ; ragged.py:787:38
	s_mov_b32 s14, s26
	.loc	1 787 46 is_stmt 0              ; ragged.py:787:46
	s_add_i32 s40, s39, s33
	.loc	1 786 46 is_stmt 1              ; ragged.py:786:46
	v_add_nc_u32_e32 v148, s39, v65
	v_add_nc_u32_e32 v149, s40, v133
	v_add_nc_u32_e32 v150, s40, v134
	.loc	1 787 38                        ; ragged.py:787:38
	s_mov_b32 s15, s27
	.loc	1 786 38                        ; ragged.py:786:38
	v_add_nc_u32_e32 v160, 0, v135
	v_cndmask_b32_e64 v156, 0x80000000, v148, s6
	.loc	1 787 38                        ; ragged.py:787:38
	v_cndmask_b32_e64 v148, 0x80000000, v149, s0
	v_cndmask_b32_e64 v152, 0x80000000, v150, s7
	s_clause 0x1
	buffer_load_b128 v[148:151], v148, s[12:15], 0 offen
	buffer_load_b128 v[152:155], v152, s[12:15], 0 offen
	.loc	1 786 38                        ; ragged.py:786:38
	buffer_load_b64 v[156:157], v156, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 805 21                        ; ragged.py:805:21
	s_add_i32 s14, s38, 32
	.loc	1 775 23                        ; ragged.py:775:23
	s_cmp_lt_i32 s38, 32
	s_mov_b32 s38, s14
	.loc	1 787 38                        ; ragged.py:787:38
	s_waitcnt vmcnt(2)
	ds_bpermute_b32 v188, v136, v148
	ds_bpermute_b32 v189, v137, v148
	ds_bpermute_b32 v190, v136, v149
	ds_bpermute_b32 v191, v137, v149
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v196, v136, v152
	ds_bpermute_b32 v197, v137, v152
	ds_bpermute_b32 v198, v136, v153
	ds_bpermute_b32 v199, v137, v153
	ds_bpermute_b32 v192, v136, v150
	ds_bpermute_b32 v193, v137, v150
	ds_bpermute_b32 v194, v136, v151
	ds_bpermute_b32 v195, v137, v151
	ds_bpermute_b32 v200, v136, v154
	ds_bpermute_b32 v201, v137, v154
	ds_bpermute_b32 v202, v136, v155
	ds_bpermute_b32 v203, v137, v155
	.loc	1 786 38                        ; ragged.py:786:38
	s_waitcnt vmcnt(0)
	ds_store_b64 v142, v[156:157]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[156:159], v160 offset1:1
	ds_load_2addr_stride64_b64 v[160:163], v160 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[164:167], v143 offset1:1
	ds_load_2addr_stride64_b64 v[168:171], v143 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[172:175], v144 offset1:1
	ds_load_2addr_stride64_b64 v[176:179], v144 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[180:183], v145 offset1:1
	ds_load_2addr_stride64_b64 v[184:187], v145 offset0:2 offset1:3
	.loc	1 787 38                        ; ragged.py:787:38
	v_cndmask_b32_e64 v148, v189, v188, s8
	v_cndmask_b32_e64 v150, v188, v189, s8
	v_cndmask_b32_e64 v149, v191, v190, s8
	v_cndmask_b32_e64 v151, v190, v191, s8
	v_cndmask_b32_e64 v188, v197, v196, s8
	v_cndmask_b32_e64 v190, v196, v197, s8
	v_cndmask_b32_e64 v189, v199, v198, s8
	v_cndmask_b32_e64 v191, v198, v199, s8
	v_cndmask_b32_e64 v152, v193, v192, s8
	v_cndmask_b32_e64 v154, v192, v193, s8
	v_cndmask_b32_e64 v153, v195, v194, s8
	.loc	1 795 31                        ; ragged.py:795:31
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[148:149], v[156:157], v[1:8] neg_lo:[1,1,0]
	.loc	1 787 38                        ; ragged.py:787:38
	v_cndmask_b32_e64 v192, v201, v200, s8
	.loc	1 795 31                        ; ragged.py:795:31
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[156:157], v[9:16] neg_lo:[1,1,0]
	.loc	1 787 38                        ; ragged.py:787:38
	v_cndmask_b32_e64 v193, v203, v202, s8
	.loc	1 795 31                        ; ragged.py:795:31
	v_wmma_i32_16x16x16_iu4 v[17:24], v[148:149], v[158:159], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[158:159], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[148:149], v[160:161], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[188:189], v[160:161], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[148:149], v[162:163], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[188:189], v[162:163], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[152:153], v[164:165], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[192:193], v[164:165], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[152:153], v[166:167], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[192:193], v[166:167], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[152:153], v[168:169], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[192:193], v[168:169], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[152:153], v[170:171], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[192:193], v[170:171], v[57:64] neg_lo:[1,1,0]
	.loc	1 787 38                        ; ragged.py:787:38
	v_cndmask_b32_e64 v155, v194, v195, s8
	v_cndmask_b32_e64 v194, v200, v201, s8
	v_cndmask_b32_e64 v195, v202, v203, s8
	.loc	1 795 31                        ; ragged.py:795:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[150:151], v[172:173], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[190:191], v[172:173], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[150:151], v[174:175], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[190:191], v[174:175], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[150:151], v[176:177], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[190:191], v[176:177], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[150:151], v[178:179], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[190:191], v[178:179], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[154:155], v[180:181], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[194:195], v[180:181], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[154:155], v[182:183], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[194:195], v[182:183], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[154:155], v[184:185], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[194:195], v[184:185], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[154:155], v[186:187], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[194:195], v[186:187], v[57:64] neg_lo:[1,1,0]
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
	v_cvt_f32_i32_e32 v159, v21
	v_cvt_f32_i32_e32 v158, v22
	v_cvt_f32_i32_e32 v157, v23
	v_cvt_f32_i32_e32 v156, v24
	v_cvt_f32_i32_e32 v155, v25
	v_cvt_f32_i32_e32 v154, v26
	v_cvt_f32_i32_e32 v153, v27
	v_cvt_f32_i32_e32 v152, v28
	v_cvt_f32_i32_e32 v151, v29
	v_cvt_f32_i32_e32 v150, v30
	v_cvt_f32_i32_e32 v149, v31
	v_cvt_f32_i32_e32 v148, v32
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
	v_and_b32_e32 v1, 0x70, v101
	.loc	1 827 22                        ; ragged.py:827:22
	v_mul_lo_u32 v2, s35, v90
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
	buffer_store_b32 v131, v21, s[20:23], 0 offen
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
	buffer_store_b32 v130, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	v_cndmask_b32_e64 v23, 0x80000000, v24, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v11, 0x82, v3
	v_or_b32_e32 v10, 0x84, v3
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v129, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v0, v13, 2
	s_clause 0x2
	buffer_store_b32 v128, v21, s[20:23], 0 offen
	buffer_store_b32 v127, v22, s[20:23], 0 offen
	buffer_store_b32 v126, v23, s[20:23], 0 offen
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
	buffer_store_b32 v125, v2, s[20:23], 0 offen
	buffer_store_b32 v124, v21, s[20:23], 0 offen
	buffer_store_b32 v123, v22, s[20:23], 0 offen
	buffer_store_b32 v122, v23, s[20:23], 0 offen
	buffer_store_b32 v121, v24, s[20:23], 0 offen
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
	buffer_store_b32 v120, v2, s[20:23], 0 offen
	buffer_store_b32 v119, v21, s[20:23], 0 offen
	buffer_store_b32 v118, v22, s[20:23], 0 offen
	buffer_store_b32 v117, v23, s[20:23], 0 offen
	buffer_store_b32 v116, v0, s[20:23], 0 offen
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
	buffer_store_b32 v115, v0, s[20:23], 0 offen
	buffer_store_b32 v114, v2, s[20:23], 0 offen
	buffer_store_b32 v113, v21, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v14, 2
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v23, s1
	buffer_store_b32 v112, v22, s[20:23], 0 offen
	v_add_lshl_u32 v22, v19, v12, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	buffer_store_b32 v111, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s4, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v110, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x2
	buffer_store_b32 v109, v21, s[20:23], 0 offen
	buffer_store_b32 v108, v22, s[20:23], 0 offen
	buffer_store_b32 v107, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v21, v19, v9, 2
	v_add_lshl_u32 v22, v19, v8, 2
	v_add_lshl_u32 v23, v19, v7, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_store_b32 v106, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v21, s1
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	buffer_store_b32 v105, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v6, 2
	s_clause 0x2
	buffer_store_b32 v104, v2, s[20:23], 0 offen
	buffer_store_b32 v103, v21, s[20:23], 0 offen
	buffer_store_b32 v102, v22, s[20:23], 0 offen
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
	buffer_store_b32 v100, v0, s[20:23], 0 offen
	buffer_store_b32 v99, v2, s[20:23], 0 offen
	buffer_store_b32 v98, v19, s[20:23], 0 offen
	buffer_store_b32 v97, v21, s[20:23], 0 offen
	buffer_store_b32 v96, v22, s[20:23], 0 offen
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
	buffer_store_b32 v95, v0, s[20:23], 0 offen
	buffer_store_b32 v94, v2, s[20:23], 0 offen
	buffer_store_b32 v93, v19, s[20:23], 0 offen
	buffer_store_b32 v92, v21, s[20:23], 0 offen
	buffer_store_b32 v91, v22, s[20:23], 0 offen
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
	buffer_store_b32 v89, v0, s[20:23], 0 offen
	buffer_store_b32 v88, v2, s[20:23], 0 offen
	buffer_store_b32 v87, v19, s[20:23], 0 offen
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v0, 0x80000000, v22, s1
	v_add_lshl_u32 v19, v20, v6, 2
	v_add_lshl_u32 v20, v20, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_clause 0x1
	buffer_store_b32 v86, v21, s[20:23], 0 offen
	buffer_store_b32 v85, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v3, 2
	v_cndmask_b32_e64 v3, 0x80000000, v19, s1
	v_cndmask_b32_e64 v19, 0x80000000, v20, s1
	buffer_store_b32 v84, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	s_clause 0x2
	buffer_store_b32 v83, v3, s[20:23], 0 offen
	buffer_store_b32 v82, v19, s[20:23], 0 offen
	buffer_store_b32 v81, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v16, 2
	v_add_lshl_u32 v15, v1, v15, 2
	v_add_lshl_u32 v14, v1, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_store_b32 v80, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v3, s0
	v_cndmask_b32_e64 v3, 0x80000000, v15, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	buffer_store_b32 v79, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v13, 2
	s_clause 0x2
	buffer_store_b32 v78, v2, s[20:23], 0 offen
	buffer_store_b32 v77, v3, s[20:23], 0 offen
	buffer_store_b32 v76, v14, s[20:23], 0 offen
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
	buffer_store_b32 v75, v0, s[20:23], 0 offen
	buffer_store_b32 v74, v2, s[20:23], 0 offen
	buffer_store_b32 v73, v3, s[20:23], 0 offen
	buffer_store_b32 v72, v4, s[20:23], 0 offen
	buffer_store_b32 v71, v10, s[20:23], 0 offen
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
	buffer_store_b32 v70, v0, s[20:23], 0 offen
	buffer_store_b32 v69, v2, s[20:23], 0 offen
	buffer_store_b32 v68, v3, s[20:23], 0 offen
	buffer_store_b32 v67, v4, s[20:23], 0 offen
	buffer_store_b32 v66, v1, s[20:23], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 204
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
		.amdhsa_inst_pref_size 46
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 204
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5884
; TotalNumSgprs: 43
; NumVgprs: 204
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 204
; Occupancy: 7
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     204
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
