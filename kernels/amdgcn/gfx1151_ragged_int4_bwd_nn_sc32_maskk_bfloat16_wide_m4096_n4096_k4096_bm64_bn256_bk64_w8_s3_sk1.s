	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s8, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v88, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s19, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s31, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s30, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s30, s31
	.loc	1 998 20                        ; ragged.py:998:20
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
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s6, s30
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s8, s6
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s26, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s6
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s26, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s9, s2, s4
	.loc	1 1160 43                       ; ragged.py:1160:43
	s_mul_i32 s21, s26, s18
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s7, s9
	s_xor_b32 s10, s9, s30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s36, s10, 31
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s5, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s8, s5
	s_add_i32 s8, s8, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s8, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s8, s6
	s_add_i32 s10, s8, 1
	s_sub_i32 s7, s7, s11
	s_sub_i32 s11, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s6, s10, s8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s27, s26, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s37, s6, s36
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[6:7], s[26:27], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s10, s37, s36
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s8, s10, s30
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s20, s10, 6
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s8, s9, s8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v1, s20, v88
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s27, s[4:5], 0x0
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s5, s18, v1
	v_cmp_gt_i32_e64 s4, s18, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s7, s18, v3
	v_cmp_gt_i32_e64 s6, s18, v4
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s22, s27, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s22, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge15_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s33, s20, s21
	s_lshl_b32 s35, s19, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr33
                                        ; implicit-def: $sgpr35
.LBB0_3:                                ; %Flow303
	s_load_b64 s[16:17], s[0:1], 0x28
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v98, 0xf0, v0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
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
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_mov_b32_e32 v133, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s34, s8, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph14
	s_clause 0x1
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b64 s[28:29], s[0:1], 0x38
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v1, 2, v0
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v4, 2, v0
	v_bfe_i32 v5, v0, 5, 1
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v141, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v3, s20, v1
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v66, 12, v4
	s_add_i32 s33, s20, s21
	v_dual_mov_b32 v125, 0 :: v_dual_and_b32 v4, 0x37c, v4
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v5, 0x88, v5
	.loc	1 1005 20 is_stmt 1             ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s18, v3
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v3, s33, v1
	v_dual_mov_b32 v123, 0 :: v_dual_and_b32 v6, 0x70, v141
	v_bfe_i32 v7, v0, 3, 1
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s28, v1, v[66:67]
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v1, s33, v88
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s1, s22, 31
	v_xor_b32_e32 v144, v5, v4
	v_lshrrev_b32_e32 v4, 1, v0
	s_add_i32 s22, s22, s1
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_lshrrev_b32_e32 v136, 4, v98
	v_and_or_b32 v143, 0x88, v7, v6
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v6, 48, v1
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_ashr_i32 s18, s22, 1
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_lshr_b32 s22, s27, 31
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s40, s3, 4
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_add_i32 s22, s27, s22
	.loc	1 1164 43                       ; ragged.py:1164:43
	s_mul_i32 s3, s26, s28
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v146, 0x70, v4
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v4, 16, v1
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v5, 32, v1
	v_mul_lo_u32 v150, v1, s29
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v1, 5, v0
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_ashr_i32 s41, s22, 1
	s_and_b32 s21, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	v_mul_lo_u32 v153, v6, s29
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add3_u32 v6, s3, s40, v136
	s_bitcmp1_b32 s27, 0
	s_mul_i32 s31, s31, s26
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v2, 4, v88
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v142, s3, v136
	s_cselect_b32 s44, -1, 0
	v_mul_lo_u32 v151, v4, s29
	v_mul_lo_u32 v152, v5, s29
	v_dual_mov_b32 v111, 0 :: v_dual_lshlrev_b32 v4, 2, v98
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v5, 1, v0
	v_dual_mov_b32 v116, 0 :: v_dual_and_b32 v1, 32, v1
	s_sub_i32 s3, s36, s31
	v_mul_lo_u32 v6, s19, v6
	s_sub_i32 s3, s3, s37
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v65, s34, v2
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_mul_i32 s30, s30, s3
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v135, s34, v0
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v5, 28, v5
	v_add3_u32 v1, 0, v4, v1
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v4, 1, v98
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s3, s30, 8
	s_lshl_b32 s2, s2, 8
	v_mad_u64_u32 v[68:69], null, v3, s28, v[66:67]
	s_add_i32 s2, s2, s3
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s19, v65
	v_cmp_gt_i32_e64 s1, s19, v135
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_or_b32_e32 v137, 1, v66
	v_or_b32_e32 v138, 2, v66
	v_or_b32_e32 v139, 3, v66
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v140, 0, v88
	v_xor_b32_e32 v145, 8, v143
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v147, 1, v67
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v148, 2, v67
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v149, 3, v67
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add3_u32 v154, s2, v6, v2
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v155, v1, v5
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v156, 0, v4
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_add_i32 s45, s18, -1
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s42, s26, s29
	.loc	1 1115 13                       ; ragged.py:1115:13
	s_mov_b32 s43, 0
	s_mov_b32 s20, s8
	s_mov_b32 s24, s10
	s_mul_i32 s46, s33, s28
	.loc	1 1115 19 is_stmt 0             ; ragged.py:1115:19
	s_lshr_b32 s47, s45, 4
	s_lshl_b32 s35, s19, 4
	s_mov_b32 s28, s12
	s_mov_b32 s29, s13
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s36, s14
	s_mov_b32 s37, s15
	s_mov_b32 s38, s22
	s_mov_b32 s39, s23
	s_mov_b32 s2, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1206 40 is_stmt 1             ; ragged.py:1206:40
	v_add_lshl_u32 v157, v150, s43, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s2, s43, s42
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v158, v151, s43, 1
	v_add_lshl_u32 v159, v152, s43, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s2, s2, s19
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v160, v153, s43, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v161, v135, s2, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v157, 0x80000000, v157, s5
	v_cndmask_b32_e64 v158, 0x80000000, v158, s4
	v_cndmask_b32_e64 v159, 0x80000000, v159, s7
	v_cndmask_b32_e64 v160, 0x80000000, v160, s6
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v161, 0x80000000, v161, s1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x3
	buffer_load_u16 v157, v157, s[28:31], 0 offen
	buffer_load_u16 v158, v158, s[28:31], 0 offen
	buffer_load_u16 v159, v159, s[28:31], 0 offen
	buffer_load_u16 v160, v160, s[28:31], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v161, v161, s[36:39], 0 offen
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v162, v1
	v_cvt_f32_i32_e32 v163, v2
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v164, v3
	v_cvt_f32_i32_e32 v165, v4
	v_cvt_f32_i32_e32 v166, v5
	v_cvt_f32_i32_e32 v167, v6
	v_cvt_f32_i32_e32 v168, v7
	v_cvt_f32_i32_e32 v169, v8
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s3, s43, 1
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add_nc_u32_e32 v68, 16, v68
	s_lshl_b32 s2, s3, 4
	s_cmp_lg_u32 s43, s47
	s_mov_b32 s43, s3
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v2, 16, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v42, v42, v2 :: v_dual_lshlrev_b32 v1, 16, v157
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v58, v58, v1 :: v_dual_lshlrev_b32 v3, 16, v159
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v60, v60, v1 :: v_dual_lshlrev_b32 v157, 16, v160
	v_mul_f32_e32 v59, v59, v1
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v41, v41, v2 :: v_dual_lshlrev_b32 v4, 16, v161
	v_dual_mul_f32 v57, v57, v1 :: v_dual_add_nc_u32 v154, s35, v154
	v_dual_mul_f32 v61, v61, v1 :: v_dual_mul_f32 v44, v44, v2
	v_dual_mul_f32 v62, v62, v1 :: v_dual_mul_f32 v43, v43, v2
	v_dual_mul_f32 v63, v63, v1 :: v_dual_mul_f32 v46, v46, v2
	v_dual_mul_f32 v64, v64, v1 :: v_dual_mul_f32 v45, v45, v2
	v_dual_mul_f32 v49, v49, v1 :: v_dual_mul_f32 v48, v48, v2
	v_dual_mul_f32 v50, v50, v1 :: v_dual_mul_f32 v47, v47, v2
	v_dual_mul_f32 v51, v51, v1 :: v_dual_mul_f32 v34, v34, v2
	v_dual_mul_f32 v52, v52, v1 :: v_dual_mul_f32 v33, v33, v2
	v_dual_mul_f32 v53, v53, v1 :: v_dual_mul_f32 v36, v36, v2
	v_dual_mul_f32 v54, v54, v1 :: v_dual_mul_f32 v35, v35, v2
	v_dual_mul_f32 v55, v55, v1 :: v_dual_mul_f32 v38, v38, v2
	v_dual_mul_f32 v56, v56, v1 :: v_dual_mul_f32 v37, v37, v2
	v_dual_mul_f32 v39, v39, v2 :: v_dual_mul_f32 v26, v26, v3
	v_dual_mul_f32 v40, v40, v2 :: v_dual_mul_f32 v25, v25, v3
	v_dual_mul_f32 v27, v27, v3 :: v_dual_mul_f32 v158, v9, v157
	v_dual_mul_f32 v28, v28, v3 :: v_dual_mul_f32 v159, v10, v157
	v_dual_mul_f32 v29, v29, v3 :: v_dual_mul_f32 v160, v11, v157
	v_dual_mul_f32 v30, v30, v3 :: v_dual_mul_f32 v161, v12, v157
	v_dual_mul_f32 v31, v31, v3 :: v_dual_mul_f32 v170, v13, v157
	v_dual_mul_f32 v32, v32, v3 :: v_dual_mul_f32 v171, v14, v157
	v_dual_mul_f32 v17, v17, v3 :: v_dual_mul_f32 v172, v15, v157
	v_dual_mul_f32 v18, v18, v3 :: v_dual_mul_f32 v173, v16, v157
	v_dual_mul_f32 v19, v19, v3 :: v_dual_mul_f32 v162, v162, v157
	v_dual_mul_f32 v20, v20, v3 :: v_dual_mul_f32 v163, v163, v157
	v_dual_mul_f32 v21, v21, v3 :: v_dual_mul_f32 v164, v164, v157
	v_dual_mul_f32 v22, v22, v3 :: v_dual_mul_f32 v165, v165, v157
	v_dual_mul_f32 v23, v23, v3 :: v_dual_mul_f32 v166, v166, v157
	v_dual_mul_f32 v24, v24, v3 :: v_dual_mul_f32 v167, v167, v157
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_store_b32 v155, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v156
	ds_load_b128 v[5:8], v156 offset:16
	ds_load_b128 v[9:12], v156 offset:512
	ds_load_b128 v[13:16], v156 offset:528
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v168, v168, v157
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v157, v169, v157 :: v_dual_fmac_f32 v132, v59, v3
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v134, v57, v1 :: v_dual_fmac_f32 v131, v60, v4
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v133, v58, v2 :: v_dual_fmac_f32 v130, v61, v5
	v_dual_fmac_f32 v129, v62, v6 :: v_dual_fmac_f32 v128, v63, v7
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v127, v64, v8 :: v_dual_fmac_f32 v126, v49, v9
	v_dual_fmac_f32 v125, v50, v10 :: v_dual_fmac_f32 v124, v51, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v123, v52, v12 :: v_dual_fmac_f32 v122, v53, v13
	v_dual_fmac_f32 v121, v54, v14 :: v_dual_fmac_f32 v120, v55, v15
	v_dual_fmac_f32 v119, v56, v16 :: v_dual_fmac_f32 v118, v41, v1
	v_dual_fmac_f32 v117, v42, v2 :: v_dual_fmac_f32 v116, v43, v3
	v_dual_fmac_f32 v115, v44, v4 :: v_dual_fmac_f32 v114, v45, v5
	v_dual_fmac_f32 v113, v46, v6 :: v_dual_fmac_f32 v112, v47, v7
	v_dual_fmac_f32 v111, v48, v8 :: v_dual_fmac_f32 v110, v33, v9
	v_dual_fmac_f32 v109, v34, v10 :: v_dual_fmac_f32 v108, v35, v11
	v_dual_fmac_f32 v107, v36, v12 :: v_dual_fmac_f32 v106, v37, v13
	v_dual_fmac_f32 v105, v38, v14 :: v_dual_fmac_f32 v104, v39, v15
	v_dual_fmac_f32 v103, v40, v16 :: v_dual_fmac_f32 v102, v25, v1
	v_dual_fmac_f32 v101, v26, v2 :: v_dual_fmac_f32 v100, v27, v3
	v_fmac_f32_e32 v99, v28, v4
	v_dual_fmac_f32 v97, v29, v5 :: v_dual_fmac_f32 v96, v30, v6
	v_dual_fmac_f32 v95, v31, v7 :: v_dual_fmac_f32 v94, v32, v8
	v_dual_fmac_f32 v93, v17, v9 :: v_dual_fmac_f32 v92, v18, v10
	v_dual_fmac_f32 v91, v19, v11 :: v_dual_fmac_f32 v90, v20, v12
	v_dual_fmac_f32 v89, v21, v13 :: v_dual_fmac_f32 v86, v23, v15
	v_dual_fmac_f32 v87, v22, v14 :: v_dual_fmac_f32 v82, v160, v3
	v_dual_fmac_f32 v85, v24, v16 :: v_dual_fmac_f32 v84, v158, v1
	v_dual_fmac_f32 v83, v159, v2 :: v_dual_fmac_f32 v80, v170, v5
	v_dual_fmac_f32 v81, v161, v4 :: v_dual_fmac_f32 v78, v172, v7
	v_dual_fmac_f32 v79, v171, v6 :: v_dual_fmac_f32 v76, v162, v9
	v_dual_fmac_f32 v77, v173, v8 :: v_dual_fmac_f32 v74, v164, v11
	v_dual_fmac_f32 v75, v163, v10 :: v_dual_fmac_f32 v72, v166, v13
	v_dual_fmac_f32 v73, v165, v12 :: v_dual_fmac_f32 v70, v168, v15
	v_fmac_f32_e32 v71, v167, v14
	v_fmac_f32_e32 v69, v157, v16
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1150 54                       ; ragged.py:1150:54
	s_sub_i32 s3, s41, s2
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1148 45                       ; ragged.py:1148:45
	v_med3_i32 v1, s3, 0, 16
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1152 41                       ; ragged.py:1152:41
	v_readfirstlane_b32 s3, v1
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	s_and_b32 s8, s3, 16
	s_mov_b32 s3, s40
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_ge_i32 s40, s8
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v157, v154
	s_mov_b32 s3, s40
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v58, v57
	v_mov_b32_e32 v59, v57
	v_mov_b32_e32 v60, v57
	v_mov_b32_e32 v61, v57
	v_mov_b32_e32 v62, v57
	v_mov_b32_e32 v63, v57
	v_mov_b32_e32 v64, v57
	v_mov_b32_e32 v49, v57
	v_mov_b32_e32 v50, v57
	v_mov_b32_e32 v51, v57
	v_mov_b32_e32 v52, v57
	v_mov_b32_e32 v53, v57
	v_mov_b32_e32 v54, v57
	v_mov_b32_e32 v55, v57
	v_mov_b32_e32 v56, v57
	v_mov_b32_e32 v41, v57
	v_mov_b32_e32 v42, v57
	v_mov_b32_e32 v43, v57
	v_mov_b32_e32 v44, v57
	v_mov_b32_e32 v45, v57
	v_mov_b32_e32 v46, v57
	v_mov_b32_e32 v47, v57
	v_mov_b32_e32 v48, v57
	v_mov_b32_e32 v33, v57
	v_mov_b32_e32 v34, v57
	v_mov_b32_e32 v35, v57
	v_mov_b32_e32 v36, v57
	v_mov_b32_e32 v37, v57
	v_mov_b32_e32 v38, v57
	v_mov_b32_e32 v39, v57
	v_mov_b32_e32 v40, v57
	v_mov_b32_e32 v25, v57
	v_mov_b32_e32 v26, v57
	v_mov_b32_e32 v27, v57
	v_mov_b32_e32 v28, v57
	v_mov_b32_e32 v29, v57
	v_mov_b32_e32 v30, v57
	v_mov_b32_e32 v31, v57
	v_mov_b32_e32 v32, v57
	v_mov_b32_e32 v17, v57
	v_mov_b32_e32 v18, v57
	v_mov_b32_e32 v19, v57
	v_mov_b32_e32 v20, v57
	v_mov_b32_e32 v21, v57
	v_mov_b32_e32 v22, v57
	v_mov_b32_e32 v23, v57
	v_mov_b32_e32 v24, v57
	v_mov_b32_e32 v9, v57
	v_mov_b32_e32 v10, v57
	v_mov_b32_e32 v11, v57
	v_mov_b32_e32 v12, v57
	v_mov_b32_e32 v13, v57
	v_mov_b32_e32 v14, v57
	v_mov_b32_e32 v15, v57
	v_mov_b32_e32 v16, v57
	v_mov_b32_e32 v1, v57
	v_mov_b32_e32 v2, v57
	v_mov_b32_e32 v3, v57
	v_mov_b32_e32 v4, v57
	v_mov_b32_e32 v5, v57
	v_mov_b32_e32 v6, v57
	v_mov_b32_e32 v7, v57
	v_mov_b32_e32 v8, v57
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	v_add_nc_u32_e32 v158, s3, v68
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_add_nc_u32_e32 v166, 0, v143
	v_add_nc_u32_e32 v174, 0, v145
	v_dual_cndmask_b32 v158, 0x80000000, v158 :: v_dual_add_nc_u32 v163, 0, v144
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_add_nc_u32_e32 v178, 0, v141
	v_add_nc_u32_e32 v180, v140, v146
	.loc	1 1177 25                       ; ragged.py:1177:25
	s_add_i32 s3, s3, 16
	.loc	1 1165 38                       ; ragged.py:1165:38
	buffer_load_b32 v162, v158, s[20:23], 0 offen
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_cndmask_b32_e64 v158, 0x80000000, v157, s0
	.loc	1 1155 27                       ; ragged.py:1155:27
	v_add_nc_u32_e32 v157, s35, v157
	s_cmp_lt_i32 s3, s8
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_b128 v[158:161], v158, s[24:27], 0 offen
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v163, v162
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[162:165], v166 offset1:32
	ds_load_2addr_b64 v[166:169], v166 offset0:64 offset1:96
	ds_load_2addr_b64 v[170:173], v174 offset1:32
	ds_load_2addr_b64 v[174:177], v174 offset0:64 offset1:96
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v178, v[158:161]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1167 35                       ; ragged.py:1167:35
	ds_load_u8 v158, v180 offset:1280
	ds_load_u8 v159, v180 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v180 offset:1792
	ds_load_u8 v160, v180 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v159, 16, v158
	ds_load_u8 v158, v180 offset:256
	ds_load_u8 v160, v180
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v160, v158, 0xc0c0004
	ds_load_u8 v160, v180 offset:768
	ds_load_u8 v161, v180 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v160, 16, v158
	ds_load_u8 v160, v180 offset:3328
	ds_load_u8 v161, v180 offset:3072
	v_wmma_i32_16x16x16_iu4 v[57:64], v[158:159], v[162:163], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[158:159], v[164:165], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[158:159], v[166:167], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[158:159], v[168:169], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v180 offset:3840
	ds_load_u8 v178, v180 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v178, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v161, 16, v160
	ds_load_u8 v160, v180 offset:2304
	ds_load_u8 v178, v180 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v178, v160, 0xc0c0004
	ds_load_u8 v178, v180 offset:2816
	ds_load_u8 v179, v180 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v178, 16, v160
	ds_load_u8 v178, v180 offset:1408
	ds_load_u8 v179, v180 offset:1152
	v_wmma_i32_16x16x16_iu4 v[57:64], v[160:161], v[170:171], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[160:161], v[172:173], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[160:161], v[174:175], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[160:161], v[176:177], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	ds_load_u8 v179, v180 offset:1920
	ds_load_u8 v181, v180 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v181, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v179, 16, v178
	ds_load_u8 v178, v180 offset:384
	ds_load_u8 v181, v180 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v181, v178, 0xc0c0004
	ds_load_u8 v181, v180 offset:896
	ds_load_u8 v182, v180 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v181, 16, v178
	v_wmma_i32_16x16x16_iu4 v[49:56], v[178:179], v[162:163], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v162, v180 offset:3456
	ds_load_u8 v163, v180 offset:3200
	v_wmma_i32_16x16x16_iu4 v[33:40], v[178:179], v[164:165], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[178:179], v[166:167], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[178:179], v[168:169], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v180 offset:3968
	ds_load_u8 v181, v180 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v181, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v163, 16, v162
	ds_load_u8 v162, v180 offset:2432
	ds_load_u8 v181, v180 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v181, v162, 0xc0c0004
	ds_load_u8 v181, v180 offset:2944
	ds_load_u8 v180, v180 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v180, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v180, 16, v162
	v_wmma_i32_16x16x16_iu4 v[49:56], v[162:163], v[170:171], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[162:163], v[172:173], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[162:163], v[174:175], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[162:163], v[176:177], v[1:8] neg_lo:[1,1,0]
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1146 25                       ; ragged.py:1146:25
	s_sub_i32 s8, s18, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1144 42                       ; ragged.py:1144:42
	s_min_i32 s10, s8, 16
	.loc	1 1178 24                       ; ragged.py:1178:24
	s_cmp_ge_i32 s3, s10
	.loc	1 1178 21 is_stmt 0             ; ragged.py:1178:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1179 30 is_stmt 1             ; ragged.py:1179:30
	s_add_i32 s26, s3, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v158, s26, v66
	v_or_b32_e32 v157, s26, v136
	v_or_b32_e32 v159, s26, v137
	v_or_b32_e32 v160, s26, v138
	v_or_b32_e32 v161, s26, v139
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v162, s2, v158
	v_subrev_nc_u32_e32 v166, s2, v157
	v_subrev_nc_u32_e32 v163, s2, v159
	v_subrev_nc_u32_e32 v164, s2, v160
	v_subrev_nc_u32_e32 v165, s2, v161
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s2, s10, v162
	.loc	1 1190 46 is_stmt 1             ; ragged.py:1190:46
	s_add_i32 s27, s26, s46
	.loc	1 1189 60                       ; ragged.py:1189:60
	v_cmp_eq_u32_e64 s15, s45, v157
	v_add_nc_u32_e32 v157, s27, v67
	.loc	1 1188 34                       ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s3, s10, v163
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1189 60                       ; ragged.py:1189:60
	v_cmp_eq_u32_e64 s11, s45, v158
	v_add_nc_u32_e32 v158, s27, v147
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	.loc	1 1188 34                       ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s8, s10, v164
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s3, vcc_lo, s3
	.loc	1 1189 60                       ; ragged.py:1189:60
	v_cmp_eq_u32_e64 s12, s45, v159
	v_add_nc_u32_e32 v159, s27, v148
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v163, v157, s[20:23], 0 offen
	v_cndmask_b32_e64 v157, 0x80000000, v158, s3
	.loc	1 1188 34                       ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s9, s10, v165
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s8, vcc_lo, s8
	.loc	1 1189 60                       ; ragged.py:1189:60
	v_cmp_eq_u32_e64 s13, s45, v160
	v_add_nc_u32_e32 v160, s27, v149
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v164, v157, s[20:23], 0 offen
	v_cndmask_b32_e64 v157, 0x80000000, v159, s8
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s9, vcc_lo, s9
	.loc	1 1188 34 is_stmt 1             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s10, s10, v166
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_mov_b32 s27, s23
	.loc	1 1189 60                       ; ragged.py:1189:60
	v_cmp_eq_u32_e64 s14, s45, v161
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v165, v157, s[20:23], 0 offen
	v_cndmask_b32_e64 v157, 0x80000000, v160, s9
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s2, s0, s10
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s11, s11, s44
	s_and_b32 s13, s13, s44
	s_and_b32 s12, s12, s44
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v166, v157, s[20:23], 0 offen
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v157, s26, v142
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	s_mov_b32 s26, s22
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s14, s14, s44
	s_and_b32 s15, s15, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_mad_u64_u32 v[157:158], null, v157, s19, v[65:66]
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	v_cndmask_b32_e64 v157, 0x80000000, v157, s2
	buffer_load_b128 v[157:160], v157, s[24:27], 0 offen
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1192 66 is_stmt 0             ; ragged.py:1192:66
	s_waitcnt vmcnt(4)
	v_and_b16 v161.l, v163.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v161.l, v163.l, v161.l, s11
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(3)
	v_and_b16 v161.h, v164.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v161.h, v164.l, v161.h, s12
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(2)
	v_and_b16 v162.l, v165.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v162.l, v165.l, v162.l, s13
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(1)
	v_and_b16 v162.h, v166.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v162.h, v166.l, v162.h, s14
	.loc	1 1191 38 is_stmt 1             ; ragged.py:1191:38
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v174, 8, v157
	v_lshrrev_b32_e32 v175, 8, v158
	v_lshrrev_b32_e32 v176, 24, v158
	v_lshrrev_b32_e32 v179, 8, v159
	v_lshrrev_b32_e32 v180, 8, v160
	v_lshrrev_b64 v[171:172], 24, v[157:158]
	v_lshrrev_b64 v[172:173], 24, v[159:160]
	v_lshrrev_b32_e32 v181, 24, v160
	.loc	1 1193 66                       ; ragged.py:1193:66
	v_and_b16 v163.l, v157.l, 15
	v_and_b16 v163.h, v174.l, 15
	v_and_b16 v165.l, v158.l, 15
	v_and_b16 v165.h, v175.l, 15
	v_and_b16 v166.h, v176.l, 15
	v_and_b16 v167.l, v159.l, 15
	v_and_b16 v167.h, v179.l, 15
	v_and_b16 v169.l, v160.l, 15
	v_and_b16 v169.h, v180.l, 15
	v_and_b16 v164.l, v157.h, 15
	v_and_b16 v164.h, v171.l, 15
	v_and_b16 v166.l, v158.h, 15
	v_and_b16 v168.l, v159.h, 15
	v_and_b16 v168.h, v172.l, 15
	v_and_b16 v170.l, v160.h, 15
	v_and_b16 v170.h, v181.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v173.l, v157.l, v163.l, s15
	v_cndmask_b16 v173.h, v174.l, v163.h, s15
	v_cndmask_b16 v174.l, v158.l, v165.l, s15
	v_cndmask_b16 v174.h, v175.l, v165.h, s15
	v_cndmask_b16 v178.h, v176.l, v166.h, s15
	v_cndmask_b16 v175.l, v159.l, v167.l, s15
	v_cndmask_b16 v175.h, v179.l, v167.h, s15
	v_cndmask_b16 v176.l, v160.l, v169.l, s15
	v_cndmask_b16 v176.h, v180.l, v169.h, s15
	v_cndmask_b16 v177.l, v157.h, v164.l, s15
	v_cndmask_b16 v177.h, v171.l, v164.h, s15
	v_cndmask_b16 v178.l, v158.h, v166.l, s15
	v_cndmask_b16 v179.l, v159.h, v168.l, s15
	v_cndmask_b16 v179.h, v172.l, v168.h, s15
	v_cndmask_b16 v180.l, v160.h, v170.l, s15
	v_cndmask_b16 v180.h, v181.l, v170.h, s15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_lshlrev_b16 v157.l, 8, v162.h
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_and_b16 v176.l, 0xff, v176.l
	v_lshlrev_b16 v176.h, 8, v176.h
	v_and_b16 v175.l, 0xff, v175.l
	v_lshlrev_b16 v175.h, 8, v175.h
	v_and_b16 v174.l, 0xff, v174.l
	v_lshlrev_b16 v174.h, 8, v174.h
	v_and_b16 v173.l, 0xff, v173.l
	v_lshlrev_b16 v173.h, 8, v173.h
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_or_b16 v157.h, v162.l, v157.l
	v_lshlrev_b16 v157.l, 8, v161.h
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_or_b16 v176.l, v176.l, v176.h
	v_lshlrev_b16 v176.h, 8, v180.h
	v_and_b16 v180.l, 0xff, v180.l
	v_or_b16 v175.l, v175.l, v175.h
	v_lshlrev_b16 v175.h, 8, v179.h
	v_and_b16 v179.l, 0xff, v179.l
	v_or_b16 v174.l, v174.l, v174.h
	v_lshlrev_b16 v174.h, 8, v178.h
	v_and_b16 v178.l, 0xff, v178.l
	v_or_b16 v173.l, v173.l, v173.h
	v_lshlrev_b16 v173.h, 8, v177.h
	v_and_b16 v177.l, 0xff, v177.l
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_or_b16 v157.l, v161.l, v157.l
	v_add_nc_u32_e32 v158, 0, v144
	v_add_nc_u32_e32 v161, 0, v143
	v_add_nc_u32_e32 v169, 0, v145
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_or_b16 v176.h, v180.l, v176.h
	v_or_b16 v175.h, v179.l, v175.h
	v_or_b16 v174.h, v178.l, v174.h
	v_or_b16 v173.h, v177.l, v173.h
	v_add_nc_u32_e32 v177, 0, v141
	v_add_nc_u32_e32 v179, v140, v146
	.loc	1 1192 38                       ; ragged.py:1192:38
	ds_store_b32 v158, v157
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[157:160], v161 offset1:32
	ds_load_2addr_b64 v[161:164], v161 offset0:64 offset1:96
	ds_load_2addr_b64 v[165:168], v169 offset1:32
	ds_load_2addr_b64 v[169:172], v169 offset0:64 offset1:96
	.loc	1 1193 38                       ; ragged.py:1193:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v177, v[173:176]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1194 35                       ; ragged.py:1194:35
	ds_load_u8 v173, v179 offset:1280
	ds_load_u8 v174, v179 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v179 offset:1792
	ds_load_u8 v175, v179 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v174, 16, v173
	ds_load_u8 v173, v179 offset:256
	ds_load_u8 v175, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v175, v173, 0xc0c0004
	ds_load_u8 v175, v179 offset:768
	ds_load_u8 v176, v179 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v175, 16, v173
	ds_load_u8 v175, v179 offset:3328
	ds_load_u8 v176, v179 offset:3072
	v_wmma_i32_16x16x16_iu4 v[57:64], v[173:174], v[157:158], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[173:174], v[159:160], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[173:174], v[161:162], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[173:174], v[163:164], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	ds_load_u8 v176, v179 offset:3840
	ds_load_u8 v177, v179 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v176, 16, v175
	ds_load_u8 v175, v179 offset:2304
	ds_load_u8 v177, v179 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v177, v175, 0xc0c0004
	ds_load_u8 v177, v179 offset:2816
	ds_load_u8 v178, v179 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v177, 16, v175
	ds_load_u8 v177, v179 offset:1408
	ds_load_u8 v178, v179 offset:1152
	v_wmma_i32_16x16x16_iu4 v[57:64], v[175:176], v[165:166], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[175:176], v[167:168], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[175:176], v[169:170], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[175:176], v[171:172], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	ds_load_u8 v178, v179 offset:1920
	ds_load_u8 v180, v179 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v180, v178, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v178, 16, v177
	ds_load_u8 v177, v179 offset:384
	ds_load_u8 v180, v179 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v180, v177, 0xc0c0004
	ds_load_u8 v180, v179 offset:896
	ds_load_u8 v181, v179 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v177, v180, 16, v177
	v_wmma_i32_16x16x16_iu4 v[49:56], v[177:178], v[157:158], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v157, v179 offset:3456
	ds_load_u8 v158, v179 offset:3200
	v_wmma_i32_16x16x16_iu4 v[33:40], v[177:178], v[159:160], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[177:178], v[161:162], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[177:178], v[163:164], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v179 offset:3968
	ds_load_u8 v180, v179 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v180, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v158, 16, v157
	ds_load_u8 v157, v179 offset:2432
	ds_load_u8 v180, v179 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v180, v157, 0xc0c0004
	ds_load_u8 v180, v179 offset:2944
	ds_load_u8 v179, v179 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v179, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v157, v179, 16, v157
	v_wmma_i32_16x16x16_iu4 v[49:56], v[157:158], v[165:166], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[157:158], v[167:168], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[157:158], v[169:170], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[157:158], v[171:172], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge15
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v1, 1, v98
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s0, s33, s19
	v_mul_lo_u32 v3, s19, v88
	s_add_i32 s1, s0, s34
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_bfe_u32 v7, v134, 16, 1
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add_nc_u32_e32 v4, s1, v1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v8, v133, 16, 1
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	v_or_b32_e32 v9, 0x80, v1
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v10, s34, v1
	.loc	1 1239 17 is_stmt 1             ; ragged.py:1239:17
	v_add3_u32 v7, v134, v7, 0x7fff
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_mad_u64_u32 v[1:2], null, s19, 48, v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v11, s34, v9
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s19, v10
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add_nc_u32_e32 v2, s1, v9
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_bfe_u32 v9, v132, 16, 1
	v_cmp_o_f32_e64 s1, v134, v134
	v_add3_u32 v8, v133, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v133, v133
	v_bfe_u32 v10, v131, 16, 1
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v9, v132, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v132, v132
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s2
	v_bfe_u32 v8, v130, 16, 1
	v_bfe_u32 v11, v129, 16, 1
	v_add3_u32 v10, v131, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v131, v131
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s3
	v_add3_u32 v8, v130, v8, 0x7fff
	v_cmp_o_f32_e64 s2, v130, v130
	v_add3_u32 v11, v129, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v129, v129
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v128, 16, 1
	v_bfe_u32 v12, v127, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s2
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s3
	v_bfe_u32 v11, v126, 16, 1
	v_add3_u32 v10, v128, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v128, v128
	v_add3_u32 v12, v127, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v127, v127
	v_bfe_u32 v13, v125, 16, 1
	v_add3_u32 v11, v126, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v126, v126
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s2
	v_bfe_u32 v12, v124, 16, 1
	v_bfe_u32 v14, v123, 16, 1
	v_add3_u32 v13, v125, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v125, v125
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s3
	v_add3_u32 v12, v124, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v124, v124
	v_add3_u32 v14, v123, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v123, v123
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s1
	v_bfe_u32 v13, v122, 16, 1
	v_bfe_u32 v15, v121, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s2
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s3
	v_bfe_u32 v14, v120, 16, 1
	v_add3_u32 v13, v122, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v122, v122
	v_add3_u32 v15, v121, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v121, v121
	v_bfe_u32 v16, v119, 16, 1
	v_add3_u32 v14, v120, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v120, v120
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s1
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s2
	v_bfe_u32 v15, v118, 16, 1
	v_bfe_u32 v17, v117, 16, 1
	v_add3_u32 v16, v119, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v119, v119
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s3
	v_add3_u32 v15, v118, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v118, v118
	v_add3_u32 v17, v117, v17, 0x7fff
	v_cmp_o_f32_e64 s3, v117, v117
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s1
	v_bfe_u32 v16, v116, 16, 1
	v_bfe_u32 v18, v115, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s2
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s3
	v_bfe_u32 v17, v114, 16, 1
	v_add3_u32 v16, v116, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v116, v116
	v_add3_u32 v18, v115, v18, 0x7fff
	v_cmp_o_f32_e64 s2, v115, v115
	v_bfe_u32 v19, v113, 16, 1
	v_add3_u32 v17, v114, v17, 0x7fff
	v_cmp_o_f32_e64 s3, v114, v114
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s1
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s2
	v_bfe_u32 v18, v112, 16, 1
	v_bfe_u32 v20, v111, 16, 1
	v_add3_u32 v19, v113, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v113, v113
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s3
	v_add3_u32 v18, v112, v18, 0x7fff
	v_cmp_o_f32_e64 s2, v112, v112
	v_add3_u32 v20, v111, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v111, v111
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v110, 16, 1
	v_bfe_u32 v21, v109, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s2
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s3
	v_bfe_u32 v20, v108, 16, 1
	v_add3_u32 v19, v110, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v110, v110
	v_add3_u32 v21, v109, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v109, v109
	v_bfe_u32 v22, v107, 16, 1
	v_add3_u32 v20, v108, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v108, v108
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s1
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s2
	v_bfe_u32 v21, v106, 16, 1
	v_bfe_u32 v23, v105, 16, 1
	v_add3_u32 v22, v107, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v107, v107
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s3
	v_add3_u32 v21, v106, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v106, v106
	v_add3_u32 v23, v105, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v105, v105
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s1
	v_bfe_u32 v22, v104, 16, 1
	v_bfe_u32 v24, v103, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s2
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s3
	v_bfe_u32 v23, v102, 16, 1
	v_add3_u32 v22, v104, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v104, v104
	v_add3_u32 v24, v103, v24, 0x7fff
	v_cmp_o_f32_e64 s2, v103, v103
	v_bfe_u32 v25, v101, 16, 1
	v_add3_u32 v23, v102, v23, 0x7fff
	v_cmp_o_f32_e64 s3, v102, v102
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s1
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s2
	v_bfe_u32 v24, v100, 16, 1
	v_bfe_u32 v26, v99, 16, 1
	v_add3_u32 v25, v101, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v101, v101
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s3
	v_add3_u32 v24, v100, v24, 0x7fff
	v_cmp_o_f32_e64 s2, v100, v100
	v_add3_u32 v26, v99, v26, 0x7fff
	v_cmp_o_f32_e64 s3, v99, v99
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s1
	v_bfe_u32 v25, v97, 16, 1
	v_bfe_u32 v27, v96, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s2
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s3
	v_bfe_u32 v26, v95, 16, 1
	v_add3_u32 v25, v97, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v97, v97
	v_add3_u32 v27, v96, v27, 0x7fff
	v_cmp_o_f32_e64 s2, v96, v96
	v_bfe_u32 v28, v94, 16, 1
	v_add3_u32 v26, v95, v26, 0x7fff
	v_cmp_o_f32_e64 s3, v95, v95
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s1
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s2
	v_bfe_u32 v27, v93, 16, 1
	v_bfe_u32 v29, v92, 16, 1
	v_add3_u32 v28, v94, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v94, v94
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s3
	v_add3_u32 v27, v93, v27, 0x7fff
	v_cmp_o_f32_e64 s2, v93, v93
	v_add3_u32 v29, v92, v29, 0x7fff
	v_cmp_o_f32_e64 s3, v92, v92
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s1
	v_bfe_u32 v28, v91, 16, 1
	v_bfe_u32 v30, v90, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s2
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s3
	v_bfe_u32 v29, v89, 16, 1
	v_add3_u32 v28, v91, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v91, v91
	v_add3_u32 v30, v90, v30, 0x7fff
	v_cmp_o_f32_e64 s2, v90, v90
	v_bfe_u32 v31, v87, 16, 1
	v_add3_u32 v29, v89, v29, 0x7fff
	v_cmp_o_f32_e64 s3, v89, v89
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s1
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s2
	v_bfe_u32 v30, v86, 16, 1
	v_bfe_u32 v32, v85, 16, 1
	v_add3_u32 v31, v87, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v87, v87
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s3
	v_add3_u32 v30, v86, v30, 0x7fff
	v_cmp_o_f32_e64 s2, v86, v86
	v_add3_u32 v32, v85, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v85, v85
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s1
	v_bfe_u32 v31, v84, 16, 1
	v_bfe_u32 v33, v83, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s2
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s3
	v_bfe_u32 v32, v82, 16, 1
	v_add3_u32 v31, v84, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v84, v84
	v_add3_u32 v33, v83, v33, 0x7fff
	v_cmp_o_f32_e64 s2, v83, v83
	v_bfe_u32 v34, v81, 16, 1
	v_add3_u32 v32, v82, v32, 0x7fff
	v_cmp_o_f32_e64 s3, v82, v82
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s1
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s2
	v_bfe_u32 v33, v80, 16, 1
	v_bfe_u32 v35, v79, 16, 1
	v_add3_u32 v34, v81, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v81, v81
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s3
	v_add3_u32 v33, v80, v33, 0x7fff
	v_cmp_o_f32_e64 s2, v80, v80
	v_add3_u32 v35, v79, v35, 0x7fff
	v_cmp_o_f32_e64 s3, v79, v79
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s1
	v_bfe_u32 v34, v78, 16, 1
	v_bfe_u32 v36, v77, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s2
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s3
	v_bfe_u32 v35, v76, 16, 1
	v_add3_u32 v34, v78, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v78, v78
	v_add3_u32 v36, v77, v36, 0x7fff
	v_cmp_o_f32_e64 s2, v77, v77
	v_bfe_u32 v37, v75, 16, 1
	v_add3_u32 v35, v76, v35, 0x7fff
	v_cmp_o_f32_e64 s3, v76, v76
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s2
	v_bfe_u32 v36, v74, 16, 1
	v_bfe_u32 v38, v73, 16, 1
	v_add3_u32 v37, v75, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v75, v75
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s3
	v_add3_u32 v36, v74, v36, 0x7fff
	v_cmp_o_f32_e64 s2, v74, v74
	v_add3_u32 v38, v73, v38, 0x7fff
	v_cmp_o_f32_e64 s3, v73, v73
	v_bfe_u32 v39, v72, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v71, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s2
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s3
	v_add3_u32 v38, v72, v39, 0x7fff
	v_bfe_u32 v39, v70, 16, 1
	v_cmp_o_f32_e64 s1, v72, v72
	v_bfe_u32 v40, v69, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v37, v71, v37, 0x7fff
	v_add3_u32 v39, v70, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v70, v70
	v_add3_u32 v40, v69, v40, 0x7fff
	v_cmp_o_f32_e64 s8, v69, v69
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cmp_o_f32_e64 s2, v71, v71
	v_cndmask_b16 v0.l, 0x7fff, v39.h, s3
	v_cndmask_b16 v0.h, 0x7fff, v40.h, s8
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_add_nc_u32_e32 v6, s35, v3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v38, v8, v7, s1
	v_cndmask_b32_e64 v7, v7, v8, s1
	v_cndmask_b32_e64 v39, v10, v9, s1
	v_cndmask_b32_e64 v8, v9, v10, s1
	v_cndmask_b32_e64 v40, v13, v11, s1
	v_cndmask_b32_e64 v9, v11, v13, s1
	v_cndmask_b32_e64 v41, v14, v12, s1
	v_cndmask_b32_e64 v10, v12, v14, s1
	v_cndmask_b32_e64 v42, v17, v15, s1
	v_cndmask_b32_e64 v11, v15, v17, s1
	v_cndmask_b32_e64 v45, v22, v20, s1
	v_cndmask_b32_e64 v14, v20, v22, s1
	v_cndmask_b32_e64 v46, v25, v23, s1
	v_cndmask_b32_e64 v15, v23, v25, s1
	v_mov_b32_e32 v22, 0x5410
	v_mov_b32_e32 v23, 0x7632
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s2
	s_mov_b32 s2, 0x76543210
	v_cndmask_b32_e64 v43, v18, v16, s1
	v_cndmask_b32_e64 v12, v16, v18, s1
	v_cndmask_b32_e64 v47, v26, v24, s1
	v_cndmask_b32_e64 v16, v24, v26, s1
	v_permlanex16_b32 v24, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x1054, v22, s1
	v_cndmask_b32_e64 v22, 0x3276, v23, s1
	v_permlanex16_b32 v23, v8, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v44, v21, v19, s1
	v_cndmask_b32_e64 v13, v19, v21, s1
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	v_cndmask_b32_e64 v52, v37, v35, s1
	v_cndmask_b32_e64 v21, v35, v37, s1
	v_permlanex16_b32 v25, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_cndmask_b32_e64 v17, v27, v29, s1
	v_cndmask_b32_e64 v18, v28, v30, s1
	v_cndmask_b32_e64 v19, v31, v33, s1
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_cndmask_b32_e64 v20, v32, v34, s1
	v_cndmask_b32_e64 v53, v0, v36, s1
	v_cndmask_b32_e64 v0, v36, v0, s1
	v_and_b32_e32 v37, 0x5040504, v7
	v_and_b32_e32 v54, 0x7060706, v8
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_lshl_add_u32 v5, s19, 5, v3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v48, v29, v27, s1
	v_cndmask_b32_e64 v49, v30, v28, s1
	v_perm_b32 v7, v24, v38, v37
	v_perm_b32 v8, v24, v38, v54
	v_add_lshl_u32 v38, v4, v3, 1
	v_add_lshl_u32 v3, v2, v3, 1
	v_cndmask_b32_e64 v50, v33, v31, s1
	v_cndmask_b32_e64 v51, v34, v32, s1
	v_permlanex16_b32 v26, v10, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s1, s5, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v22, v11, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v12, s2, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v23, v39, v37
	v_perm_b32 v10, v23, v39, v54
	v_add_lshl_u32 v39, v4, v6, 1
	v_perm_b32 v11, v25, v40, v37
	v_perm_b32 v12, v25, v40, v54
	v_cndmask_b32_e64 v40, 0x80000000, v38, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s5, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v28, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v14, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v15, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v16, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v17, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v18, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v19, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v20, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v21, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s4, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v13, v26, v41, v37
	v_perm_b32 v14, v26, v41, v54
	v_perm_b32 v15, v22, v42, v37
	v_perm_b32 v16, v22, v42, v54
	v_perm_b32 v17, v27, v43, v37
	v_perm_b32 v18, v27, v43, v54
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	v_perm_b32 v19, v28, v44, v37
	v_perm_b32 v20, v28, v44, v54
	v_perm_b32 v21, v29, v45, v37
	v_perm_b32 v22, v29, v45, v54
	v_perm_b32 v23, v30, v46, v37
	v_perm_b32 v24, v30, v46, v54
	v_perm_b32 v25, v31, v47, v37
	v_perm_b32 v26, v31, v47, v54
	v_perm_b32 v27, v32, v48, v37
	v_perm_b32 v28, v32, v48, v54
	v_perm_b32 v29, v33, v49, v37
	v_perm_b32 v30, v33, v49, v54
	v_perm_b32 v31, v34, v50, v37
	v_perm_b32 v32, v34, v50, v54
	v_perm_b32 v33, v35, v51, v37
	v_perm_b32 v34, v35, v51, v54
	v_perm_b32 v35, v36, v52, v37
	v_perm_b32 v37, v0, v53, v37
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_perm_b32 v38, v0, v53, v54
	v_add_lshl_u32 v0, v2, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v40, s[16:19], 0 offen
	buffer_store_b128 v[11:14], v3, s[16:19], 0 offen
	buffer_store_b128 v[15:18], v39, s[16:19], 0 offen
	v_add_lshl_u32 v3, v4, v5, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s4, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v5, v2, v5, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s7, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v4, v4, v1, 1
	v_add_lshl_u32 v1, v2, v1, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s7, vcc_lo
	s_and_b32 s0, s6, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v2, 0x80000000, v5, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, s6, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_perm_b32 v36, v36, v52, v54
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[16:19], 0 offen
	buffer_store_b128 v[23:26], v3, s[16:19], 0 offen
	buffer_store_b128 v[27:30], v2, s[16:19], 0 offen
	buffer_store_b128 v[31:34], v4, s[16:19], 0 offen
	buffer_store_b128 v[35:38], v1, s[16:19], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 183
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 183
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9640
; TotalNumSgprs: 50
; NumVgprs: 183
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 183
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
	.short	995                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	996                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     183
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
