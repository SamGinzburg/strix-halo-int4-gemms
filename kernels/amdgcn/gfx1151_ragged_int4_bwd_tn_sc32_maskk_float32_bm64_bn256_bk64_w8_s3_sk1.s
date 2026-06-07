	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
	v_and_b32_e32 v97, 15, v0
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
	.loc	1 809 37                        ; ragged.py:809:37
	s_mul_i32 s28, s22, s10
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s8, s2
	s_xor_b32 s12, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s12, s12, 31
	v_readfirstlane_b32 s9, v1
	.loc	1 707 36                        ; ragged.py:707:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 703 17                        ; ragged.py:703:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s5
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s9, s7
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
	.loc	1 706 18                        ; ragged.py:706:18
	s_lshl_b32 s7, s7, 6
	.loc	1 704 17                        ; ragged.py:704:17
	s_sub_i32 s12, s2, s6
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v2, s7, v97
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s6, s[4:5], 0x0
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
	s_add_i32 s24, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 771 19                        ; ragged.py:771:19
	s_cmp_gt_i32 s24, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge4_crit_edge
	.loc	1 827 22                        ; ragged.py:827:22
	s_add_i32 s9, s7, s28
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s13, -1
                                        ; implicit-def: $sgpr9
.LBB0_3:                                ; %Flow389
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v111, 0x70, v1
	v_lshrrev_b32_e32 v64, 4, v0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_mov_b32_e32 v132, 0
	s_and_not1_b32 vcc_lo, exec_lo, s13
	s_lshl_b32 s23, s12, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[30:31], s[0:1], 0x38
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 711 26 is_stmt 1              ; ragged.py:711:26
	s_lshr_b32 s0, s24, 31
	.loc	1 790 37                        ; ragged.py:790:37
	s_and_b32 s1, s6, 0x80000001
	.loc	1 711 26                        ; ragged.py:711:26
	s_add_i32 s24, s24, s0
	.loc	1 774 23                        ; ragged.py:774:23
	s_lshl_b32 s33, s3, 4
	.loc	1 711 26                        ; ragged.py:711:26
	s_ashr_i32 s34, s24, 1
	.loc	1 790 37                        ; ragged.py:790:37
	s_cmp_eq_u32 s1, 1
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v1, 0xf0, v0
	s_cselect_b32 s35, -1, 0
	.loc	1 790 67 is_stmt 0              ; ragged.py:790:67
	s_add_i32 s36, s34, -1
	s_cmp_lt_i32 s33, 16
	v_mov_b32_e32 v133, 0
	s_cselect_b32 s3, -1, 0
	s_add_i32 s9, s7, s28
	.loc	1 707 18 is_stmt 1              ; ragged.py:707:18
	v_or_b32_e32 v134, s23, v0
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v2, s9, v97
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v3, 2, v0
	v_or_b32_e32 v4, 0x3f0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v6, 16, v2
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v8, 32, v2
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v5, 4, v0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v136, v6, s31
	v_dual_mov_b32 v127, 0 :: v_dual_lshlrev_b32 v6, 5, v0
	v_mul_lo_u32 v135, v2, s31
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v2, 48, v2
	v_mul_lo_u32 v137, v8, s31
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v8, 2, v1
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v6, 32, v6
	.loc	1 706 18                        ; ragged.py:706:18
	v_lshl_or_b32 v65, v97, 2, s7
	.loc	1 707 18                        ; ragged.py:707:18
	v_lshl_or_b32 v66, v97, 4, s23
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v7, 0, v111
	v_mul_lo_u32 v138, v2, s31
	v_dual_mov_b32 v117, 0 :: v_dual_and_b32 v0, 28, v0
	v_add3_u32 v2, 0, v8, v6
	v_cndmask_b32_e64 v6, 0, 1, s3
	v_dual_mov_b32 v124, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	v_mad_u64_u32 v[67:68], null, s22, s30, v[64:65]
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s0, s10, v65
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s1, s11, v66
	v_cmp_gt_i32_e64 s6, s11, v134
	v_cmp_ne_u32_e64 s7, 1, v6
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v139, 0, v3
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v140, 0, v97
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v141, 0, v4
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v142, 0, v5
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v143, v7, v97
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v144, v2, v0
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v145, 0, v1
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v69, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v68, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 816 37                        ; ragged.py:816:37
	s_mul_i32 s37, s22, s31
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s38, 0
	.loc	1 771 19                        ; ragged.py:771:19
	s_lshr_b32 s39, s36, 4
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
	v_add_lshl_u32 v32, v135, s38, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_add_i32 s3, s38, s37
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v33, v136, s38, 1
	v_add_lshl_u32 v34, v137, s38, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_mul_i32 s3, s3, s11
	.loc	1 808 40                        ; ragged.py:808:40
	v_add_lshl_u32 v35, v138, s38, 1
	.loc	1 815 40                        ; ragged.py:815:40
	v_add_lshl_u32 v36, v134, s3, 1
	.loc	1 808 40                        ; ragged.py:808:40
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	v_cndmask_b32_e64 v34, 0x80000000, v34, s8
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 815 40                        ; ragged.py:815:40
	v_cndmask_b32_e64 v36, 0x80000000, v36, s6
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
	s_add_i32 s3, s38, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 771 19                        ; ragged.py:771:19
	s_lshl_b32 s22, s3, 4
	s_cmp_lg_u32 s38, s39
	s_mov_b32 s38, s3
	.loc	1 808 40                        ; ragged.py:808:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 813 21                        ; ragged.py:813:21
	v_dual_mul_f32 v53, v160, v33 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v37, v177, v32 :: v_dual_lshlrev_b32 v34, 16, v34
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v40, v174, v32 :: v_dual_lshlrev_b32 v35, 16, v35
	v_mul_f32_e32 v38, v176, v32
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v55, v158, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_dual_mul_f32 v39, v175, v32 :: v_dual_mul_f32 v52, v161, v33
	v_dual_mul_f32 v41, v173, v32 :: v_dual_mul_f32 v54, v159, v33
	v_dual_mul_f32 v42, v172, v32 :: v_dual_mul_f32 v59, v154, v33
	v_dual_mul_f32 v43, v171, v32 :: v_dual_mul_f32 v56, v157, v33
	v_dual_mul_f32 v44, v170, v32 :: v_dual_mul_f32 v57, v156, v33
	v_dual_mul_f32 v45, v169, v32 :: v_dual_mul_f32 v58, v155, v33
	v_dual_mul_f32 v46, v168, v32 :: v_dual_mul_f32 v63, v150, v33
	v_dual_mul_f32 v47, v167, v32 :: v_dual_mul_f32 v60, v153, v33
	v_dual_mul_f32 v48, v166, v32 :: v_dual_mul_f32 v61, v152, v33
	v_dual_mul_f32 v49, v165, v32 :: v_dual_mul_f32 v62, v151, v33
	v_dual_mul_f32 v50, v164, v32 :: v_dual_mul_f32 v149, v149, v33
	v_dual_mul_f32 v51, v163, v32 :: v_dual_mul_f32 v148, v148, v33
	v_dual_mul_f32 v32, v162, v32 :: v_dual_mul_f32 v147, v147, v33
	v_dual_mul_f32 v33, v146, v33 :: v_dual_mul_f32 v28, v28, v34
	v_dual_mul_f32 v31, v31, v34 :: v_dual_mul_f32 v14, v14, v35
	v_dual_mul_f32 v30, v30, v34 :: v_dual_mul_f32 v15, v15, v35
	v_dual_mul_f32 v29, v29, v34 :: v_dual_mul_f32 v160, v12, v35
	v_dual_mul_f32 v146, v27, v34 :: v_dual_mul_f32 v9, v9, v35
	v_dual_mul_f32 v150, v26, v34 :: v_dual_mul_f32 v161, v11, v35
	v_dual_mul_f32 v151, v25, v34 :: v_dual_mul_f32 v162, v10, v35
	v_dual_mul_f32 v152, v24, v34 :: v_dual_mul_f32 v7, v7, v35
	v_mul_f32_e32 v153, v23, v34
	v_dual_mul_f32 v154, v22, v34 :: v_dual_mul_f32 v5, v5, v35
	v_dual_mul_f32 v155, v21, v34 :: v_dual_mul_f32 v8, v8, v35
	v_dual_mul_f32 v156, v20, v34 :: v_dual_mul_f32 v3, v3, v35
	v_dual_mul_f32 v157, v19, v34 :: v_dual_mul_f32 v6, v6, v35
	v_dual_mul_f32 v158, v18, v34 :: v_dual_mul_f32 v1, v1, v35
	v_dual_mul_f32 v159, v17, v34 :: v_dual_mul_f32 v4, v4, v35
	v_mul_f32_e32 v34, v16, v34
	.loc	1 820 21                        ; ragged.py:820:21
	ds_store_b32 v144, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v145
	ds_load_b128 v[20:23], v145 offset:16
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v36, v13, v35
	.loc	1 820 21                        ; ragged.py:820:21
	ds_load_b128 v[10:13], v145 offset:512
	ds_load_b128 v[24:27], v145 offset:528
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v2, v2, v35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v0, v0, v35 :: v_dual_fmac_f32 v133, v37, v16
	.loc	1 821 17                        ; ragged.py:821:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v132, v38, v17 :: v_dual_fmac_f32 v127, v43, v22
	v_dual_fmac_f32 v131, v39, v18 :: v_dual_fmac_f32 v130, v40, v19
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v125, v45, v10
	v_dual_fmac_f32 v129, v41, v20 :: v_dual_fmac_f32 v128, v42, v21
	v_dual_fmac_f32 v123, v47, v12 :: v_dual_fmac_f32 v126, v44, v23
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v121, v49, v24 :: v_dual_fmac_f32 v124, v46, v11
	v_dual_fmac_f32 v119, v51, v26 :: v_dual_fmac_f32 v122, v48, v13
	v_fmac_f32_e32 v115, v54, v18
	v_dual_fmac_f32 v120, v50, v25 :: v_dual_fmac_f32 v117, v52, v16
	v_dual_fmac_f32 v118, v32, v27 :: v_dual_fmac_f32 v105, v63, v13
	v_dual_fmac_f32 v116, v53, v17 :: v_dual_fmac_f32 v113, v56, v20
	v_dual_fmac_f32 v114, v55, v19 :: v_dual_fmac_f32 v103, v148, v25
	v_dual_fmac_f32 v112, v57, v21 :: v_dual_fmac_f32 v109, v59, v23
	v_dual_fmac_f32 v110, v58, v22 :: v_dual_fmac_f32 v107, v61, v11
	v_dual_fmac_f32 v108, v60, v10 :: v_dual_fmac_f32 v101, v33, v27
	v_dual_fmac_f32 v106, v62, v12 :: v_dual_fmac_f32 v93, v151, v22
	v_dual_fmac_f32 v104, v149, v24 :: v_dual_fmac_f32 v99, v30, v17
	v_dual_fmac_f32 v102, v147, v26 :: v_dual_fmac_f32 v95, v146, v20
	v_dual_fmac_f32 v100, v31, v16 :: v_dual_fmac_f32 v91, v153, v10
	v_dual_fmac_f32 v98, v29, v18 :: v_dual_fmac_f32 v89, v155, v12
	v_dual_fmac_f32 v96, v28, v19 :: v_dual_fmac_f32 v87, v157, v24
	v_dual_fmac_f32 v94, v150, v21 :: v_dual_fmac_f32 v85, v159, v26
	v_dual_fmac_f32 v92, v152, v23 :: v_dual_fmac_f32 v83, v15, v16
	v_dual_fmac_f32 v90, v154, v11 :: v_dual_fmac_f32 v81, v36, v18
	v_dual_fmac_f32 v88, v156, v13 :: v_dual_fmac_f32 v79, v161, v20
	v_dual_fmac_f32 v86, v158, v25 :: v_dual_fmac_f32 v77, v9, v22
	v_dual_fmac_f32 v84, v34, v27 :: v_dual_fmac_f32 v75, v7, v10
	v_dual_fmac_f32 v82, v14, v17 :: v_dual_fmac_f32 v73, v5, v12
	v_dual_fmac_f32 v80, v160, v19 :: v_dual_fmac_f32 v71, v3, v24
	v_dual_fmac_f32 v78, v162, v21 :: v_dual_fmac_f32 v69, v1, v26
	v_fmac_f32_e32 v76, v8, v23
	v_fmac_f32_e32 v74, v6, v11
	v_fmac_f32_e32 v72, v4, v13
	v_fmac_f32_e32 v70, v2, v25
	v_fmac_f32_e32 v68, v0, v27
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
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
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
	.loc	1 775 23 is_stmt 1              ; ragged.py:775:23
	s_and_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v0, 0
	s_mov_b32 s40, s33
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
	s_add_i32 s3, s40, s22
	.loc	1 792 38                        ; ragged.py:792:38
	s_mov_b32 s14, s26
	.loc	1 776 26                        ; ragged.py:776:26
	v_or_b32_e32 v150, s3, v64
	v_add_nc_u32_e32 v148, s3, v67
	.loc	1 792 38                        ; ragged.py:792:38
	s_mov_b32 s15, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 789 60                        ; ragged.py:789:60
	v_subrev_nc_u32_e32 v149, s22, v150
	.loc	1 789 35 is_stmt 0              ; ragged.py:789:35
	v_cmp_gt_i32_e32 vcc_lo, s34, v150
	.loc	1 791 46 is_stmt 1              ; ragged.py:791:46
	v_mad_u64_u32 v[146:147], null, v148, s10, v[65:66]
	.loc	1 792 46                        ; ragged.py:792:46
	v_mad_u64_u32 v[147:148], null, v148, s11, v[66:67]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 789 59                        ; ragged.py:789:59
	v_cmp_gt_i32_e64 s3, 16, v149
	.loc	1 789 34 is_stmt 0              ; ragged.py:789:34
	s_and_b32 s3, vcc_lo, s3
	.loc	1 792 70 is_stmt 1              ; ragged.py:792:70
	s_and_b32 vcc_lo, s1, s3
	.loc	1 792 38 is_stmt 0              ; ragged.py:792:38
	v_cndmask_b32_e32 v147, 0x80000000, v147, vcc_lo
	.loc	1 791 70 is_stmt 1              ; ragged.py:791:70
	s_and_b32 vcc_lo, s0, s3
	.loc	1 791 38 is_stmt 0              ; ragged.py:791:38
	v_cndmask_b32_e32 v151, 0x80000000, v146, vcc_lo
	.loc	1 790 60 is_stmt 1              ; ragged.py:790:60
	v_cmp_eq_u32_e32 vcc_lo, s36, v150
	.loc	1 792 38                        ; ragged.py:792:38
	buffer_load_b128 v[146:149], v147, s[12:15], 0 offen
	.loc	1 791 38                        ; ragged.py:791:38
	buffer_load_b32 v156, v151, s[24:27], 0 offen
	.loc	1 793 38                        ; ragged.py:793:38
	s_waitcnt lgkmcnt(0)
	.loc	1 790 36                        ; ragged.py:790:36
	s_and_b32 s3, s35, vcc_lo
	.loc	1 793 38                        ; ragged.py:793:38
	s_barrier
	.loc	1 792 38                        ; ragged.py:792:38
	s_waitcnt vmcnt(1)
	v_lshrrev_b64 v[159:160], 24, v[146:147]
	.loc	1 791 38                        ; ragged.py:791:38
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v162, 8, v156
	v_lshrrev_b32_e32 v163, 24, v156
	.loc	1 792 38                        ; ragged.py:792:38
	v_lshrrev_b64 v[160:161], 24, v[148:149]
	v_lshrrev_b32_e32 v164, 8, v146
	v_lshrrev_b32_e32 v165, 8, v147
	v_lshrrev_b32_e32 v166, 24, v147
	v_lshrrev_b32_e32 v167, 8, v148
	v_lshrrev_b32_e32 v161, 8, v149
	v_lshrrev_b32_e32 v168, 24, v149
	.loc	1 793 66                        ; ragged.py:793:66
	v_and_b16 v150.l, v156.l, 15
	v_and_b16 v150.h, v156.h, 15
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v151.l, v146.l, 15
	v_and_b16 v151.h, v146.h, 15
	v_and_b16 v152.l, v147.l, 15
	v_and_b16 v152.h, v147.h, 15
	.loc	1 793 66                        ; ragged.py:793:66
	v_and_b16 v155.l, v162.l, 15
	v_and_b16 v155.h, v163.l, 15
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v153.l, v148.l, 15
	v_and_b16 v153.h, v148.h, 15
	v_and_b16 v154.l, v149.l, 15
	v_and_b16 v154.h, v149.h, 15
	.loc	1 793 38                        ; ragged.py:793:38
	v_cndmask_b16 v150.l, v156.l, v150.l, s3
	v_cndmask_b16 v150.h, v156.h, v150.h, s3
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v156.l, v164.l, 15
	v_and_b16 v156.h, v165.l, 15
	v_and_b16 v157.l, v166.l, 15
	v_and_b16 v157.h, v167.l, 15
	v_and_b16 v158.l, v161.l, 15
	v_and_b16 v158.h, v168.l, 15
	.loc	1 794 38 is_stmt 0              ; ragged.py:794:38
	v_cndmask_b16 v146.l, v146.l, v151.l, s3
	v_cndmask_b16 v146.h, v146.h, v151.h, s3
	v_cndmask_b16 v147.l, v147.l, v152.l, s3
	v_cndmask_b16 v147.h, v147.h, v152.h, s3
	.loc	1 794 66                        ; ragged.py:794:66
	v_and_b16 v151.l, v159.l, 15
	v_and_b16 v151.h, v160.l, 15
	.loc	1 793 38 is_stmt 1              ; ragged.py:793:38
	v_cndmask_b16 v152.l, v162.l, v155.l, s3
	v_cndmask_b16 v152.h, v163.l, v155.h, s3
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v148.l, v148.l, v153.l, s3
	v_cndmask_b16 v148.h, v148.h, v153.h, s3
	v_cndmask_b16 v149.l, v149.l, v154.l, s3
	v_cndmask_b16 v149.h, v149.h, v154.h, s3
	v_cndmask_b16 v153.l, v164.l, v156.l, s3
	v_cndmask_b16 v153.h, v165.l, v156.h, s3
	v_cndmask_b16 v154.l, v166.l, v157.l, s3
	v_cndmask_b16 v154.h, v167.l, v157.h, s3
	v_cndmask_b16 v155.l, v161.l, v158.l, s3
	v_cndmask_b16 v155.h, v168.l, v158.h, s3
	.loc	1 793 38                        ; ragged.py:793:38
	v_and_b16 v150.l, 0xff, v150.l
	v_and_b16 v150.h, 0xff, v150.h
	.loc	1 794 38                        ; ragged.py:794:38
	v_cndmask_b16 v151.l, v159.l, v151.l, s3
	v_cndmask_b16 v151.h, v160.l, v151.h, s3
	.loc	1 793 38                        ; ragged.py:793:38
	v_lshlrev_b16 v152.l, 8, v152.l
	v_lshlrev_b16 v152.h, 8, v152.h
	.loc	1 794 38                        ; ragged.py:794:38
	v_and_b16 v149.l, 0xff, v149.l
	v_and_b16 v149.h, 0xff, v149.h
	v_and_b16 v148.l, 0xff, v148.l
	v_and_b16 v148.h, 0xff, v148.h
	v_and_b16 v147.l, 0xff, v147.l
	v_and_b16 v147.h, 0xff, v147.h
	v_and_b16 v146.l, 0xff, v146.l
	v_and_b16 v146.h, 0xff, v146.h
	v_lshlrev_b16 v155.l, 8, v155.l
	v_lshlrev_b16 v155.h, 8, v155.h
	v_lshlrev_b16 v154.h, 8, v154.h
	v_lshlrev_b16 v153.h, 8, v153.h
	v_lshlrev_b16 v154.l, 8, v154.l
	v_lshlrev_b16 v153.l, 8, v153.l
	v_lshlrev_b16 v151.h, 8, v151.h
	v_lshlrev_b16 v151.l, 8, v151.l
	.loc	1 793 38                        ; ragged.py:793:38
	v_or_b16 v150.l, v150.l, v152.l
	v_or_b16 v150.h, v150.h, v152.h
	.loc	1 794 38                        ; ragged.py:794:38
	v_or_b16 v149.l, v149.l, v155.l
	v_or_b16 v149.h, v149.h, v155.h
	v_or_b16 v148.l, v148.l, v154.h
	v_or_b16 v147.l, v147.l, v153.h
	v_or_b16 v147.h, v147.h, v154.l
	v_or_b16 v146.l, v146.l, v153.l
	v_or_b16 v148.h, v148.h, v151.h
	v_or_b16 v146.h, v146.h, v151.l
	.loc	1 793 38                        ; ragged.py:793:38
	ds_store_b32 v139, v150
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 795 31                        ; ragged.py:795:31
	ds_load_u8 v150, v140 offset:192
	ds_load_u8 v151, v140 offset:128
	ds_load_u8 v152, v140 offset:208
	ds_load_u8 v153, v140 offset:144
	ds_load_u8 v154, v140 offset:224
	ds_load_u8 v155, v140 offset:160
	ds_load_u8 v156, v140 offset:240
	ds_load_u8 v157, v140 offset:176
	ds_load_u8 v158, v140 offset:448
	ds_load_u8 v159, v140 offset:384
	ds_load_u8 v160, v140 offset:464
	ds_load_u8 v161, v140 offset:400
	ds_load_u8 v162, v140 offset:480
	ds_load_u8 v163, v140 offset:416
	ds_load_u8 v164, v140 offset:496
	ds_load_u8 v165, v140 offset:432
	ds_load_u8 v166, v140 offset:320
	ds_load_u8 v167, v140 offset:256
	ds_load_u8 v168, v140 offset:336
	ds_load_u8 v169, v140 offset:272
	ds_load_u8 v170, v140 offset:352
	ds_load_u8 v171, v140 offset:288
	ds_load_u8 v172, v140 offset:368
	ds_load_u8 v173, v140 offset:304
	ds_load_u8 v174, v140 offset:64
	ds_load_u8 v175, v140 offset:80
	ds_load_u8 v176, v140 offset:96
	ds_load_u8 v177, v140 offset:112
	ds_load_u8 v178, v140
	ds_load_u8 v179, v140 offset:16
	ds_load_u8 v180, v140 offset:32
	ds_load_u8 v181, v140 offset:48
	ds_load_u8 v182, v140 offset:704
	ds_load_u8 v183, v140 offset:640
	ds_load_u8 v184, v140 offset:720
	ds_load_u8 v185, v140 offset:656
	ds_load_u8 v186, v140 offset:736
	ds_load_u8 v187, v140 offset:672
	ds_load_u8 v188, v140 offset:752
	ds_load_u8 v189, v140 offset:688
	ds_load_u8 v190, v140 offset:576
	ds_load_u8 v191, v140 offset:512
	ds_load_u8 v192, v140 offset:592
	ds_load_u8 v193, v140 offset:528
	ds_load_u8 v194, v140 offset:608
	ds_load_u8 v195, v140 offset:544
	ds_load_u8 v196, v140 offset:624
	ds_load_u8 v197, v140 offset:560
	ds_load_u8 v198, v140 offset:960
	ds_load_u8 v199, v140 offset:896
	ds_load_u8 v200, v140 offset:976
	ds_load_u8 v201, v140 offset:912
	ds_load_u8 v202, v140 offset:992
	ds_load_u8 v203, v140 offset:928
	ds_load_u8 v204, v141
	ds_load_u8 v205, v140 offset:944
	ds_load_u8 v206, v140 offset:832
	ds_load_u8 v207, v140 offset:768
	ds_load_u8 v208, v140 offset:848
	ds_load_u8 v209, v140 offset:784
	ds_load_u8 v210, v140 offset:864
	ds_load_u8 v211, v140 offset:800
	ds_load_u8 v212, v140 offset:880
	ds_load_u8 v213, v140 offset:816
	.loc	1 794 38                        ; ragged.py:794:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v142, v[146:149]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 795 31                        ; ragged.py:795:31
	ds_load_u8 v146, v143 offset:3328
	ds_load_u8 v147, v143 offset:3072
	ds_load_u8 v148, v143 offset:3840
	ds_load_u8 v149, v143 offset:3584
	ds_load_u8 v214, v143 offset:2304
	ds_load_u8 v215, v143 offset:2048
	ds_load_u8 v216, v143 offset:2816
	ds_load_u8 v217, v143 offset:2560
	ds_load_u8 v218, v143 offset:1280
	ds_load_u8 v219, v143 offset:1024
	ds_load_u8 v220, v143 offset:1792
	ds_load_u8 v221, v143 offset:1536
	ds_load_u8 v222, v143 offset:1920
	ds_load_u8 v223, v143 offset:1664
	ds_load_u8 v224, v143 offset:1408
	ds_load_u8 v225, v143 offset:1152
	ds_load_u8 v226, v143 offset:256
	ds_load_u8 v227, v143
	ds_load_u8 v228, v143 offset:768
	ds_load_u8 v229, v143 offset:512
	ds_load_u8 v230, v143 offset:896
	ds_load_u8 v231, v143 offset:640
	ds_load_u8 v232, v143 offset:384
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v143 offset:128
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v143 offset:3968
	v_perm_b32 v174, v178, v174, 0xc0c0004
	ds_load_u8 v178, v143 offset:3712
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v143 offset:3456
	v_perm_b32 v206, v207, v206, 0xc0c0004
	ds_load_u8 v207, v143 offset:3200
	v_perm_b32 v198, v199, v198, 0xc0c0004
	ds_load_u8 v199, v143 offset:2944
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v143 offset:2688
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v143 offset:2432
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v143 offset:2176
	v_perm_b32 v160, v161, v160, 0xc0c0004
	v_perm_b32 v161, v179, v175, 0xc0c0004
	v_perm_b32 v152, v153, v152, 0xc0c0004
	v_perm_b32 v175, v201, v200, 0xc0c0004
	v_perm_b32 v179, v193, v192, 0xc0c0004
	v_perm_b32 v184, v185, v184, 0xc0c0004
	v_perm_b32 v170, v171, v170, 0xc0c0004
	v_perm_b32 v162, v163, v162, 0xc0c0004
	v_perm_b32 v163, v180, v176, 0xc0c0004
	v_perm_b32 v154, v155, v154, 0xc0c0004
	v_perm_b32 v176, v203, v202, 0xc0c0004
	v_perm_b32 v185, v187, v186, 0xc0c0004
	v_perm_b32 v172, v173, v172, 0xc0c0004
	v_perm_b32 v164, v165, v164, 0xc0c0004
	v_perm_b32 v165, v181, v177, 0xc0c0004
	v_perm_b32 v173, v157, v156, 0xc0c0004
	v_perm_b32 v187, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v188, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v189, v221, v220, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v192, v227, v226, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v193, v229, v228, 0xc0c0004
	v_perm_b32 v200, v225, v224, 0xc0c0004
	v_perm_b32 v201, v223, v222, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v202, v167, v232, 0xc0c0004
	v_perm_b32 v203, v231, v230, 0xc0c0004
	v_perm_b32 v153, v209, v208, 0xc0c0004
	v_perm_b32 v171, v211, v210, 0xc0c0004
	v_perm_b32 v180, v195, v194, 0xc0c0004
	v_perm_b32 v177, v213, v212, 0xc0c0004
	v_perm_b32 v181, v205, v204, 0xc0c0004
	v_perm_b32 v186, v197, v196, 0xc0c0004
	v_perm_b32 v194, v147, v146, 0xc0c0004
	v_perm_b32 v195, v149, v148, 0xc0c0004
	v_perm_b32 v196, v215, v214, 0xc0c0004
	v_perm_b32 v197, v217, v216, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v204, v207, v151, 0xc0c0004
	v_perm_b32 v178, v178, v159, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v169, v183, 0xc0c0004
	v_perm_b32 v191, v191, v199, 0xc0c0004
	v_lshl_or_b32 v147, v158, 16, v166
	v_lshl_or_b32 v146, v150, 16, v174
	v_lshl_or_b32 v151, v160, 16, v168
	v_lshl_or_b32 v150, v152, 16, v161
	v_lshl_or_b32 v155, v162, 16, v170
	v_lshl_or_b32 v154, v154, 16, v163
	v_lshl_or_b32 v159, v164, 16, v172
	v_lshl_or_b32 v158, v173, 16, v165
	v_lshl_or_b32 v163, v189, 16, v188
	v_lshl_or_b32 v162, v193, 16, v192
	v_lshl_or_b32 v167, v201, 16, v200
	v_lshl_or_b32 v166, v203, 16, v202
	v_lshl_or_b32 v149, v198, 16, v206
	v_lshl_or_b32 v148, v182, 16, v190
	v_lshl_or_b32 v153, v175, 16, v153
	v_lshl_or_b32 v152, v184, 16, v179
	v_lshl_or_b32 v157, v176, 16, v171
	v_lshl_or_b32 v156, v185, 16, v180
	v_lshl_or_b32 v161, v181, 16, v177
	v_lshl_or_b32 v160, v187, 16, v186
	v_lshl_or_b32 v165, v195, 16, v194
	v_lshl_or_b32 v164, v197, 16, v196
	v_lshl_or_b32 v169, v178, 16, v204
	v_lshl_or_b32 v168, v191, 16, v183
	v_wmma_i32_16x16x16_iu4 v[0:7], v[162:163], v[146:147], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[166:167], v[146:147], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[162:163], v[150:151], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[166:167], v[150:151], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[162:163], v[154:155], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[166:167], v[154:155], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[162:163], v[158:159], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[166:167], v[158:159], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[164:165], v[148:149], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[168:169], v[148:149], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[164:165], v[152:153], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[168:169], v[152:153], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[164:165], v[156:157], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[168:169], v[156:157], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[164:165], v[160:161], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[168:169], v[160:161], v[56:63] neg_lo:[1,1,0]
	.loc	1 805 21                        ; ragged.py:805:21
	s_add_i32 s3, s40, 16
	.loc	1 775 23                        ; ragged.py:775:23
	s_cmp_lt_i32 s40, 0
	s_mov_b32 s40, s3
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 806 27                        ; ragged.py:806:27
	v_cvt_f32_i32_e32 v177, v0
	v_cvt_f32_i32_e32 v176, v1
	v_cvt_f32_i32_e32 v175, v2
	v_cvt_f32_i32_e32 v174, v3
	v_cvt_f32_i32_e32 v173, v4
	v_cvt_f32_i32_e32 v172, v5
	v_cvt_f32_i32_e32 v171, v6
	v_cvt_f32_i32_e32 v170, v7
	v_cvt_f32_i32_e32 v169, v8
	v_cvt_f32_i32_e32 v168, v9
	v_cvt_f32_i32_e32 v167, v10
	v_cvt_f32_i32_e32 v166, v11
	v_cvt_f32_i32_e32 v165, v12
	v_cvt_f32_i32_e32 v164, v13
	v_cvt_f32_i32_e32 v163, v14
	v_cvt_f32_i32_e32 v162, v15
	v_cvt_f32_i32_e32 v161, v16
	v_cvt_f32_i32_e32 v160, v17
	v_cvt_f32_i32_e32 v159, v18
	v_cvt_f32_i32_e32 v158, v19
	v_cvt_f32_i32_e32 v157, v20
	v_cvt_f32_i32_e32 v156, v21
	v_cvt_f32_i32_e32 v155, v22
	v_cvt_f32_i32_e32 v154, v23
	v_cvt_f32_i32_e32 v153, v24
	v_cvt_f32_i32_e32 v152, v25
	v_cvt_f32_i32_e32 v151, v26
	v_cvt_f32_i32_e32 v150, v27
	v_cvt_f32_i32_e32 v149, v28
	v_cvt_f32_i32_e32 v148, v29
	v_cvt_f32_i32_e32 v147, v30
	v_cvt_f32_i32_e32 v146, v31
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
	v_mul_lo_u32 v0, s11, v97
	.loc	1 707 36                        ; ragged.py:707:36
	v_and_or_b32 v3, v64, 1, v111
	.loc	1 827 22                        ; ragged.py:827:22
	s_mul_i32 s1, s9, s11
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 707 18 is_stmt 1              ; ragged.py:707:18
	v_or_b32_e32 v1, s23, v3
	.loc	1 707 36 is_stmt 0              ; ragged.py:707:36
	v_or_b32_e32 v4, 0x80, v3
	.loc	1 827 22 is_stmt 1              ; ragged.py:827:22
	v_add3_u32 v0, s1, s23, v0
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v16, 6, v3
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s11, v1
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v2, s23, v4
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
	s_mov_b32 s23, 0x31027000
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e32 vcc_lo, s11, v2
	.loc	1 827 22                        ; ragged.py:827:22
	v_mad_u64_u32 v[1:2], null, s11, 48, v[0:1]
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	buffer_store_b32 v133, v21, s[20:23], 0 offen
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
	buffer_store_b32 v132, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	v_cndmask_b32_e64 v23, 0x80000000, v24, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v11, 0x82, v3
	v_or_b32_e32 v10, 0x84, v3
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v131, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v0, v13, 2
	s_clause 0x2
	buffer_store_b32 v130, v21, s[20:23], 0 offen
	buffer_store_b32 v129, v22, s[20:23], 0 offen
	buffer_store_b32 v128, v23, s[20:23], 0 offen
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
	buffer_store_b32 v127, v2, s[20:23], 0 offen
	buffer_store_b32 v126, v21, s[20:23], 0 offen
	buffer_store_b32 v125, v22, s[20:23], 0 offen
	buffer_store_b32 v124, v23, s[20:23], 0 offen
	buffer_store_b32 v123, v24, s[20:23], 0 offen
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
	buffer_store_b32 v122, v2, s[20:23], 0 offen
	buffer_store_b32 v121, v21, s[20:23], 0 offen
	buffer_store_b32 v120, v22, s[20:23], 0 offen
	buffer_store_b32 v119, v23, s[20:23], 0 offen
	buffer_store_b32 v118, v0, s[20:23], 0 offen
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
	buffer_store_b32 v117, v0, s[20:23], 0 offen
	buffer_store_b32 v116, v2, s[20:23], 0 offen
	buffer_store_b32 v115, v21, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v14, 2
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v23, s1
	buffer_store_b32 v114, v22, s[20:23], 0 offen
	v_add_lshl_u32 v22, v19, v12, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	buffer_store_b32 v113, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s4, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v112, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x2
	buffer_store_b32 v110, v21, s[20:23], 0 offen
	buffer_store_b32 v109, v22, s[20:23], 0 offen
	buffer_store_b32 v108, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v21, v19, v9, 2
	v_add_lshl_u32 v22, v19, v8, 2
	v_add_lshl_u32 v23, v19, v7, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	buffer_store_b32 v107, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v21, s1
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	buffer_store_b32 v106, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v6, 2
	s_clause 0x2
	buffer_store_b32 v105, v2, s[20:23], 0 offen
	buffer_store_b32 v104, v21, s[20:23], 0 offen
	buffer_store_b32 v103, v22, s[20:23], 0 offen
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
	buffer_store_b32 v102, v0, s[20:23], 0 offen
	buffer_store_b32 v101, v2, s[20:23], 0 offen
	buffer_store_b32 v100, v19, s[20:23], 0 offen
	buffer_store_b32 v99, v21, s[20:23], 0 offen
	buffer_store_b32 v98, v22, s[20:23], 0 offen
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
	buffer_store_b32 v96, v0, s[20:23], 0 offen
	buffer_store_b32 v95, v2, s[20:23], 0 offen
	buffer_store_b32 v94, v19, s[20:23], 0 offen
	buffer_store_b32 v93, v21, s[20:23], 0 offen
	buffer_store_b32 v92, v22, s[20:23], 0 offen
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
	buffer_store_b32 v91, v0, s[20:23], 0 offen
	buffer_store_b32 v90, v2, s[20:23], 0 offen
	buffer_store_b32 v89, v19, s[20:23], 0 offen
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v0, 0x80000000, v22, s1
	v_add_lshl_u32 v19, v20, v6, 2
	v_add_lshl_u32 v20, v20, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_clause 0x1
	buffer_store_b32 v88, v21, s[20:23], 0 offen
	buffer_store_b32 v87, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v3, 2
	v_cndmask_b32_e64 v3, 0x80000000, v19, s1
	v_cndmask_b32_e64 v19, 0x80000000, v20, s1
	buffer_store_b32 v86, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	s_clause 0x2
	buffer_store_b32 v85, v3, s[20:23], 0 offen
	buffer_store_b32 v84, v19, s[20:23], 0 offen
	buffer_store_b32 v83, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v16, 2
	v_add_lshl_u32 v15, v1, v15, 2
	v_add_lshl_u32 v14, v1, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_store_b32 v82, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v3, s0
	v_cndmask_b32_e64 v3, 0x80000000, v15, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	buffer_store_b32 v81, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v13, 2
	s_clause 0x2
	buffer_store_b32 v80, v2, s[20:23], 0 offen
	buffer_store_b32 v79, v3, s[20:23], 0 offen
	buffer_store_b32 v78, v14, s[20:23], 0 offen
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
	buffer_store_b32 v77, v0, s[20:23], 0 offen
	buffer_store_b32 v76, v2, s[20:23], 0 offen
	buffer_store_b32 v75, v3, s[20:23], 0 offen
	buffer_store_b32 v74, v4, s[20:23], 0 offen
	buffer_store_b32 v73, v10, s[20:23], 0 offen
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
	buffer_store_b32 v72, v0, s[20:23], 0 offen
	buffer_store_b32 v71, v2, s[20:23], 0 offen
	buffer_store_b32 v70, v3, s[20:23], 0 offen
	buffer_store_b32 v69, v4, s[20:23], 0 offen
	buffer_store_b32 v68, v1, s[20:23], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 233
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
		.amdhsa_inst_pref_size 60
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 233
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7560
; TotalNumSgprs: 43
; NumVgprs: 233
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 233
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     233
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
