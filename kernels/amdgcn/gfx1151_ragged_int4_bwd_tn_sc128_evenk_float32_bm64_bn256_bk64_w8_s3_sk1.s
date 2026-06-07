	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
	v_and_b32_e32 v8, 15, v0
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
	s_ashr_i32 s28, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:699:21 ]
	s_ashr_i32 s7, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 700 27 is_stmt 1              ; ragged.py:700:27
	s_mul_i32 s4, s7, s28
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
	s_mul_i32 s12, s6, s5
	s_sub_i32 s9, s9, s12
	s_add_i32 s12, s6, 1
	s_sub_i32 s13, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s6, s12, s6
	s_cselect_b32 s9, s13, s9
	s_add_i32 s12, s6, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s12, s6
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s6, s7
	.loc	1 701 20                        ; ragged.py:701:20
	s_xor_b32 s5, s5, s8
	.loc	1 703 17                        ; ragged.py:703:17
	s_cvt_f32_u32 s9, s6
	.loc	1 701 20                        ; ragged.py:701:20
	s_sub_i32 s22, s5, s8
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s5, 0, s6
	.loc	1 702 22                        ; ragged.py:702:22
	s_mul_i32 s4, s22, s4
	.loc	1 703 17                        ; ragged.py:703:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 702 16                        ; ragged.py:702:16
	s_sub_i32 s12, s2, s4
	.loc	1 809 37                        ; ragged.py:809:37
	s_mul_i32 s36, s22, s10
	.loc	1 703 17                        ; ragged.py:703:17
	s_abs_i32 s8, s12
	s_xor_b32 s13, s12, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s29, s13, 31
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s14, s9, s6
	s_add_i32 s13, s9, 1
	s_sub_i32 s8, s8, s14
	s_sub_i32 s14, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s9, s13, s9
	s_cselect_b32 s8, s14, s8
	s_add_i32 s13, s9, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s13, s9
	.loc	1 710 19                        ; ragged.py:710:19
	s_ashr_i32 s23, s22, 31
	.loc	1 703 17                        ; ragged.py:703:17
	s_xor_b32 s30, s6, s29
	.loc	1 710 19                        ; ragged.py:710:19
	s_lshl_b64 s[8:9], s[22:23], 2
	.loc	1 703 17                        ; ragged.py:703:17
	s_sub_i32 s6, s30, s29
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 704 24                        ; ragged.py:704:24
	s_mul_i32 s13, s6, s7
	.loc	1 706 18                        ; ragged.py:706:18
	s_lshl_b32 s31, s6, 6
	.loc	1 704 17                        ; ragged.py:704:17
	s_sub_i32 s12, s12, s13
	.loc	1 710 19                        ; ragged.py:710:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v2, s31, v8
	.loc	1 710 19                        ; ragged.py:710:19
	s_load_b32 s6, s[4:5], 0x0
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
	v_cmp_gt_i32_e64 s9, s10, v4
	v_cmp_gt_i32_e64 s8, s10, v5
	.loc	1 711 27                        ; ragged.py:711:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 771 19                        ; ragged.py:771:19
	s_cmp_gt_i32 s6, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge4_crit_edge
	.loc	1 827 22                        ; ragged.py:827:22
	s_add_i32 s33, s31, s36
	s_lshl_b32 s23, s11, 4
	s_lshl_b32 s35, s11, 5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s13, -1
                                        ; implicit-def: $sgpr33
                                        ; implicit-def: $sgpr23
                                        ; implicit-def: $sgpr35
.LBB0_3:                                ; %Flow346
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v11, 0x70, v1
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_lshrrev_b32_e32 v12, 4, v0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v104, 0
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
	s_and_not1_b32 vcc_lo, exec_lo, s13
	s_lshl_b32 s34, s12, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[38:39], s[0:1], 0x38
	s_load_b256 s[12:19], s[0:1], 0x0
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v2, 4, v8
	.loc	1 774 23 is_stmt 1              ; ragged.py:774:23
	s_lshl_b32 s35, s3, 5
	.loc	1 711 26                        ; ragged.py:711:26
	s_lshr_b32 s37, s6, 1
	s_cmp_lt_i32 s35, 64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v5, s34, v2
	s_cselect_b32 s40, -1, 0
	s_add_i32 s33, s31, s36
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v135, 0, v8
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s1, s11, v5
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v5, s33, v8
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v1, 3, v0
	.loc	1 769 28                        ; ragged.py:769:28
	v_lshrrev_b32_e32 v3, 3, v0
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v7, 0xf0, v0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v8, off offset:108
	scratch_store_b32 off, v11, off offset:112
	scratch_store_b32 off, v12, off offset:116
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v9, 16, v5
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v10, 32, v5
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v136, v135, v11
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v11, 48, v5
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v179, v5, s39
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v5, 5, v0
	.loc	1 778 39                        ; ragged.py:778:39
	s_mul_i32 s38, s22, s38
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v4, 56, v1
	.loc	1 771 19                        ; ragged.py:771:19
	s_add_i32 s38, s38, s35
	v_mul_lo_u32 v180, v9, s39
	v_mul_lo_u32 v181, v10, s39
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v9, 2, v7
	v_dual_mov_b32 v116, 0 :: v_dual_and_b32 v5, 32, v5
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v10, s38, v12
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v3, s38, v3
	s_mul_i32 s28, s28, s22
	.loc	1 706 18                        ; ragged.py:706:18
	v_or_b32_e32 v6, s31, v4
	s_mov_b32 s24, s12
	s_mov_b32 s12, s14
	.loc	1 771 19                        ; ragged.py:771:19
	s_sub_i32 s14, s29, s28
	v_add3_u32 v5, 0, v9, v5
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v9, 16, v10
	s_sub_i32 s14, s14, s30
	v_mul_lo_u32 v3, s10, v3
	s_mul_i32 s7, s7, s14
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v178, s34, v0
	.loc	1 708 20                        ; ragged.py:708:20
	v_cmp_gt_i32_e64 s6, s10, v6
	v_or_b32_e32 v6, 0x3f0, v0
	v_or_b32_e32 v8, 0x7f0, v0
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	.loc	1 771 19                        ; ragged.py:771:19
	s_lshl_b32 s7, s7, 8
	s_lshl_b32 s14, s2, 8
	v_mul_lo_u32 v9, s11, v9
	v_mul_lo_u32 v10, s11, v10
	s_add_i32 s14, s14, s7
	s_lshl_b32 s7, s30, 6
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v134, 0, v1
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v0, 28, v0
	v_dual_mov_b32 v114, 0 :: v_dual_lshlrev_b32 v7, 1, v7
	v_add3_u32 v3, v3, s7, v4
	v_cndmask_b32_e64 v4, 0, 1, s40
	v_mul_lo_u32 v182, v11, s39
	s_lshl_b32 s7, s29, 6
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s11, v178
	.loc	1 771 19                        ; ragged.py:771:19
	v_add3_u32 v141, s14, v9, v2
	v_add3_u32 v142, s14, v10, v2
	v_subrev_nc_u32_e32 v143, s7, v3
	v_cmp_ne_u32_e64 s7, 1, v4
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v144, 0, v6
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v145, 0, v8
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v146, v134, v1
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v183, v5, v0
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v184, 0, v7
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v82, 0
	v_mov_b32_e32 v163, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v81, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_add_i32 s37, s37, -1
	.loc	1 816 37                        ; ragged.py:816:37
	s_mul_i32 s3, s22, s39
	s_and_b32 s25, s13, 0xffff
	s_lshl_b32 s23, s11, 4
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s36, 0
	.loc	1 771 19                        ; ragged.py:771:19
	s_lshr_b32 s22, s37, 6
	s_sub_i32 s2, s35, 32
	s_lshl_b32 s37, s11, 6
	s_lshl_b32 s35, s11, 5
	s_lshl_b32 s38, s10, 6
	s_lshl_b32 s10, s10, 5
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v178, off offset:80
	scratch_store_b32 off, v179, off offset:84
	scratch_store_b32 off, v180, off offset:88
	scratch_store_b32 off, v181, off offset:92
	scratch_store_b32 off, v182, off offset:96
	scratch_store_b32 off, v183, off offset:100
	scratch_store_b32 off, v184, off offset:104
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 808 40                        ; ragged.py:808:40
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v32, v179, s36, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_add_i32 s14, s36, s3
	.loc	1 808 40                        ; ragged.py:808:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v33, v180, s36, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v34, v181, s36, 1
	.loc	1 816 25                        ; ragged.py:816:25
	s_mul_i32 s14, s14, s11
	.loc	1 808 40                        ; ragged.py:808:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v35, v182, s36, 1
	.loc	1 815 40                        ; ragged.py:815:40
	v_add_lshl_u32 v36, v178, s14, 1
	.loc	1 808 40                        ; ragged.py:808:40
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	v_cndmask_b32_e64 v34, 0x80000000, v34, s9
	v_cndmask_b32_e64 v35, 0x80000000, v35, s8
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
	s_add_i32 s14, s36, 1
	.loc	1 771 19                        ; ragged.py:771:19
	s_cmp_lg_u32 s36, s22
	s_mov_b32 s36, s14
	v_add_nc_u32_e32 v143, s38, v143
	.loc	1 808 40                        ; ragged.py:808:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 813 21                        ; ragged.py:813:21
	v_dual_mul_f32 v53, v139, v33 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v39, v160, v32 :: v_dual_lshlrev_b32 v34, 16, v34
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v42, v157, v32 :: v_dual_lshlrev_b32 v35, 16, v35
	v_mul_f32_e32 v40, v159, v32
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v55, v137, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_dual_mul_f32 v38, v161, v32 :: v_dual_add_nc_u32 v141, s37, v141
	v_dual_mul_f32 v37, v162, v32 :: v_dual_add_nc_u32 v142, s37, v142
	v_dual_mul_f32 v41, v158, v32 :: v_dual_mul_f32 v52, v140, v33
	v_dual_mul_f32 v43, v156, v32 :: v_dual_mul_f32 v54, v138, v33
	v_dual_mul_f32 v44, v155, v32 :: v_dual_mul_f32 v57, v102, v33
	v_dual_mul_f32 v45, v154, v32 :: v_dual_mul_f32 v56, v133, v33
	v_dual_mul_f32 v46, v153, v32 :: v_dual_mul_f32 v61, v70, v33
	v_dual_mul_f32 v47, v152, v32 :: v_dual_mul_f32 v58, v101, v33
	v_dual_mul_f32 v48, v151, v32 :: v_dual_mul_f32 v59, v85, v33
	v_dual_mul_f32 v49, v150, v32 :: v_dual_mul_f32 v60, v71, v33
	v_dual_mul_f32 v50, v149, v32 :: v_dual_mul_f32 v63, v68, v33
	v_dual_mul_f32 v51, v148, v32 :: v_dual_mul_f32 v62, v69, v33
	v_dual_mul_f32 v32, v147, v32 :: v_dual_mul_f32 v65, v65, v33
	v_dual_mul_f32 v67, v67, v33 :: v_dual_mul_f32 v30, v30, v34
	v_dual_mul_f32 v66, v66, v33 :: v_dual_mul_f32 v31, v31, v34
	v_dual_mul_f32 v33, v64, v33 :: v_dual_mul_f32 v64, v27, v34
	v_dual_mul_f32 v29, v29, v34 :: v_dual_mul_f32 v14, v14, v35
	v_dual_mul_f32 v28, v28, v34 :: v_dual_mul_f32 v15, v15, v35
	v_dual_mul_f32 v68, v26, v34 :: v_dual_mul_f32 v79, v11, v35
	v_dual_mul_f32 v69, v25, v34 :: v_dual_mul_f32 v78, v12, v35
	v_dual_mul_f32 v70, v24, v34 :: v_dual_mul_f32 v9, v9, v35
	v_mul_f32_e32 v71, v23, v34
	v_dual_mul_f32 v72, v22, v34 :: v_dual_mul_f32 v7, v7, v35
	v_dual_mul_f32 v73, v21, v34 :: v_dual_mul_f32 v80, v10, v35
	v_dual_mul_f32 v74, v20, v34 :: v_dual_mul_f32 v5, v5, v35
	v_dual_mul_f32 v75, v19, v34 :: v_dual_mul_f32 v8, v8, v35
	v_dual_mul_f32 v76, v18, v34 :: v_dual_mul_f32 v3, v3, v35
	v_dual_mul_f32 v77, v17, v34 :: v_dual_mul_f32 v6, v6, v35
	v_dual_mul_f32 v34, v16, v34 :: v_dual_mul_f32 v1, v1, v35
	.loc	1 820 21                        ; ragged.py:820:21
	ds_store_b32 v183, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v184
	ds_load_b128 v[20:23], v184 offset:16
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v36, v13, v35
	.loc	1 820 21                        ; ragged.py:820:21
	ds_load_b128 v[10:13], v184 offset:512
	ds_load_b128 v[24:27], v184 offset:528
	.loc	1 813 21                        ; ragged.py:813:21
	v_mul_f32_e32 v4, v4, v35
	v_mul_f32_e32 v2, v2, v35
	v_mul_f32_e32 v0, v0, v35
	.loc	1 821 17                        ; ragged.py:821:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v132, v37, v16 :: v_dual_fmac_f32 v129, v40, v19
	v_dual_fmac_f32 v131, v38, v17 :: v_dual_fmac_f32 v130, v39, v18
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v125, v44, v23 :: v_dual_fmac_f32 v128, v41, v20
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v123, v46, v11
	v_dual_fmac_f32 v127, v42, v21 :: v_dual_fmac_f32 v126, v43, v22
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v119, v50, v25 :: v_dual_fmac_f32 v124, v45, v10
	v_dual_fmac_f32 v117, v32, v27 :: v_dual_fmac_f32 v122, v47, v12
	v_fmac_f32_e32 v115, v53, v17
	v_dual_fmac_f32 v121, v48, v13 :: v_dual_fmac_f32 v120, v49, v24
	v_fmac_f32_e32 v113, v55, v19
	v_dual_fmac_f32 v118, v51, v26 :: v_dual_fmac_f32 v111, v57, v21
	v_dual_fmac_f32 v116, v52, v16 :: v_dual_fmac_f32 v109, v59, v23
	v_dual_fmac_f32 v114, v54, v18 :: v_dual_fmac_f32 v107, v61, v11
	v_dual_fmac_f32 v112, v56, v20 :: v_dual_fmac_f32 v105, v63, v13
	v_dual_fmac_f32 v110, v58, v22 :: v_dual_fmac_f32 v99, v33, v27
	v_dual_fmac_f32 v108, v60, v10 :: v_dual_fmac_f32 v103, v66, v25
	v_dual_fmac_f32 v106, v62, v12 :: v_dual_fmac_f32 v95, v28, v19
	v_dual_fmac_f32 v104, v67, v24 :: v_dual_fmac_f32 v97, v30, v17
	v_dual_fmac_f32 v100, v65, v26 :: v_dual_fmac_f32 v93, v68, v21
	v_dual_fmac_f32 v98, v31, v16 :: v_dual_fmac_f32 v91, v70, v23
	v_dual_fmac_f32 v96, v29, v18 :: v_dual_fmac_f32 v89, v72, v11
	v_dual_fmac_f32 v94, v64, v20 :: v_dual_fmac_f32 v87, v74, v13
	v_dual_fmac_f32 v92, v69, v22 :: v_dual_fmac_f32 v177, v75, v24
	v_dual_fmac_f32 v90, v71, v10 :: v_dual_fmac_f32 v163, v5, v12
	v_dual_fmac_f32 v88, v73, v12 :: v_dual_fmac_f32 v171, v36, v18
	v_dual_fmac_f32 v176, v76, v25 :: v_dual_fmac_f32 v175, v77, v26
	v_dual_fmac_f32 v174, v34, v27 :: v_dual_fmac_f32 v173, v15, v16
	v_dual_fmac_f32 v172, v14, v17 :: v_dual_fmac_f32 v169, v79, v20
	v_dual_fmac_f32 v170, v78, v19 :: v_dual_fmac_f32 v167, v9, v22
	v_dual_fmac_f32 v168, v80, v21 :: v_dual_fmac_f32 v165, v7, v10
	v_dual_fmac_f32 v166, v8, v23 :: v_dual_fmac_f32 v83, v2, v25
	v_fmac_f32_e32 v164, v6, v11
	v_fmac_f32_e32 v86, v4, v13
	v_dual_fmac_f32 v84, v3, v24 :: v_dual_fmac_f32 v81, v0, v27
	v_fmac_f32_e32 v82, v1, v26
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
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v162, 0
	v_mov_b32_e32 v159, 0
	v_mov_b32_e32 v161, 0
	.loc	1 775 23 is_stmt 1              ; ragged.py:775:23
	s_and_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v149, v143
	v_dual_mov_b32 v150, v142 :: v_dual_mov_b32 v151, v141
	s_mov_b32 s39, s2
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
	s_clause 0x13                           ; 80-byte Folded Spill
	scratch_store_b32 off, v177, off offset:76
	scratch_store_b32 off, v176, off offset:72
	scratch_store_b32 off, v175, off offset:68
	scratch_store_b32 off, v174, off offset:64
	scratch_store_b32 off, v173, off offset:60
	scratch_store_b32 off, v172, off offset:56
	scratch_store_b32 off, v171, off offset:52
	scratch_store_b32 off, v170, off offset:48
	scratch_store_b32 off, v169, off offset:44
	scratch_store_b32 off, v168, off offset:40
	scratch_store_b32 off, v167, off offset:36
	scratch_store_b32 off, v166, off offset:32
	scratch_store_b32 off, v165, off offset:28
	scratch_store_b32 off, v164, off offset:24
	scratch_store_b32 off, v163, off offset:20
	scratch_store_b32 off, v86, off offset:16
	scratch_store_b32 off, v84, off offset:12
	scratch_store_b32 off, v83, off offset:8
	scratch_store_b32 off, v82, off offset:4
	scratch_store_b32 off, v81, off
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 786 38 is_stmt 1              ; ragged.py:786:38
	v_cndmask_b32_e64 v64, 0x80000000, v149, s6
	.loc	1 787 38                        ; ragged.py:787:38
	v_cndmask_b32_e64 v66, 0x80000000, v150, s1
	v_cndmask_b32_e64 v67, 0x80000000, v151, s1
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	.loc	1 786 38                        ; ragged.py:786:38
	buffer_load_b64 v[64:65], v64, s[24:27], 0 offen
	.loc	1 787 38                        ; ragged.py:787:38
	s_clause 0x1
	buffer_load_b128 v[72:75], v66, s[12:15], 0 offen
	buffer_load_b128 v[76:79], v67, s[12:15], 0 offen
	.loc	1 786 38                        ; ragged.py:786:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 23                        ; ragged.py:775:23
	v_add_nc_u32_e32 v151, s35, v151
	v_add_nc_u32_e32 v150, s35, v150
	v_add_nc_u32_e32 v149, s10, v149
	s_add_i32 s39, s39, 32
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s39, 32
	.loc	1 786 38                        ; ragged.py:786:38
	s_waitcnt vmcnt(2)
	ds_store_b64 v134, v[64:65]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 795 31                        ; ragged.py:795:31
	ds_load_u8 v64, v135 offset:192
	ds_load_u8 v65, v135 offset:128
	ds_load_u8 v85, v135 offset:208
	ds_load_u8 v137, v135 offset:144
	ds_load_u8 v253, v135 offset:224
	ds_load_u8 v255, v135 offset:160
	ds_load_u8 v238, v135 offset:240
	ds_load_u8 v240, v135 offset:176
	ds_load_u8 v80, v135 offset:448
	ds_load_u8 v81, v135 offset:384
	ds_load_u8 v66, v135 offset:464
	ds_load_u8 v67, v135 offset:400
	ds_load_u8 v138, v135 offset:480
	ds_load_u8 v139, v135 offset:416
	ds_load_u8 v245, v135 offset:496
	ds_load_u8 v246, v135 offset:432
	ds_load_u8 v82, v135 offset:320
	ds_load_u8 v83, v135 offset:256
	ds_load_u8 v68, v135 offset:336
	ds_load_u8 v69, v135 offset:272
	ds_load_u8 v140, v135 offset:352
	ds_load_u8 v133, v135 offset:288
	ds_load_u8 v249, v135 offset:368
	ds_load_u8 v251, v135 offset:304
	ds_load_u8 v84, v135 offset:64
	ds_load_u8 v70, v135 offset:80
	ds_load_u8 v147, v135 offset:96
	ds_load_u8 v250, v135 offset:112
	ds_load_u8 v86, v135
	ds_load_u8 v71, v135 offset:16
	ds_load_u8 v148, v135 offset:32
	ds_load_u8 v101, v135 offset:48
	ds_load_u8 v236, v135 offset:960
	ds_load_u8 v237, v135 offset:896
	ds_load_u8 v163, v135 offset:1024
	ds_load_u8 v193, v135 offset:976
	ds_load_u8 v194, v135 offset:912
	ds_load_u8 v186, v135 offset:992
	ds_load_u8 v188, v135 offset:928
	ds_load_u8 v192, v135 offset:944
	ds_load_u8 v241, v135 offset:832
	ds_load_u8 v242, v135 offset:768
	ds_load_u8 v206, v135 offset:848
	ds_load_u8 v207, v135 offset:784
	ds_load_u8 v202, v135 offset:864
	ds_load_u8 v204, v135 offset:800
	ds_load_u8 v203, v135 offset:880
	ds_load_u8 v205, v135 offset:816
	ds_load_u8 v247, v135 offset:704
	ds_load_u8 v248, v135 offset:640
	ds_load_u8 v219, v135 offset:720
	ds_load_u8 v221, v135 offset:656
	ds_load_u8 v216, v135 offset:736
	ds_load_u8 v217, v135 offset:672
	ds_load_u8 v220, v135 offset:752
	ds_load_u8 v222, v135 offset:688
	ds_load_u8 v252, v135 offset:576
	ds_load_u8 v254, v135 offset:512
	ds_load_u8 v229, v135 offset:592
	ds_load_u8 v232, v135 offset:528
	ds_load_u8 v226, v135 offset:608
	ds_load_u8 v227, v135 offset:544
	ds_load_u8 v230, v135 offset:624
	ds_load_u8 v233, v135 offset:560
	ds_load_u8 v218, v135 offset:1216
	ds_load_u8 v223, v135 offset:1280
	ds_load_u8 v169, v135 offset:1232
	ds_load_u8 v170, v135 offset:1168
	ds_load_u8 v165, v135 offset:1248
	ds_load_u8 v166, v135 offset:1184
	ds_load_u8 v167, v135 offset:1264
	ds_load_u8 v168, v135 offset:1200
	ds_load_u8 v228, v135 offset:1152
	ds_load_u8 v231, v135 offset:1088
	ds_load_u8 v182, v135 offset:1104
	ds_load_u8 v183, v135 offset:1040
	ds_load_u8 v178, v135 offset:1120
	ds_load_u8 v179, v135 offset:1056
	ds_load_u8 v180, v135 offset:1136
	ds_load_u8 v181, v135 offset:1072
	ds_load_u8 v239, v135 offset:1472
	ds_load_u8 v172, v135 offset:1536
	ds_load_u8 v200, v135 offset:1488
	ds_load_u8 v201, v135 offset:1424
	ds_load_u8 v195, v135 offset:1504
	ds_load_u8 v196, v135 offset:1440
	ds_load_u8 v197, v135 offset:1520
	ds_load_u8 v198, v135 offset:1456
	ds_load_u8 v243, v135 offset:1408
	ds_load_u8 v244, v135 offset:1344
	ds_load_u8 v213, v135 offset:1360
	ds_load_u8 v215, v135 offset:1296
	ds_load_u8 v208, v135 offset:1376
	ds_load_u8 v209, v135 offset:1312
	ds_load_u8 v210, v135 offset:1392
	ds_load_u8 v212, v135 offset:1328
	ds_load_u8 v199, v135 offset:1984
	ds_load_u8 v156, v135 offset:2000
	ds_load_u8 v157, v135 offset:1936
	ds_load_u8 v152, v135 offset:2016
	ds_load_u8 v153, v135 offset:1952
	ds_load_u8 v102, v144
	ds_load_u8 v154, v145
	ds_load_u8 v155, v135 offset:1968
	ds_load_u8 v211, v135 offset:1920
	ds_load_u8 v214, v135 offset:1856
	ds_load_u8 v162, v135 offset:1872
	ds_load_u8 v164, v135 offset:1808
	ds_load_u8 v158, v135 offset:1888
	ds_load_u8 v160, v135 offset:1824
	ds_load_u8 v159, v135 offset:1904
	ds_load_u8 v161, v135 offset:1840
	ds_load_u8 v224, v135 offset:1728
	ds_load_u8 v225, v135 offset:1792
	ds_load_u8 v174, v135 offset:1744
	ds_load_u8 v176, v135 offset:1680
	ds_load_u8 v171, v135 offset:1760
	ds_load_u8 v173, v135 offset:1696
	ds_load_u8 v175, v135 offset:1776
	ds_load_u8 v177, v135 offset:1712
	ds_load_u8 v234, v135 offset:1664
	ds_load_u8 v235, v135 offset:1600
	ds_load_u8 v187, v135 offset:1616
	ds_load_u8 v190, v135 offset:1552
	ds_load_u8 v184, v135 offset:1632
	ds_load_u8 v185, v135 offset:1568
	ds_load_u8 v189, v135 offset:1648
	ds_load_u8 v191, v135 offset:1584
	.loc	1 787 38                        ; ragged.py:787:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v146, v[72:75]
	s_waitcnt vmcnt(0)
	ds_store_b128 v146, v[76:79] offset:4096
	.loc	1 795 31                        ; ragged.py:795:31
	v_perm_b32 v72, v83, v82, 0xc0c0004
	v_perm_b32 v73, v81, v80, 0xc0c0004
	v_perm_b32 v74, v86, v84, 0xc0c0004
	v_perm_b32 v64, v65, v64, 0xc0c0004
	.loc	1 787 38                        ; ragged.py:787:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 795 31                        ; ragged.py:795:31
	v_lshl_or_b32 v65, v73, 16, v72
	v_perm_b32 v68, v69, v68, 0xc0c0004
	v_lshl_or_b32 v64, v64, 16, v74
	ds_load_u8 v72, v136 offset:1280
	ds_load_u8 v73, v136 offset:1024
	ds_load_u8 v74, v136 offset:1920
	ds_load_u8 v75, v136 offset:1664
	ds_load_u8 v76, v136 offset:1408
	ds_load_u8 v77, v136 offset:1152
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_perm_b32 v69, v71, v70, 0xc0c0004
	v_perm_b32 v70, v137, v85, 0xc0c0004
	v_perm_b32 v71, v255, v253, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v67, v66, 16, v68
	v_perm_b32 v68, v133, v140, 0xc0c0004
	v_lshl_or_b32 v66, v70, 16, v69
	v_perm_b32 v69, v139, v138, 0xc0c0004
	v_perm_b32 v70, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v69, v69, 16, v68
	v_lshl_or_b32 v68, v71, 16, v70
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v136 offset:1792
	ds_load_u8 v78, v136 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	v_perm_b32 v70, v251, v249, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	v_perm_b32 v71, v246, v245, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v75, v74, 16, v76
	v_perm_b32 v76, v101, v250, 0xc0c0004
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v78, v73, 0xc0c0004
	ds_load_u8 v78, v136 offset:256
	ds_load_u8 v79, v136
	ds_load_u8 v80, v136 offset:896
	ds_load_u8 v81, v136 offset:640
	ds_load_u8 v82, v136 offset:384
	ds_load_u8 v83, v136 offset:128
	v_lshl_or_b32 v73, v73, 16, v72
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	ds_load_u8 v79, v136 offset:768
	ds_load_u8 v84, v136 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v77, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v84, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v72, v79, 16, v78
	v_perm_b32 v78, v81, v80, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[0:7], v[72:73], v[64:65], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v74, v78, 16, v77
	v_perm_b32 v77, v240, v238, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[16:23], v[72:73], v[66:67], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[72:73], v[68:69], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[74:75], v[64:65], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v70, v77, 16, v76
	v_wmma_i32_16x16x16_iu4 v[24:31], v[74:75], v[66:67], v[24:31] neg_lo:[1,1,0]
	v_perm_b32 v64, v242, v241, 0xc0c0004
	v_perm_b32 v65, v237, v236, 0xc0c0004
	v_perm_b32 v66, v254, v252, 0xc0c0004
	v_perm_b32 v67, v248, v247, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[40:47], v[74:75], v[68:69], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[72:73], v[70:71], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[74:75], v[70:71], v[56:63] neg_lo:[1,1,0]
	v_lshl_or_b32 v65, v65, 16, v64
	v_lshl_or_b32 v64, v67, 16, v66
	ds_load_u8 v66, v136 offset:3328
	ds_load_u8 v67, v136 offset:3072
	ds_load_u8 v68, v136 offset:3968
	ds_load_u8 v69, v136 offset:3712
	ds_load_u8 v70, v136 offset:3456
	ds_load_u8 v71, v136 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v136 offset:3840
	ds_load_u8 v72, v136 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v68, 16, v70
	v_perm_b32 v70, v207, v206, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v72, v67, 0xc0c0004
	ds_load_u8 v72, v136 offset:2304
	ds_load_u8 v73, v136 offset:2048
	ds_load_u8 v74, v136 offset:2944
	ds_load_u8 v75, v136 offset:2688
	ds_load_u8 v76, v136 offset:2432
	ds_load_u8 v77, v136 offset:2176
	v_lshl_or_b32 v67, v67, 16, v66
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v136 offset:2816
	ds_load_u8 v78, v136 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v77, v76, 0xc0c0004
	v_perm_b32 v76, v205, v203, 0xc0c0004
	v_perm_b32 v77, v192, v102, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v78, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v73, 16, v72
	v_perm_b32 v72, v75, v74, 0xc0c0004
	v_perm_b32 v73, v221, v219, 0xc0c0004
	v_perm_b32 v74, v227, v226, 0xc0c0004
	v_perm_b32 v75, v217, v216, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[0:7], v[66:67], v[64:65], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v72, 16, v71
	v_perm_b32 v71, v194, v193, 0xc0c0004
	v_perm_b32 v72, v232, v229, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[68:69], v[64:65], v[8:15] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v71, 16, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v70, v73, 16, v72
	v_perm_b32 v72, v204, v202, 0xc0c0004
	v_perm_b32 v73, v188, v186, 0xc0c0004
	v_perm_b32 v64, v223, v244, 0xc0c0004
	v_perm_b32 v65, v243, v239, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[16:23], v[66:67], v[70:71], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[68:69], v[70:71], v[24:31] neg_lo:[1,1,0]
	v_lshl_or_b32 v73, v73, 16, v72
	v_lshl_or_b32 v72, v75, 16, v74
	v_perm_b32 v74, v233, v230, 0xc0c0004
	v_perm_b32 v75, v222, v220, 0xc0c0004
	v_lshl_or_b32 v65, v65, 16, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[66:67], v[72:73], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[68:69], v[72:73], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v75, 16, v74
	v_lshl_or_b32 v75, v77, 16, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[66:67], v[74:75], v[48:55] neg_lo:[1,1,0]
	v_perm_b32 v66, v163, v231, 0xc0c0004
	v_perm_b32 v67, v228, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[56:63], v[68:69], v[74:75], v[56:63] neg_lo:[1,1,0]
	v_lshl_or_b32 v64, v67, 16, v66
	ds_load_u8 v66, v136 offset:5376
	ds_load_u8 v67, v136 offset:5120
	ds_load_u8 v68, v136 offset:6016
	ds_load_u8 v69, v136 offset:5760
	ds_load_u8 v70, v136 offset:5504
	ds_load_u8 v71, v136 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v136 offset:5888
	ds_load_u8 v72, v136 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v68, 16, v70
	v_perm_b32 v70, v215, v213, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v72, v67, 0xc0c0004
	ds_load_u8 v72, v136 offset:4352
	ds_load_u8 v73, v136 offset:4096
	ds_load_u8 v74, v136 offset:4992
	ds_load_u8 v75, v136 offset:4736
	ds_load_u8 v76, v136 offset:4480
	ds_load_u8 v77, v136 offset:4224
	v_lshl_or_b32 v67, v67, 16, v66
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v136 offset:4864
	ds_load_u8 v78, v136 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v77, v76, 0xc0c0004
	v_perm_b32 v76, v181, v180, 0xc0c0004
	v_perm_b32 v77, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v78, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v73, 16, v72
	v_perm_b32 v72, v75, v74, 0xc0c0004
	v_perm_b32 v73, v170, v169, 0xc0c0004
	v_perm_b32 v74, v179, v178, 0xc0c0004
	v_perm_b32 v75, v166, v165, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[0:7], v[66:67], v[64:65], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v72, 16, v71
	v_perm_b32 v71, v201, v200, 0xc0c0004
	v_perm_b32 v72, v183, v182, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[68:69], v[64:65], v[8:15] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v71, 16, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v70, v73, 16, v72
	v_perm_b32 v72, v209, v208, 0xc0c0004
	v_perm_b32 v73, v196, v195, 0xc0c0004
	v_perm_b32 v64, v225, v214, 0xc0c0004
	v_perm_b32 v65, v211, v199, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[16:23], v[66:67], v[70:71], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[68:69], v[70:71], v[24:31] neg_lo:[1,1,0]
	v_lshl_or_b32 v73, v73, 16, v72
	v_lshl_or_b32 v72, v75, 16, v74
	v_perm_b32 v74, v212, v210, 0xc0c0004
	v_perm_b32 v75, v198, v197, 0xc0c0004
	v_lshl_or_b32 v65, v65, 16, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[66:67], v[72:73], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[68:69], v[72:73], v[40:47] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v75, 16, v74
	v_lshl_or_b32 v74, v77, 16, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[66:67], v[74:75], v[48:55] neg_lo:[1,1,0]
	v_perm_b32 v66, v172, v235, 0xc0c0004
	v_perm_b32 v67, v234, v224, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[56:63], v[68:69], v[74:75], v[56:63] neg_lo:[1,1,0]
	v_lshl_or_b32 v64, v67, 16, v66
	ds_load_u8 v66, v136 offset:7424
	ds_load_u8 v67, v136 offset:7168
	ds_load_u8 v68, v136 offset:8064
	ds_load_u8 v69, v136 offset:7808
	ds_load_u8 v70, v136 offset:7552
	ds_load_u8 v71, v136 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v136 offset:7936
	ds_load_u8 v72, v136 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v68, 16, v70
	v_perm_b32 v70, v164, v162, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v72, v67, 0xc0c0004
	ds_load_u8 v72, v136 offset:6400
	ds_load_u8 v73, v136 offset:6144
	ds_load_u8 v74, v136 offset:7040
	ds_load_u8 v75, v136 offset:6784
	ds_load_u8 v76, v136 offset:6528
	ds_load_u8 v77, v136 offset:6272
	v_lshl_or_b32 v67, v67, 16, v66
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	ds_load_u8 v73, v136 offset:6912
	ds_load_u8 v78, v136 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v71, v77, v76, 0xc0c0004
	v_perm_b32 v76, v161, v159, 0xc0c0004
	v_perm_b32 v77, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v78, v73, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v73, 16, v72
	v_perm_b32 v72, v75, v74, 0xc0c0004
	v_perm_b32 v73, v176, v174, 0xc0c0004
	v_perm_b32 v74, v185, v184, 0xc0c0004
	v_perm_b32 v75, v173, v171, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[0:7], v[66:67], v[64:65], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v72, 16, v71
	v_perm_b32 v71, v157, v156, 0xc0c0004
	v_perm_b32 v72, v190, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[68:69], v[64:65], v[8:15] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v71, 16, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v70, v73, 16, v72
	v_perm_b32 v72, v160, v158, 0xc0c0004
	v_perm_b32 v73, v153, v152, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[16:23], v[66:67], v[70:71], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[68:69], v[70:71], v[24:31] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v73, v73, 16, v72
	v_lshl_or_b32 v72, v75, 16, v74
	v_perm_b32 v74, v191, v189, 0xc0c0004
	v_perm_b32 v75, v177, v175, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[32:39], v[66:67], v[72:73], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[68:69], v[72:73], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v75, 16, v74
	v_lshl_or_b32 v75, v77, 16, v76
	v_wmma_i32_16x16x16_iu4 v[48:55], v[66:67], v[74:75], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[68:69], v[74:75], v[56:63] neg_lo:[1,1,0]
	.loc	1 775 23                        ; ragged.py:775:23
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	s_clause 0x1a                           ; 108-byte Folded Reload
	scratch_load_b32 v81, off, off
	scratch_load_b32 v82, off, off offset:4
	scratch_load_b32 v83, off, off offset:8
	scratch_load_b32 v84, off, off offset:12
	scratch_load_b32 v86, off, off offset:16
	scratch_load_b32 v163, off, off offset:20
	scratch_load_b32 v164, off, off offset:24
	scratch_load_b32 v165, off, off offset:28
	scratch_load_b32 v166, off, off offset:32
	scratch_load_b32 v167, off, off offset:36
	scratch_load_b32 v168, off, off offset:40
	scratch_load_b32 v169, off, off offset:44
	scratch_load_b32 v170, off, off offset:48
	scratch_load_b32 v171, off, off offset:52
	scratch_load_b32 v172, off, off offset:56
	scratch_load_b32 v173, off, off offset:60
	scratch_load_b32 v174, off, off offset:64
	scratch_load_b32 v175, off, off offset:68
	scratch_load_b32 v176, off, off offset:72
	scratch_load_b32 v177, off, off offset:76
	scratch_load_b32 v178, off, off offset:80
	scratch_load_b32 v179, off, off offset:84
	scratch_load_b32 v180, off, off offset:88
	scratch_load_b32 v181, off, off offset:92
	scratch_load_b32 v182, off, off offset:96
	scratch_load_b32 v183, off, off offset:100
	scratch_load_b32 v184, off, off offset:104
	.loc	1 806 27 is_stmt 1              ; ragged.py:806:27
	v_cvt_f32_i32_e32 v162, v0
	v_cvt_f32_i32_e32 v161, v1
	v_cvt_f32_i32_e32 v160, v2
	v_cvt_f32_i32_e32 v159, v3
	v_cvt_f32_i32_e32 v158, v4
	v_cvt_f32_i32_e32 v157, v5
	v_cvt_f32_i32_e32 v156, v6
	v_cvt_f32_i32_e32 v155, v7
	v_cvt_f32_i32_e32 v154, v8
	v_cvt_f32_i32_e32 v153, v9
	v_cvt_f32_i32_e32 v152, v10
	v_cvt_f32_i32_e32 v151, v11
	v_cvt_f32_i32_e32 v150, v12
	v_cvt_f32_i32_e32 v149, v13
	v_cvt_f32_i32_e32 v148, v14
	v_cvt_f32_i32_e32 v147, v15
	v_cvt_f32_i32_e32 v140, v16
	v_cvt_f32_i32_e32 v139, v17
	v_cvt_f32_i32_e32 v138, v18
	v_cvt_f32_i32_e32 v137, v19
	v_cvt_f32_i32_e32 v133, v20
	v_cvt_f32_i32_e32 v102, v21
	v_cvt_f32_i32_e32 v101, v22
	v_cvt_f32_i32_e32 v85, v23
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
.LBB0_10:                               ; %Flow345
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v8, off, off offset:108
	scratch_load_b32 v11, off, off offset:112
	scratch_load_b32 v12, off, off offset:116
.LBB0_11:                               ; %._crit_edge4
	.loc	1 827 22 is_stmt 1              ; ragged.py:827:22
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v0, s11, v8
	.loc	1 707 36                        ; ragged.py:707:36
	s_waitcnt vmcnt(0)
	v_and_or_b32 v3, v12, 1, v11
	.loc	1 827 22                        ; ragged.py:827:22
	s_mul_i32 s1, s33, s11
	.loc	1 827 13 is_stmt 0              ; ragged.py:827:13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 707 18 is_stmt 1              ; ragged.py:707:18
	v_or_b32_e32 v1, s34, v3
	.loc	1 707 36 is_stmt 0              ; ragged.py:707:36
	v_or_b32_e32 v4, 0x80, v3
	.loc	1 827 22 is_stmt 1              ; ragged.py:827:22
	v_add3_u32 v0, s1, s34, v0
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v16, 6, v3
	.loc	1 709 20                        ; ragged.py:709:20
	v_cmp_gt_i32_e64 s0, s11, v1
	.loc	1 707 18                        ; ragged.py:707:18
	v_or_b32_e32 v2, s34, v4
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
	buffer_store_b32 v132, v21, s[20:23], 0 offen
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
	buffer_store_b32 v131, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v22, s1
	v_cndmask_b32_e64 v22, 0x80000000, v23, s1
	v_cndmask_b32_e64 v23, 0x80000000, v24, s1
	.loc	1 707 36                        ; ragged.py:707:36
	v_or_b32_e32 v11, 0x82, v3
	v_or_b32_e32 v10, 0x84, v3
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v130, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v0, v13, 2
	s_clause 0x2
	buffer_store_b32 v129, v21, s[20:23], 0 offen
	buffer_store_b32 v128, v22, s[20:23], 0 offen
	buffer_store_b32 v127, v23, s[20:23], 0 offen
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
	buffer_store_b32 v126, v2, s[20:23], 0 offen
	buffer_store_b32 v125, v21, s[20:23], 0 offen
	buffer_store_b32 v124, v22, s[20:23], 0 offen
	buffer_store_b32 v123, v23, s[20:23], 0 offen
	buffer_store_b32 v122, v24, s[20:23], 0 offen
	v_add_lshl_u32 v2, v0, v9, 2
	v_add_lshl_u32 v21, v0, v8, 2
	v_add_lshl_u32 v22, v0, v7, 2
	v_add_lshl_u32 v23, v0, v6, 2
	.loc	1 827 22 is_stmt 0              ; ragged.py:827:22
	v_add_nc_u32_e32 v20, s35, v0
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v0, v0, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	s_clause 0x4
	buffer_store_b32 v121, v2, s[20:23], 0 offen
	buffer_store_b32 v120, v21, s[20:23], 0 offen
	buffer_store_b32 v119, v22, s[20:23], 0 offen
	buffer_store_b32 v118, v23, s[20:23], 0 offen
	buffer_store_b32 v117, v0, s[20:23], 0 offen
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
	buffer_store_b32 v116, v0, s[20:23], 0 offen
	buffer_store_b32 v115, v2, s[20:23], 0 offen
	buffer_store_b32 v114, v21, s[20:23], 0 offen
	v_add_lshl_u32 v2, v19, v14, 2
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v23, s1
	buffer_store_b32 v113, v22, s[20:23], 0 offen
	v_add_lshl_u32 v22, v19, v12, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	buffer_store_b32 v112, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	.loc	1 825 20                        ; ragged.py:825:20
	s_and_b32 s1, s4, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	buffer_store_b32 v111, v2, s[20:23], 0 offen
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
	s_and_b32 s1, s9, s0
	s_and_b32 s0, s8, s0
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
	s_and_b32 s1, s9, vcc_lo
	.loc	1 827 13                        ; ragged.py:827:13
	v_add_lshl_u32 v21, v20, v9, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_lshl_u32 v22, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	s_clause 0x2
	buffer_store_b32 v90, v0, s[20:23], 0 offen
	buffer_store_b32 v89, v2, s[20:23], 0 offen
	buffer_store_b32 v88, v19, s[20:23], 0 offen
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_cndmask_b32_e64 v0, 0x80000000, v22, s1
	v_add_lshl_u32 v19, v20, v6, 2
	v_add_lshl_u32 v20, v20, v5, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_clause 0x1
	buffer_store_b32 v87, v21, s[20:23], 0 offen
	buffer_store_b32 v177, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v3, 2
	v_cndmask_b32_e64 v3, 0x80000000, v19, s1
	v_cndmask_b32_e64 v19, 0x80000000, v20, s1
	buffer_store_b32 v176, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	s_clause 0x2
	buffer_store_b32 v175, v3, s[20:23], 0 offen
	buffer_store_b32 v174, v19, s[20:23], 0 offen
	buffer_store_b32 v173, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v16, 2
	v_add_lshl_u32 v15, v1, v15, 2
	v_add_lshl_u32 v14, v1, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_store_b32 v172, v2, s[20:23], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v3, s0
	v_cndmask_b32_e64 v3, 0x80000000, v15, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	buffer_store_b32 v171, v0, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v13, 2
	s_clause 0x2
	buffer_store_b32 v170, v2, s[20:23], 0 offen
	buffer_store_b32 v169, v3, s[20:23], 0 offen
	buffer_store_b32 v168, v14, s[20:23], 0 offen
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
	buffer_store_b32 v167, v0, s[20:23], 0 offen
	buffer_store_b32 v166, v2, s[20:23], 0 offen
	buffer_store_b32 v165, v3, s[20:23], 0 offen
	buffer_store_b32 v164, v4, s[20:23], 0 offen
	buffer_store_b32 v163, v10, s[20:23], 0 offen
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
	buffer_store_b32 v86, v0, s[20:23], 0 offen
	buffer_store_b32 v84, v2, s[20:23], 0 offen
	buffer_store_b32 v83, v3, s[20:23], 0 offen
	buffer_store_b32 v82, v4, s[20:23], 0 offen
	buffer_store_b32 v81, v1, s[20:23], 0 offen
	.loc	1 674 5                         ; ragged.py:674:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 124
		.amdhsa_kernarg_size 80
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 41
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 124
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9380
; TotalNumSgprs: 43
; NumVgprs: 256
; ScratchSize: 124
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 43
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 124
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc128_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 30
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
