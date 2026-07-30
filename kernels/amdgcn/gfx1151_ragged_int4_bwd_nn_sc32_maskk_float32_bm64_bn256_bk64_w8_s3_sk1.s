	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v65, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s35, 0xff
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
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s6, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s6, s4
	.loc	1 998 20                        ; ragged.py:998:20
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
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s7, s6
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s9, s7
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s10, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s10, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s8, s2
	s_xor_b32 s11, s2, s6
	s_ashr_i32 s11, s11, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s8, s9
	s_mul_i32 s12, s9, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s8, s13, s8
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s7, s12, s9
	s_mov_b32 s9, 0
	s_xor_b32 s7, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s11
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s11, s10, 31
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s7, s6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[12:13], s[10:11], 2
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s8, s2, s6
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s6, s7, 6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s12
	s_addc_u32 s5, s5, s13
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v2, s6, v65
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s11, s[4:5], 0x0
	.loc	1 1160 43                       ; ragged.py:1160:43
	s_mul_i32 s12, s10, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s5, s34, v2
	v_cmp_gt_i32_e64 s4, s34, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s19, s34, v4
	v_cmp_gt_i32_e64 s2, s34, v5
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s7, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s7, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge15_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s30, s6, s12
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr30
.LBB0_3:                                ; %Flow361
	s_load_b64 s[28:29], s[0:1], 0x28
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v131, 0x70, v1
	v_lshrrev_b32_e32 v134, 4, v0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v145, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s31, s8, 8
	s_cbranch_vccnz .LBB0_11
; %bb.4:                                ; %.lr.ph14
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x38
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v2, s6, v134
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s0, s7, 31
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_lshr_b32 s1, s11, 31
	s_add_i32 s30, s6, s12
	v_mov_b32_e32 v145, 0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v2
	v_lshlrev_b32_e32 v2, 4, v0
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_add_i32 s7, s7, s0
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s6, s34, v4
	v_bfe_i32 v4, v0, 3, 1
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_add_i32 s0, s11, s1
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v2, 0x70, v2
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s34, v3
	v_bfe_i32 v3, v0, 7, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v66, s31, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v151, 0x88, v4, v2
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v2, s30, v134
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_ashr_i32 s48, s7, 1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s7, s34, v5
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v5, 0x7f, v0
	v_dual_mov_b32 v140, 0 :: v_dual_and_b32 v3, 0x88, v3
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s8, v134, v[65:66]
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v4, 16, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v153, v3, v5
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v3, s30, v65
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v1, 0xf0, v0
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v6, 48, v2
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_mul_lo_u32 v161, v4, s8
	v_dual_mov_b32 v129, 0 :: v_dual_lshlrev_b32 v4, 5, v0
	v_mad_u64_u32 v[68:69], null, s8, 48, v[67:68]
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v5, 32, v2
	v_mul_lo_u32 v160, v2, s8
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v2, 16, v3
	v_mad_u64_u32 v[69:70], null, s35, 3, v[66:67]
	v_mad_u64_u32 v[70:71], null, s35, 5, v[66:67]
	v_mad_u64_u32 v[71:72], null, s35, 6, v[66:67]
	v_mul_lo_u32 v163, v6, s8
	v_dual_mov_b32 v127, 0 :: v_dual_lshlrev_b32 v6, 2, v1
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	v_dual_mov_b32 v125, 0 :: v_dual_and_b32 v4, 32, v4
	v_mad_u64_u32 v[72:73], null, s35, 7, v[66:67]
	v_mad_u64_u32 v[73:74], null, s35, 9, v[66:67]
	v_mul_lo_u32 v162, v5, s8
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v5, 32, v3
	v_mul_lo_u32 v165, v2, s9
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v2, 48, v3
	v_mad_u64_u32 v[74:75], null, s35, 10, v[66:67]
	v_mad_u64_u32 v[75:76], null, s35, 11, v[66:67]
	v_mad_u64_u32 v[76:77], null, s35, 12, v[66:67]
	v_mul_lo_u32 v164, v3, s9
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v3, 28, v7
	v_add3_u32 v4, 0, v6, v4
	v_dual_mov_b32 v124, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	v_mad_u64_u32 v[77:78], null, s35, 13, v[66:67]
	v_mad_u64_u32 v[78:79], null, s35, 14, v[66:67]
	v_mul_lo_u32 v166, v5, s9
	v_mul_lo_u32 v167, v2, s9
	v_mad_u64_u32 v[79:80], null, s35, 15, v[66:67]
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s33, s3, 4
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_ashr_i32 s49, s0, 1
	s_and_b32 s37, s21, 0xffff
	s_and_b32 s41, s23, 0xffff
	s_bitcmp1_b32 s11, 0
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s35, v66
	v_lshl_add_u32 v146, s8, 4, v67
	v_lshl_add_u32 v147, s8, 5, v67
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v148, s35, v66
	v_lshl_add_u32 v149, s35, 1, v66
	v_lshl_add_u32 v150, s35, 2, v66
	v_lshl_add_u32 v152, s35, 3, v66
	v_xor_b32_e32 v154, 8, v151
	v_or_b32_e32 v155, 0x300, v0
	v_or_b32_e32 v156, 0x700, v0
	v_or_b32_e32 v157, 0xb00, v0
	v_or_b32_e32 v158, 0xf00, v0
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v159, 0, v131
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v168, v4, v3
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v169, 0, v1
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_mov_b32_e32 v80, 0
	s_cselect_b32 s52, -1, 0
	s_add_i32 s53, s48, -1
	.loc	1 1164 43                       ; ragged.py:1164:43
	s_mul_i32 s34, s10, s8
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s50, s10, s9
	s_mul_i32 s51, s30, s8
	s_mov_b32 s36, s20
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s40, s22
	s_mov_b32 s23, 0
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s45, s27, 0xffff
	s_mov_b32 s44, s26
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshr_b32 s54, s53, 4
	s_mov_b32 s3, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v170, v164, s23, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s23, s50
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v171, v165, s23, 1
	v_add_lshl_u32 v172, v166, s23, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s35
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v173, v167, s23, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v174, v66, s3, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v170, 0x80000000, v170, s5
	v_cndmask_b32_e64 v171, 0x80000000, v171, s4
	v_cndmask_b32_e64 v172, 0x80000000, v172, s19
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	v_cndmask_b32_e64 v173, 0x80000000, v173, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v174, 0x80000000, v174, s0
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x3
	buffer_load_u16 v170, v170, s[24:27], 0 offen
	buffer_load_u16 v171, v171, s[24:27], 0 offen
	buffer_load_u16 v172, v172, s[24:27], 0 offen
	buffer_load_u16 v173, v173, s[24:27], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v174, v174, s[44:47], 0 offen
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v175, v1
	v_cvt_f32_i32_e32 v177, v3
	v_cvt_f32_i32_e32 v59, v59
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
	v_cvt_f32_i32_e32 v42, v42
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
	v_cvt_f32_i32_e32 v176, v2
	v_cvt_f32_i32_e32 v178, v4
	v_cvt_f32_i32_e32 v179, v5
	v_cvt_f32_i32_e32 v180, v6
	v_cvt_f32_i32_e32 v181, v7
	v_cvt_f32_i32_e32 v182, v8
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s8, s23, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s3, s8, 4
	s_cmp_lg_u32 s23, s54
	s_mov_b32 s23, s8
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v3, 16, v172
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v26, v26, v3 :: v_dual_lshlrev_b32 v1, 16, v170
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v57, v57, v1 :: v_dual_lshlrev_b32 v2, 16, v171
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v170, 16, v173
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v59, v59, v1 :: v_dual_lshlrev_b32 v4, 16, v174
	v_mul_f32_e32 v58, v58, v1
	v_dual_mul_f32 v60, v60, v1 :: v_dual_mul_f32 v43, v43, v2
	v_dual_mul_f32 v61, v61, v1 :: v_dual_mul_f32 v42, v42, v2
	v_dual_mul_f32 v62, v62, v1 :: v_dual_mul_f32 v45, v45, v2
	v_dual_mul_f32 v63, v63, v1 :: v_dual_mul_f32 v44, v44, v2
	v_dual_mul_f32 v64, v64, v1 :: v_dual_mul_f32 v47, v47, v2
	v_dual_mul_f32 v49, v49, v1 :: v_dual_mul_f32 v46, v46, v2
	v_dual_mul_f32 v50, v50, v1 :: v_dual_mul_f32 v33, v33, v2
	v_dual_mul_f32 v51, v51, v1 :: v_dual_mul_f32 v48, v48, v2
	v_dual_mul_f32 v52, v52, v1 :: v_dual_mul_f32 v35, v35, v2
	v_dual_mul_f32 v53, v53, v1 :: v_dual_mul_f32 v34, v34, v2
	v_dual_mul_f32 v54, v54, v1 :: v_dual_mul_f32 v37, v37, v2
	v_dual_mul_f32 v55, v55, v1 :: v_dual_mul_f32 v36, v36, v2
	v_dual_mul_f32 v56, v56, v1 :: v_dual_mul_f32 v39, v39, v2
	v_mul_f32_e32 v41, v41, v2
	v_dual_mul_f32 v38, v38, v2 :: v_dual_mul_f32 v25, v25, v3
	v_dual_mul_f32 v40, v40, v2 :: v_dual_mul_f32 v27, v27, v3
	v_dual_mul_f32 v28, v28, v3 :: v_dual_mul_f32 v171, v9, v170
	v_dual_mul_f32 v29, v29, v3 :: v_dual_mul_f32 v172, v10, v170
	v_dual_mul_f32 v30, v30, v3 :: v_dual_mul_f32 v173, v11, v170
	v_dual_mul_f32 v31, v31, v3 :: v_dual_mul_f32 v174, v12, v170
	v_dual_mul_f32 v32, v32, v3 :: v_dual_mul_f32 v183, v13, v170
	v_dual_mul_f32 v17, v17, v3 :: v_dual_mul_f32 v184, v14, v170
	v_dual_mul_f32 v18, v18, v3 :: v_dual_mul_f32 v185, v15, v170
	v_dual_mul_f32 v19, v19, v3 :: v_dual_mul_f32 v186, v16, v170
	v_dual_mul_f32 v20, v20, v3 :: v_dual_mul_f32 v175, v175, v170
	v_dual_mul_f32 v21, v21, v3 :: v_dual_mul_f32 v176, v176, v170
	v_dual_mul_f32 v22, v22, v3 :: v_dual_mul_f32 v177, v177, v170
	v_dual_mul_f32 v23, v23, v3 :: v_dual_mul_f32 v178, v178, v170
	v_dual_mul_f32 v24, v24, v3 :: v_dual_mul_f32 v179, v179, v170
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_store_b32 v168, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v169
	ds_load_b128 v[5:8], v169 offset:16
	ds_load_b128 v[9:12], v169 offset:512
	ds_load_b128 v[13:16], v169 offset:528
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v180, v180, v170
	v_mul_f32_e32 v181, v181, v170
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v170, v182, v170 :: v_dual_fmac_f32 v143, v59, v3
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v145, v57, v1 :: v_dual_fmac_f32 v144, v58, v2
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v141, v61, v5 :: v_dual_fmac_f32 v142, v60, v4
	v_dual_fmac_f32 v140, v62, v6 :: v_dual_fmac_f32 v139, v63, v7
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v138, v64, v8 :: v_dual_fmac_f32 v137, v49, v9
	v_dual_fmac_f32 v136, v50, v10 :: v_dual_fmac_f32 v135, v51, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v133, v52, v12 :: v_dual_fmac_f32 v132, v53, v13
	v_dual_fmac_f32 v130, v54, v14 :: v_dual_fmac_f32 v129, v55, v15
	v_dual_fmac_f32 v128, v56, v16 :: v_dual_fmac_f32 v127, v41, v1
	v_dual_fmac_f32 v126, v42, v2 :: v_dual_fmac_f32 v125, v43, v3
	v_dual_fmac_f32 v124, v44, v4 :: v_dual_fmac_f32 v123, v45, v5
	v_dual_fmac_f32 v122, v46, v6 :: v_dual_fmac_f32 v121, v47, v7
	v_dual_fmac_f32 v120, v48, v8 :: v_dual_fmac_f32 v119, v33, v9
	v_dual_fmac_f32 v118, v34, v10 :: v_dual_fmac_f32 v117, v35, v11
	v_dual_fmac_f32 v116, v36, v12 :: v_dual_fmac_f32 v115, v37, v13
	v_dual_fmac_f32 v114, v38, v14 :: v_dual_fmac_f32 v113, v39, v15
	v_dual_fmac_f32 v112, v40, v16 :: v_dual_fmac_f32 v111, v25, v1
	v_dual_fmac_f32 v110, v26, v2 :: v_dual_fmac_f32 v109, v27, v3
	v_dual_fmac_f32 v108, v28, v4 :: v_dual_fmac_f32 v107, v29, v5
	v_dual_fmac_f32 v106, v30, v6 :: v_dual_fmac_f32 v105, v31, v7
	v_dual_fmac_f32 v104, v32, v8 :: v_dual_fmac_f32 v103, v17, v9
	v_dual_fmac_f32 v102, v18, v10 :: v_dual_fmac_f32 v101, v19, v11
	v_dual_fmac_f32 v100, v20, v12 :: v_dual_fmac_f32 v99, v21, v13
	v_dual_fmac_f32 v98, v22, v14 :: v_dual_fmac_f32 v97, v23, v15
	v_dual_fmac_f32 v96, v24, v16 :: v_dual_fmac_f32 v95, v171, v1
	v_dual_fmac_f32 v94, v172, v2 :: v_dual_fmac_f32 v93, v173, v3
	v_dual_fmac_f32 v92, v174, v4 :: v_dual_fmac_f32 v91, v183, v5
	v_dual_fmac_f32 v90, v184, v6 :: v_dual_fmac_f32 v89, v185, v7
	v_dual_fmac_f32 v88, v186, v8 :: v_dual_fmac_f32 v87, v175, v9
	v_dual_fmac_f32 v86, v176, v10 :: v_dual_fmac_f32 v85, v177, v11
	v_dual_fmac_f32 v82, v178, v12 :: v_dual_fmac_f32 v81, v179, v13
	v_dual_fmac_f32 v84, v180, v14 :: v_dual_fmac_f32 v83, v181, v15
	v_fmac_f32_e32 v80, v170, v16
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1150 54                       ; ragged.py:1150:54
	s_sub_i32 s8, s49, s3
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1148 45                       ; ragged.py:1148:45
	v_med3_i32 v1, s8, 0, 16
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1152 41                       ; ragged.py:1152:41
	v_readfirstlane_b32 s8, v1
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
	s_and_b32 s9, s8, 16
	s_mov_b32 s8, s33
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_ge_i32 s33, s9
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s8, s33
	s_delay_alu instid0(VALU_DEP_1)
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
	.loc	1 1156 30 is_stmt 1             ; ragged.py:1156:30
	s_add_i32 s10, s8, s3
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_mov_b32 s42, s38
	.loc	1 1165 46                       ; ragged.py:1165:46
	s_add_i32 s11, s10, s51
	.loc	1 1166 46                       ; ragged.py:1166:46
	s_add_i32 s10, s10, s34
	.loc	1 1166 38 is_stmt 0             ; ragged.py:1166:38
	s_mov_b32 s43, s39
	.loc	1 1166 46                       ; ragged.py:1166:46
	s_mul_i32 s10, s10, s35
	v_add_nc_u32_e32 v170, s11, v67
	v_add_nc_u32_e32 v174, s10, v66
	v_add_nc_u32_e32 v175, s10, v148
	v_add_nc_u32_e32 v176, s10, v149
	v_add_nc_u32_e32 v177, s10, v69
	v_add_nc_u32_e32 v178, s10, v150
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_cndmask_b32_e64 v174, 0x80000000, v174, s0
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v179, s10, v70
	v_add_nc_u32_e32 v180, s10, v71
	v_add_nc_u32_e32 v181, s10, v72
	v_add_nc_u32_e32 v182, s10, v152
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v190, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v175, s0
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v183, s10, v73
	v_add_nc_u32_e32 v184, s10, v74
	v_add_nc_u32_e32 v171, s11, v146
	v_add_nc_u32_e32 v172, s11, v147
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v191, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v176, s0
	v_add_nc_u32_e32 v173, s11, v68
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	v_cndmask_b32_e32 v170, 0x80000000, v170, vcc_lo
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v185, s10, v75
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_cndmask_b32_e64 v171, 0x80000000, v171, s1
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v192, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v177, s0
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_cndmask_b32_e64 v172, 0x80000000, v172, s6
	v_cndmask_b32_e64 v173, 0x80000000, v173, s7
	s_clause 0x1
	buffer_load_u8 v170, v170, s[36:39], 0 offen
	buffer_load_u8 v171, v171, s[36:39], 0 offen
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v193, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v178, s0
	.loc	1 1166 46 is_stmt 0             ; ragged.py:1166:46
	v_add_nc_u32_e32 v186, s10, v76
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	s_clause 0x1
	buffer_load_u8 v172, v172, s[36:39], 0 offen
	buffer_load_u8 v173, v173, s[36:39], 0 offen
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v187, s10, v77
	.loc	1 1166 38 is_stmt 0             ; ragged.py:1166:38
	buffer_load_u8 v194, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v179, s0
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v188, s10, v78
	v_add_nc_u32_e32 v189, s10, v79
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_add_nc_u32_e32 v202, 0, v0
	.loc	1 1177 25 is_stmt 1             ; ragged.py:1177:25
	s_add_i32 s8, s8, 16
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v195, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v180, s0
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_lt_i32 s8, s9
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v196, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v181, s0
	buffer_load_u8 v197, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v182, s0
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_add_nc_u32_e32 v182, 0, v154
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v198, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v183, s0
	buffer_load_u8 v199, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v184, s0
	buffer_load_u8 v200, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v185, s0
	buffer_load_u8 v201, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v186, s0
	buffer_load_u8 v186, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v187, s0
	buffer_load_u8 v187, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v188, s0
	buffer_load_u8 v188, v174, s[40:43], 0 offen
	v_cndmask_b32_e64 v174, 0x80000000, v189, s0
	buffer_load_u8 v189, v174, s[40:43], 0 offen
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_add_nc_u32_e32 v174, 0, v153
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(16)
	ds_store_b8 v174, v170
	s_waitcnt vmcnt(15)
	ds_store_b8 v174, v171 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v174, v172 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v174, v173 offset:768
	v_add_nc_u32_e32 v174, 0, v151
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[170:173], v174 offset1:32
	ds_load_2addr_b64 v[174:177], v174 offset0:64 offset1:96
	ds_load_2addr_b64 v[178:181], v182 offset1:32
	ds_load_2addr_b64 v[182:185], v182 offset0:64 offset1:96
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v202, v190
	ds_store_b8 v202, v191 offset:256
	ds_store_b8 v202, v192 offset:512
	v_add_nc_u32_e32 v190, 0, v155
	ds_store_b8 v190, v193
	s_waitcnt vmcnt(11)
	ds_store_b8 v202, v194 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v202, v195 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v202, v196 offset:1536
	v_add_nc_u32_e32 v190, 0, v156
	v_add_nc_u32_e32 v192, v159, v65
	s_waitcnt vmcnt(8)
	ds_store_b8 v190, v197
	s_waitcnt vmcnt(7)
	ds_store_b8 v202, v198 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v202, v199 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v202, v200 offset:2560
	v_add_nc_u32_e32 v190, 0, v157
	s_waitcnt vmcnt(4)
	ds_store_b8 v190, v201
	s_waitcnt vmcnt(3)
	ds_store_b8 v202, v186 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v202, v187 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v202, v188 offset:3584
	v_add_nc_u32_e32 v186, 0, v158
	s_waitcnt vmcnt(0)
	ds_store_b8 v186, v189
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1167 35                       ; ragged.py:1167:35
	ds_load_u8 v186, v192 offset:1280
	ds_load_u8 v187, v192 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v192 offset:1792
	ds_load_u8 v188, v192 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v187, v187, 16, v186
	ds_load_u8 v186, v192 offset:256
	ds_load_u8 v188, v192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v188, v186, 0xc0c0004
	ds_load_u8 v188, v192 offset:768
	ds_load_u8 v189, v192 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v186, v188, 16, v186
	ds_load_u8 v188, v192 offset:3328
	ds_load_u8 v189, v192 offset:3072
	v_wmma_i32_16x16x16_iu4 v[57:64], v[186:187], v[170:171], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[186:187], v[172:173], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[186:187], v[174:175], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[176:177], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v192 offset:3840
	ds_load_u8 v190, v192 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v189, 16, v188
	ds_load_u8 v188, v192 offset:2304
	ds_load_u8 v190, v192 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v190, v188, 0xc0c0004
	ds_load_u8 v190, v192 offset:2816
	ds_load_u8 v191, v192 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v190, 16, v188
	ds_load_u8 v190, v192 offset:1408
	ds_load_u8 v191, v192 offset:1152
	v_wmma_i32_16x16x16_iu4 v[57:64], v[188:189], v[178:179], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[188:189], v[180:181], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[182:183], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[184:185], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v192 offset:1920
	ds_load_u8 v193, v192 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v193, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v191, 16, v190
	ds_load_u8 v190, v192 offset:384
	ds_load_u8 v193, v192 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v193, v190, 0xc0c0004
	ds_load_u8 v193, v192 offset:896
	ds_load_u8 v194, v192 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v190, v193, 16, v190
	v_wmma_i32_16x16x16_iu4 v[49:56], v[190:191], v[170:171], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v170, v192 offset:3456
	ds_load_u8 v171, v192 offset:3200
	v_wmma_i32_16x16x16_iu4 v[33:40], v[190:191], v[172:173], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[190:191], v[174:175], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[190:191], v[176:177], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v192 offset:3968
	ds_load_u8 v193, v192 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v193, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v171, 16, v170
	ds_load_u8 v170, v192 offset:2432
	ds_load_u8 v193, v192 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v193, v170, 0xc0c0004
	ds_load_u8 v193, v192 offset:2944
	ds_load_u8 v192, v192 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v192, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v170, v192, 16, v170
	v_wmma_i32_16x16x16_iu4 v[49:56], v[170:171], v[178:179], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[170:171], v[180:181], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[170:171], v[182:183], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[170:171], v[184:185], v[1:8] neg_lo:[1,1,0]
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1146 25                       ; ragged.py:1146:25
	s_sub_i32 s9, s48, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1144 42                       ; ragged.py:1144:42
	s_min_i32 s9, s9, 16
	.loc	1 1178 24                       ; ragged.py:1178:24
	s_cmp_ge_i32 s8, s9
	.loc	1 1178 21 is_stmt 0             ; ragged.py:1178:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1179 30 is_stmt 1             ; ragged.py:1179:30
	s_add_i32 s42, s8, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s8, s42, 1
	s_or_b32 s10, s42, 2
	s_or_b32 s11, s42, 3
	s_or_b32 s12, s42, 4
	s_or_b32 s13, s42, 5
	s_or_b32 s14, s42, 6
	s_or_b32 s15, s42, 7
	s_or_b32 s16, s42, 8
	s_or_b32 s17, s42, 9
	s_or_b32 s18, s42, 10
	s_or_b32 s20, s42, 11
	s_or_b32 s21, s42, 12
	s_or_b32 s22, s42, 13
	s_or_b32 s26, s42, 14
	s_or_b32 s27, s42, 15
	.loc	1 1188 35                       ; ragged.py:1188:35
	s_sub_i32 s43, s8, s3
	s_sub_i32 s46, s10, s3
	s_sub_i32 s47, s11, s3
	s_sub_i32 s55, s12, s3
	s_sub_i32 s56, s13, s3
	s_sub_i32 s57, s14, s3
	s_sub_i32 s58, s15, s3
	s_sub_i32 s59, s16, s3
	s_sub_i32 s60, s17, s3
	s_sub_i32 s61, s18, s3
	s_sub_i32 s62, s20, s3
	s_sub_i32 s63, s21, s3
	s_sub_i32 s64, s22, s3
	s_sub_i32 s65, s26, s3
	s_sub_i32 s66, s27, s3
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	s_cmp_lt_i32 s43, s9
	.loc	1 1179 30 is_stmt 1             ; ragged.py:1179:30
	v_or_b32_e32 v170, s42, v65
	.loc	1 1188 34                       ; ragged.py:1188:34
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s46, s9
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s47, s9
	.loc	1 1188 35 is_stmt 0             ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v171, s3, v170
	.loc	1 1188 34                       ; ragged.py:1188:34
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s55, s9
	v_add_nc_u32_e32 v172, v170, v161
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s56, s9
	v_cmp_gt_i32_e64 s3, s9, v171
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s57, s9
	v_add_nc_u32_e32 v171, v170, v160
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s58, s9
	v_add_nc_u32_e32 v173, v170, v162
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s59, s9
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s60, s9
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s61, s9
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s62, s9
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s63, s9
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s64, s9
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s65, s9
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s66, s9
	s_cselect_b32 s80, -1, 0
	.loc	1 1189 60 is_stmt 1             ; ragged.py:1189:60
	s_cmp_eq_u32 s42, s53
	s_cselect_b32 s9, -1, 0
	s_cmp_eq_u32 s8, s53
	v_cmp_eq_u32_e64 s8, s53, v170
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s10, s53
	v_add_nc_u32_e32 v170, v170, v163
	s_cselect_b32 s10, -1, 0
	s_cmp_eq_u32 s11, s53
	s_cselect_b32 s11, -1, 0
	s_cmp_eq_u32 s12, s53
	s_cselect_b32 s12, -1, 0
	s_cmp_eq_u32 s13, s53
	s_cselect_b32 s13, -1, 0
	s_cmp_eq_u32 s14, s53
	s_cselect_b32 s14, -1, 0
	s_cmp_eq_u32 s15, s53
	s_cselect_b32 s15, -1, 0
	s_cmp_eq_u32 s16, s53
	s_cselect_b32 s16, -1, 0
	s_cmp_eq_u32 s17, s53
	s_cselect_b32 s17, -1, 0
	s_cmp_eq_u32 s18, s53
	s_cselect_b32 s18, -1, 0
	s_cmp_eq_u32 s20, s53
	s_cselect_b32 s20, -1, 0
	s_cmp_eq_u32 s21, s53
	s_cselect_b32 s21, -1, 0
	s_cmp_eq_u32 s22, s53
	s_cselect_b32 s22, -1, 0
	s_cmp_eq_u32 s26, s53
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s27, s53
	s_cselect_b32 s66, -1, 0
	.loc	1 1189 36 is_stmt 0             ; ragged.py:1189:36
	s_and_b32 s26, s9, s52
	s_and_b32 s27, s46, s52
	s_and_b32 s46, s10, s52
	s_and_b32 s81, s8, s52
	.loc	1 1190 70 is_stmt 1             ; ragged.py:1190:70
	s_and_b32 s8, vcc_lo, s3
	s_and_b32 s9, s1, s3
	s_and_b32 s10, s6, s3
	s_and_b32 s3, s7, s3
	.loc	1 1190 38 is_stmt 0             ; ragged.py:1190:38
	v_cndmask_b32_e64 v171, 0x80000000, v171, s8
	v_cndmask_b32_e64 v170, 0x80000000, v170, s3
	.loc	1 1191 46 is_stmt 1             ; ragged.py:1191:46
	s_add_i32 s42, s42, s34
	.loc	1 1191 70 is_stmt 0             ; ragged.py:1191:70
	s_and_b32 s3, s0, s43
	.loc	1 1191 46                       ; ragged.py:1191:46
	s_mul_i32 s42, s42, s35
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	s_clause 0x1
	buffer_load_u8 v174, v171, s[36:39], 0 offen
	buffer_load_u8 v175, v170, s[36:39], 0 offen
	v_cndmask_b32_e64 v171, 0x80000000, v172, s9
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v170, s42, v66
	v_add_nc_u32_e32 v176, s42, v149
	v_add_nc_u32_e32 v177, s42, v69
	v_add_nc_u32_e32 v178, s42, v150
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v172, v171, s[36:39], 0 offen
	v_cndmask_b32_e64 v171, 0x80000000, v173, s10
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v170, 0x80000000, v170, s0
	.loc	1 1191 46 is_stmt 0             ; ragged.py:1191:46
	v_add_nc_u32_e32 v179, s42, v70
	v_add_nc_u32_e32 v180, s42, v71
	v_add_nc_u32_e32 v181, s42, v72
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	buffer_load_u8 v173, v171, s[36:39], 0 offen
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v171, s42, v148
	v_add_nc_u32_e32 v182, s42, v152
	v_add_nc_u32_e32 v183, s42, v73
	v_add_nc_u32_e32 v184, s42, v74
	v_add_nc_u32_e32 v185, s42, v75
	v_add_nc_u32_e32 v186, s42, v76
	v_add_nc_u32_e32 v187, s42, v77
	v_add_nc_u32_e32 v188, s42, v78
	v_add_nc_u32_e32 v189, s42, v79
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s8, s0, s67
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v190, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v171, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s9, s0, s68
	s_and_b32 s10, s0, s69
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s47, s11, s52
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s11, s0, s70
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v191, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v176, s8
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s55, s12, s52
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s12, s0, s71
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s56, s13, s52
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s13, s0, s72
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v192, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v177, s9
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s57, s14, s52
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s14, s0, s73
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s58, s15, s52
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s15, s0, s74
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v193, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v178, s10
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s59, s16, s52
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s16, s0, s75
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s60, s17, s52
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s17, s0, s76
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v194, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v179, s11
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s61, s18, s52
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s18, s0, s77
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s62, s20, s52
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s20, s0, s78
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v195, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v180, s12
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s63, s21, s52
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s21, s0, s79
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s64, s22, s52
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s22, s0, s80
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v180, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v181, s13
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s65, s65, s52
	s_and_b32 s66, s66, s52
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v181, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v182, s14
	buffer_load_u8 v182, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v183, s15
	buffer_load_u8 v183, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v184, s16
	buffer_load_u8 v184, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v185, s17
	buffer_load_u8 v185, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v186, s18
	buffer_load_u8 v196, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v187, s20
	buffer_load_u8 v197, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v188, s21
	buffer_load_u8 v198, v170, s[40:43], 0 offen
	v_cndmask_b32_e64 v170, 0x80000000, v189, s22
	buffer_load_u8 v199, v170, s[40:43], 0 offen
	.loc	1 1192 38                       ; ragged.py:1192:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1192 66 is_stmt 0             ; ragged.py:1192:66
	s_waitcnt vmcnt(19)
	v_and_b16 v170.l, v174.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v171.h, v175.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v170.l, v174.l, v170.l, s81
	v_cndmask_b16 v171.h, v175.l, v171.h, s81
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(17)
	v_and_b16 v170.h, v172.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v170.h, v172.l, v170.h, s81
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(16)
	v_and_b16 v171.l, v173.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v171.l, v173.l, v171.l, s81
	.loc	1 1193 66 is_stmt 1             ; ragged.py:1193:66
	s_waitcnt vmcnt(15)
	v_and_b16 v172.l, v190.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v186.l, v190.l, v172.l, s26
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(14)
	v_and_b16 v172.h, v191.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v186.h, v191.l, v172.h, s27
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(13)
	v_and_b16 v173.l, v192.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v172, 0, v153
	ds_store_b8 v172, v170
	ds_store_b8_d16_hi v172, v170 offset:256
	ds_store_b8 v172, v171 offset:512
	ds_store_b8_d16_hi v172, v171 offset:768
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(12)
	v_and_b16 v173.h, v193.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v187.l, v192.l, v173.l, s46
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(11)
	v_and_b16 v174.l, v194.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v187.h, v193.l, v173.h, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b16 v188.l, v194.l, v174.l, s55
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(10)
	v_and_b16 v174.h, v195.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_add_nc_u32_e32 v194, 0, v0
	v_cndmask_b16 v188.h, v195.l, v174.h, s56
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(9)
	v_and_b16 v175.l, v180.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v174, 0, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v189.l, v180.l, v175.l, s57
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	s_waitcnt vmcnt(8)
	v_and_b16 v175.h, v181.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v189.h, v181.l, v175.h, s58
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(7)
	v_and_b16 v176.l, v182.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v190.l, v182.l, v176.l, s59
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(6)
	v_and_b16 v176.h, v183.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v182, 0, v154
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v190.h, v183.l, v176.h, s60
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	s_waitcnt vmcnt(5)
	v_and_b16 v177.l, v184.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v191.l, v184.l, v177.l, s61
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(4)
	v_and_b16 v177.h, v185.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v191.h, v185.l, v177.h, s62
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(3)
	v_and_b16 v178.l, v196.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	ds_load_2addr_b64 v[170:173], v174 offset1:32
	ds_load_2addr_b64 v[174:177], v174 offset0:64 offset1:96
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v192.l, v196.l, v178.l, s63
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	s_waitcnt vmcnt(2)
	v_and_b16 v178.h, v197.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v192.h, v197.l, v178.h, s64
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(1)
	v_and_b16 v179.l, v198.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v193.l, v198.l, v179.l, s65
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(0)
	v_and_b16 v179.h, v199.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v193.h, v199.l, v179.h, s66
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	ds_load_2addr_b64 v[178:181], v182 offset1:32
	ds_load_2addr_b64 v[182:185], v182 offset0:64 offset1:96
	.loc	1 1193 38                       ; ragged.py:1193:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v194, v186
	ds_store_b8_d16_hi v194, v186 offset:256
	ds_store_b8 v194, v187 offset:512
	v_add_nc_u32_e32 v186, 0, v155
	ds_store_b8_d16_hi v186, v187
	ds_store_b8 v194, v188 offset:1024
	ds_store_b8_d16_hi v194, v188 offset:1280
	ds_store_b8 v194, v189 offset:1536
	v_add_nc_u32_e32 v186, 0, v156
	ds_store_b8_d16_hi v186, v189
	ds_store_b8 v194, v190 offset:2048
	ds_store_b8_d16_hi v194, v190 offset:2304
	ds_store_b8 v194, v191 offset:2560
	v_add_nc_u32_e32 v186, 0, v157
	ds_store_b8_d16_hi v186, v191
	ds_store_b8 v194, v192 offset:3072
	ds_store_b8_d16_hi v194, v192 offset:3328
	ds_store_b8 v194, v193 offset:3584
	v_add_nc_u32_e32 v186, 0, v158
	v_add_nc_u32_e32 v192, v159, v65
	ds_store_b8_d16_hi v186, v193
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1194 35                       ; ragged.py:1194:35
	ds_load_u8 v186, v192 offset:1280
	ds_load_u8 v187, v192 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v192 offset:1792
	ds_load_u8 v188, v192 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v187, v187, 16, v186
	ds_load_u8 v186, v192 offset:256
	ds_load_u8 v188, v192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v188, v186, 0xc0c0004
	ds_load_u8 v188, v192 offset:768
	ds_load_u8 v189, v192 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v186, v188, 16, v186
	ds_load_u8 v188, v192 offset:3328
	ds_load_u8 v189, v192 offset:3072
	v_wmma_i32_16x16x16_iu4 v[57:64], v[186:187], v[170:171], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[186:187], v[172:173], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[186:187], v[174:175], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[186:187], v[176:177], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v192 offset:3840
	ds_load_u8 v190, v192 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v189, 16, v188
	ds_load_u8 v188, v192 offset:2304
	ds_load_u8 v190, v192 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v190, v188, 0xc0c0004
	ds_load_u8 v190, v192 offset:2816
	ds_load_u8 v191, v192 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v190, 16, v188
	ds_load_u8 v190, v192 offset:1408
	ds_load_u8 v191, v192 offset:1152
	v_wmma_i32_16x16x16_iu4 v[57:64], v[188:189], v[178:179], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[188:189], v[180:181], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[182:183], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[184:185], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v192 offset:1920
	ds_load_u8 v193, v192 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v193, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v191, 16, v190
	ds_load_u8 v190, v192 offset:384
	ds_load_u8 v193, v192 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v193, v190, 0xc0c0004
	ds_load_u8 v193, v192 offset:896
	ds_load_u8 v194, v192 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v190, v193, 16, v190
	v_wmma_i32_16x16x16_iu4 v[49:56], v[190:191], v[170:171], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v170, v192 offset:3456
	ds_load_u8 v171, v192 offset:3200
	v_wmma_i32_16x16x16_iu4 v[33:40], v[190:191], v[172:173], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[190:191], v[174:175], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[190:191], v[176:177], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v192 offset:3968
	ds_load_u8 v193, v192 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v193, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v171, 16, v170
	ds_load_u8 v170, v192 offset:2432
	ds_load_u8 v193, v192 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v193, v170, 0xc0c0004
	ds_load_u8 v193, v192 offset:2944
	ds_load_u8 v192, v192 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v192, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v170, v192, 16, v170
	v_wmma_i32_16x16x16_iu4 v[49:56], v[170:171], v[178:179], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[170:171], v[180:181], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[170:171], v[182:183], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[170:171], v[184:185], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %._crit_edge15
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_or_b32 v3, v134, 1, v131
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s3, s30, s35
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v0, s31, v4
	v_or_b32_e32 v1, s31, v5
	v_or_b32_e32 v11, s31, v7
	v_or_b32_e32 v12, s31, v8
	v_or_b32_e32 v2, s31, v6
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v13, 12, v3
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	v_cmp_gt_i32_e64 s0, s35, v1
	v_cmp_gt_i32_e64 s6, s35, v11
	v_cmp_gt_i32_e64 s7, s35, v12
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v0, s31, v9
	v_or_b32_e32 v1, s31, v10
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s31, v13
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s8, s35, v0
	v_cmp_gt_i32_e64 s9, s35, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v0, s31, v11
	v_or_b32_e32 v1, s31, v12
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v14, 10, v3
	v_or_b32_e32 v15, 8, v3
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s35, v2
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mul_lo_u32 v2, s35, v65
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s10, s35, v0
	v_cmp_gt_i32_e64 s11, s35, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v0, s31, v14
	v_or_b32_e32 v1, s31, v15
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v21, s31, v3
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s13, s35, v0
	v_cmp_gt_i32_e64 s14, s35, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s31, v16
	v_or_b32_e32 v20, s31, v18
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add3_u32 v0, s3, s31, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v19, s31, v17
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s18, s35, v21
	v_cmp_gt_i32_e64 s15, s35, v1
	v_cmp_gt_i32_e64 s17, s35, v20
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s16, s35, v19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s17
	s_mov_b32 s31, 0x31027000
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v23, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s16
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[1:2], null, s35, 48, v[0:1]
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v145, v22, s[28:31], 0 offen
	buffer_store_b32 v144, v23, s[28:31], 0 offen
	buffer_store_b32 v143, v21, s[28:31], 0 offen
	v_add_lshl_u32 v21, v0, v15, 2
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s3, s5, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v22, v0, v14, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v23, v0, v13, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v142, v2, s[28:31], 0 offen
	buffer_store_b32 v141, v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v11, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v140, v22, s[28:31], 0 offen
	buffer_store_b32 v139, v23, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v10, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v23, v0, v9, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v138, v2, s[28:31], 0 offen
	buffer_store_b32 v137, v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v0, v8, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v7, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v136, v22, s[28:31], 0 offen
	buffer_store_b32 v135, v23, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v6, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s6
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_lshl_add_u32 v19, s35, 4, v0
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_add_lshl_u32 v23, v0, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s3, s5, s1
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_lshl_add_u32 v20, s35, 5, v0
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_add_lshl_u32 v0, v0, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s3, s5, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v133, v2, s[28:31], 0 offen
	buffer_store_b32 v132, v21, s[28:31], 0 offen
	v_add_lshl_u32 v2, v19, v3, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v130, v22, s[28:31], 0 offen
	buffer_store_b32 v129, v23, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v128, v0, s[28:31], 0 offen
	buffer_store_b32 v127, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v19, v15, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v126, v21, s[28:31], 0 offen
	buffer_store_b32 v125, v22, s[28:31], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v14, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v13, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v124, v0, s[28:31], 0 offen
	buffer_store_b32 v123, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v122, v21, s[28:31], 0 offen
	buffer_store_b32 v121, v22, s[28:31], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v120, v0, s[28:31], 0 offen
	buffer_store_b32 v119, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v118, v21, s[28:31], 0 offen
	buffer_store_b32 v117, v22, s[28:31], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v5, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v116, v0, s[28:31], 0 offen
	buffer_store_b32 v115, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v3, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v114, v21, s[28:31], 0 offen
	buffer_store_b32 v113, v22, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v112, v0, s[28:31], 0 offen
	buffer_store_b32 v111, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v110, v19, s[28:31], 0 offen
	buffer_store_b32 v109, v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v14, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v13, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v108, v0, s[28:31], 0 offen
	buffer_store_b32 v107, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v106, v19, s[28:31], 0 offen
	buffer_store_b32 v105, v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v104, v0, s[28:31], 0 offen
	buffer_store_b32 v103, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v102, v19, s[28:31], 0 offen
	buffer_store_b32 v101, v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v100, v0, s[28:31], 0 offen
	buffer_store_b32 v99, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s19, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v98, v19, s[28:31], 0 offen
	buffer_store_b32 v97, v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v96, v0, s[28:31], 0 offen
	buffer_store_b32 v95, v2, s[28:31], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v15, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v94, v3, s[28:31], 0 offen
	buffer_store_b32 v93, v17, s[28:31], 0 offen
	v_add_lshl_u32 v3, v1, v14, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v13, v1, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v92, v0, s[28:31], 0 offen
	buffer_store_b32 v91, v2, s[28:31], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v0, v1, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_add_lshl_u32 v2, v1, v11, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v90, v3, s[28:31], 0 offen
	buffer_store_b32 v89, v13, s[28:31], 0 offen
	v_add_lshl_u32 v3, v1, v10, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v9, v1, v9, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v88, v0, s[28:31], 0 offen
	buffer_store_b32 v87, v2, s[28:31], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v86, v3, s[28:31], 0 offen
	buffer_store_b32 v85, v9, s[28:31], 0 offen
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v1, v6, 2
	v_add_lshl_u32 v5, v1, v5, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v1, v4, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s2, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s2, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b32 v82, v0, s[28:31], 0 offen
	buffer_store_b32 v81, v2, s[28:31], 0 offen
	buffer_store_b32 v84, v3, s[28:31], 0 offen
	buffer_store_b32 v83, v4, s[28:31], 0 offen
	buffer_store_b32 v80, v1, s[28:31], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 203
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 203
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9876
; TotalNumSgprs: 84
; NumVgprs: 203
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 203
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     203
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
