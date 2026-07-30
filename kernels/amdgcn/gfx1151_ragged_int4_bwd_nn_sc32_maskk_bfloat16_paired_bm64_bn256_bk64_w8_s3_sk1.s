	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v112, 1, v0
	v_and_b32_e32 v113, 0x7f, v0
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
	s_ashr_i32 s10, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s10, s4
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
	s_sub_i32 s11, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s11, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s8, s10
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s6, s8
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s12, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s8
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s12, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3)
	s_mul_i32 s7, s5, s6
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s5, s2, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_hi_u32 s2, s6, s7
	s_abs_i32 s4, s5
	s_add_i32 s2, s6, s2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s2, s4, s2
	s_xor_b32 s9, s5, s10
	s_mul_i32 s11, s2, s8
	s_ashr_i32 s14, s9, 31
	s_sub_i32 s4, s4, s11
	s_add_i32 s9, s2, 1
	s_sub_i32 s11, s4, s8
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s4, s11, s4
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s4, s8
	s_mov_b32 s4, 0
	s_cselect_b32 s2, s9, s2
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s13, s12, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s2, s2, s14
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[8:9], s[12:13], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s2, s2, s14
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	s_load_b32 s13, s[6:7], 0x0
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s2, s10
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s7, s13, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s7, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge17_crit_edge
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v32, 0x7f, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 34 is_stmt 0                ; ragged.py:0:34
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr32
.LBB0_3:                                ; %Flow361
	s_load_b64 s[44:45], s[0:1], 0x28
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v81, 0x80, v0
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v65, 15, v0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s9, 0, v81
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
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	s_sub_i32 s46, s5, s6
	s_lshl_b32 s47, s2, 6
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_mul_i32 s33, s12, s34
	s_cbranch_vccnz .LBB0_12
; %bb.4:                                ; %.lr.ph16
	s_load_b64 s[10:11], s[0:1], 0x38
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v2, s47, v65
	.loc	1 1008 26 is_stmt 1             ; ragged.py:1008:26
	s_lshr_b32 s14, s7, 31
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_lshl_or_b32 v66, s46, 8, v0
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_add_i32 s14, s7, s14
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v3, s47, v1
	v_or_b32_e32 v5, 16, v2
	v_or_b32_e32 v6, 32, v2
	v_or_b32_e32 v10, 48, v2
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s8, s34, v2
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v2, 4, v0
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_ashr_i32 s48, s14, 1
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_lshr_b32 s14, s13, 31
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v7, 16, v3
	v_or_b32_e32 v8, 32, v3
	v_or_b32_e32 v9, 48, v3
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v3
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v2, 0x70, v2
	v_bfe_i32 v3, v0, 3, 1
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s49, s3, 4
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_add_i32 s3, s13, s14
	s_load_b256 s[20:27], s[0:1], 0x0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s10, v1, v[65:66]
	s_ashr_i32 s50, s3, 1
	s_add_i32 s3, s47, s33
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s4, s34, v5
	v_cndmask_b32_e64 v5, 0x88, 0, s9
	v_and_or_b32 v153, 0x88, v3, v2
	v_lshrrev_b32_e32 v2, 1, v0
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v1, s3, v1
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v4, 0xf0, v0
	v_cmp_gt_i32_e64 s5, s34, v6
	v_xor_b32_e32 v155, v5, v113
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v161, 0x70, v2
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v5, 48, v1
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v6, s3, v65
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_mul_lo_u32 v162, v1, s10
	v_dual_mov_b32 v136, 0 :: v_dual_lshlrev_b32 v1, 5, v0
	v_mad_u64_u32 v[68:69], null, s10, 48, v[67:68]
	v_mad_u64_u32 v[69:70], null, s35, 3, v[66:67]
	v_mad_u64_u32 v[70:71], null, s35, 5, v[66:67]
	v_mad_u64_u32 v[71:72], null, s35, 6, v[66:67]
	v_mul_lo_u32 v163, v2, s10
	v_mul_lo_u32 v164, v3, s10
	v_mul_lo_u32 v165, v5, s10
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v2, 16, v6
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v3, 32, v6
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v5, 2, v4
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v1, 32, v1
	v_mad_u64_u32 v[72:73], null, s35, 7, v[66:67]
	v_mad_u64_u32 v[73:74], null, s35, 9, v[66:67]
	v_mul_lo_u32 v166, v6, s11
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v6, 48, v6
	v_mad_u64_u32 v[74:75], null, s35, 10, v[66:67]
	v_mad_u64_u32 v[75:76], null, s35, 11, v[66:67]
	v_mad_u64_u32 v[76:77], null, s35, 12, v[66:67]
	v_mul_lo_u32 v167, v2, s11
	v_mul_lo_u32 v168, v3, s11
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v2, 28, v112
	v_add3_u32 v1, 0, v5, v1
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v3, 1, v4
	v_mad_u64_u32 v[77:78], null, s35, 13, v[66:67]
	v_mad_u64_u32 v[78:79], null, s35, 14, v[66:67]
	v_mul_lo_u32 v169, v6, s11
	v_mad_u64_u32 v[79:80], null, s35, 15, v[66:67]
	s_and_b32 s29, s21, 0xffff
	s_and_b32 s37, s23, 0xffff
	s_bitcmp1_b32 s13, 0
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v7
	v_cmp_gt_i32_e64 s1, s34, v8
	v_cmp_gt_i32_e64 s2, s34, v9
	v_cmp_gt_i32_e64 s6, s34, v10
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s7, s35, v66
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v147, 0, v65
	v_lshl_add_u32 v148, s10, 4, v67
	v_lshl_add_u32 v149, s10, 5, v67
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v150, s35, v66
	v_lshl_add_u32 v151, s35, 1, v66
	v_lshl_add_u32 v152, s35, 2, v66
	v_lshl_add_u32 v154, s35, 3, v66
	v_xor_b32_e32 v156, 8, v153
	v_or_b32_e32 v157, 0x300, v0
	v_or_b32_e32 v158, 0x700, v0
	v_or_b32_e32 v159, 0xb00, v0
	v_or_b32_e32 v160, 0xf00, v0
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v170, v1, v2
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v171, 0, v3
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_mov_b32_e32 v80, 0
	s_cselect_b32 s23, -1, 0
	s_add_i32 s55, s48, -1
	.loc	1 1164 43                       ; ragged.py:1164:43
	s_mul_i32 s51, s12, s10
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s52, s12, s11
	.loc	1 1115 13                       ; ragged.py:1115:13
	s_mov_b32 s53, 0
	s_mul_i32 s54, s3, s10
	s_mov_b32 s28, s20
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s36, s22
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s41, s27, 0xffff
	s_mov_b32 s40, s26
	.loc	1 1115 19 is_stmt 0             ; ragged.py:1115:19
	s_lshr_b32 s56, s55, 4
	s_mov_b32 s3, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1206 40 is_stmt 1             ; ragged.py:1206:40
	v_add_lshl_u32 v172, v166, s53, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s53, s52
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v173, v167, s53, 1
	v_add_lshl_u32 v174, v168, s53, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s35
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v175, v169, s53, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v176, v66, s3, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v172, 0x80000000, v172, s8
	v_cndmask_b32_e64 v173, 0x80000000, v173, s4
	v_cndmask_b32_e64 v174, 0x80000000, v174, s5
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	v_cndmask_b32_e64 v175, 0x80000000, v175, s6
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v176, 0x80000000, v176, s7
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x3
	buffer_load_u16 v172, v172, s[24:27], 0 offen
	buffer_load_u16 v173, v173, s[24:27], 0 offen
	buffer_load_u16 v174, v174, s[24:27], 0 offen
	buffer_load_u16 v175, v175, s[24:27], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v176, v176, s[40:43], 0 offen
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v178, v2
	v_cvt_f32_i32_e32 v179, v3
	v_cvt_f32_i32_e32 v57, v57
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
	v_cvt_f32_i32_e32 v177, v1
	v_cvt_f32_i32_e32 v180, v4
	v_cvt_f32_i32_e32 v181, v5
	v_cvt_f32_i32_e32 v182, v6
	v_cvt_f32_i32_e32 v183, v7
	v_cvt_f32_i32_e32 v184, v8
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s9, s53, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s3, s9, 4
	s_cmp_lg_u32 s53, s56
	s_mov_b32 s53, s9
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v3, 16, v174
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v25, v25, v3 :: v_dual_lshlrev_b32 v2, 16, v173
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v42, v42, v2 :: v_dual_lshlrev_b32 v1, 16, v172
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v172, 16, v175
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v41, v41, v2 :: v_dual_lshlrev_b32 v4, 16, v176
	v_mul_f32_e32 v60, v60, v1
	v_mul_f32_e32 v57, v57, v1
	v_mul_f32_e32 v58, v58, v1
	v_mul_f32_e32 v59, v59, v1
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
	v_dual_mul_f32 v40, v40, v2 :: v_dual_mul_f32 v27, v27, v3
	v_dual_mul_f32 v28, v28, v3 :: v_dual_mul_f32 v173, v9, v172
	v_dual_mul_f32 v29, v29, v3 :: v_dual_mul_f32 v174, v10, v172
	v_dual_mul_f32 v30, v30, v3 :: v_dual_mul_f32 v175, v11, v172
	v_dual_mul_f32 v31, v31, v3 :: v_dual_mul_f32 v176, v12, v172
	v_dual_mul_f32 v32, v32, v3 :: v_dual_mul_f32 v185, v13, v172
	v_dual_mul_f32 v17, v17, v3 :: v_dual_mul_f32 v186, v14, v172
	v_dual_mul_f32 v18, v18, v3 :: v_dual_mul_f32 v187, v15, v172
	v_dual_mul_f32 v19, v19, v3 :: v_dual_mul_f32 v188, v16, v172
	v_dual_mul_f32 v20, v20, v3 :: v_dual_mul_f32 v177, v177, v172
	v_dual_mul_f32 v21, v21, v3 :: v_dual_mul_f32 v178, v178, v172
	v_dual_mul_f32 v22, v22, v3 :: v_dual_mul_f32 v179, v179, v172
	v_dual_mul_f32 v23, v23, v3 :: v_dual_mul_f32 v180, v180, v172
	v_dual_mul_f32 v24, v24, v3 :: v_dual_mul_f32 v181, v181, v172
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_store_b32 v170, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v171
	ds_load_b128 v[5:8], v171 offset:16
	ds_load_b128 v[9:12], v171 offset:512
	ds_load_b128 v[13:16], v171 offset:528
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v182, v182, v172
	v_mul_f32_e32 v183, v183, v172
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v172, v184, v172 :: v_dual_fmac_f32 v145, v58, v2
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v146, v57, v1
	v_dual_fmac_f32 v144, v59, v3 :: v_dual_fmac_f32 v143, v60, v4
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v142, v61, v5 :: v_dual_fmac_f32 v141, v62, v6
	v_dual_fmac_f32 v140, v63, v7 :: v_dual_fmac_f32 v139, v64, v8
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v138, v49, v9 :: v_dual_fmac_f32 v137, v50, v10
	v_dual_fmac_f32 v136, v51, v11 :: v_dual_fmac_f32 v135, v52, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v134, v53, v13 :: v_dual_fmac_f32 v133, v54, v14
	v_dual_fmac_f32 v132, v55, v15 :: v_dual_fmac_f32 v131, v56, v16
	v_dual_fmac_f32 v130, v41, v1 :: v_dual_fmac_f32 v129, v42, v2
	v_dual_fmac_f32 v128, v43, v3 :: v_dual_fmac_f32 v127, v44, v4
	v_dual_fmac_f32 v126, v45, v5 :: v_dual_fmac_f32 v125, v46, v6
	v_dual_fmac_f32 v124, v47, v7 :: v_dual_fmac_f32 v123, v48, v8
	v_dual_fmac_f32 v122, v33, v9 :: v_dual_fmac_f32 v121, v34, v10
	v_dual_fmac_f32 v120, v35, v11 :: v_dual_fmac_f32 v119, v36, v12
	v_dual_fmac_f32 v118, v37, v13 :: v_dual_fmac_f32 v117, v38, v14
	v_dual_fmac_f32 v116, v39, v15 :: v_dual_fmac_f32 v115, v40, v16
	v_dual_fmac_f32 v114, v25, v1 :: v_dual_fmac_f32 v111, v26, v2
	v_dual_fmac_f32 v110, v27, v3 :: v_dual_fmac_f32 v109, v28, v4
	v_dual_fmac_f32 v108, v29, v5 :: v_dual_fmac_f32 v107, v30, v6
	v_dual_fmac_f32 v106, v31, v7 :: v_dual_fmac_f32 v105, v32, v8
	v_dual_fmac_f32 v104, v17, v9 :: v_dual_fmac_f32 v103, v18, v10
	v_dual_fmac_f32 v102, v19, v11 :: v_dual_fmac_f32 v101, v20, v12
	v_dual_fmac_f32 v100, v21, v13 :: v_dual_fmac_f32 v99, v22, v14
	v_dual_fmac_f32 v98, v23, v15 :: v_dual_fmac_f32 v97, v24, v16
	v_dual_fmac_f32 v96, v173, v1 :: v_dual_fmac_f32 v95, v174, v2
	v_dual_fmac_f32 v94, v175, v3 :: v_dual_fmac_f32 v93, v176, v4
	v_dual_fmac_f32 v92, v185, v5 :: v_dual_fmac_f32 v91, v186, v6
	v_dual_fmac_f32 v90, v187, v7 :: v_dual_fmac_f32 v89, v188, v8
	v_dual_fmac_f32 v88, v177, v9 :: v_dual_fmac_f32 v87, v178, v10
	v_dual_fmac_f32 v86, v179, v11 :: v_dual_fmac_f32 v85, v180, v12
	v_dual_fmac_f32 v83, v181, v13 :: v_dual_fmac_f32 v84, v182, v14
	v_fmac_f32_e32 v82, v183, v15
	v_fmac_f32_e32 v80, v172, v16
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1150 54                       ; ragged.py:1150:54
	s_sub_i32 s9, s50, s3
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1148 45                       ; ragged.py:1148:45
	v_med3_i32 v1, s9, 0, 16
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1152 41                       ; ragged.py:1152:41
	v_readfirstlane_b32 s9, v1
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
	s_and_b32 s10, s9, 16
	s_mov_b32 s9, s49
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_ge_i32 s49, s10
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s9, s49
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
	s_add_i32 s11, s9, s3
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_mov_b32 s38, s30
	.loc	1 1165 46                       ; ragged.py:1165:46
	s_add_i32 s12, s11, s54
	.loc	1 1166 46                       ; ragged.py:1166:46
	s_add_i32 s11, s11, s51
	.loc	1 1166 38 is_stmt 0             ; ragged.py:1166:38
	s_mov_b32 s39, s31
	.loc	1 1166 46                       ; ragged.py:1166:46
	s_mul_i32 s11, s11, s35
	v_add_nc_u32_e32 v172, s12, v67
	v_add_nc_u32_e32 v176, s11, v66
	v_add_nc_u32_e32 v177, s11, v150
	v_add_nc_u32_e32 v178, s11, v151
	v_add_nc_u32_e32 v179, s11, v69
	v_add_nc_u32_e32 v180, s11, v152
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_cndmask_b32_e64 v176, 0x80000000, v176, s7
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v181, s11, v70
	v_add_nc_u32_e32 v182, s11, v71
	v_add_nc_u32_e32 v183, s11, v72
	v_add_nc_u32_e32 v184, s11, v154
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v192, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v177, s7
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v185, s11, v73
	v_add_nc_u32_e32 v186, s11, v74
	v_add_nc_u32_e32 v173, s12, v148
	v_add_nc_u32_e32 v174, s12, v149
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v193, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v178, s7
	v_add_nc_u32_e32 v175, s12, v68
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	v_cndmask_b32_e32 v172, 0x80000000, v172, vcc_lo
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v187, s11, v75
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_cndmask_b32_e64 v173, 0x80000000, v173, s0
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v194, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v179, s7
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_cndmask_b32_e64 v174, 0x80000000, v174, s1
	v_cndmask_b32_e64 v175, 0x80000000, v175, s2
	s_clause 0x1
	buffer_load_u8 v172, v172, s[28:31], 0 offen
	buffer_load_u8 v173, v173, s[28:31], 0 offen
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v195, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v180, s7
	.loc	1 1166 46 is_stmt 0             ; ragged.py:1166:46
	v_add_nc_u32_e32 v188, s11, v76
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	s_clause 0x1
	buffer_load_u8 v174, v174, s[28:31], 0 offen
	buffer_load_u8 v175, v175, s[28:31], 0 offen
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v189, s11, v77
	.loc	1 1166 38 is_stmt 0             ; ragged.py:1166:38
	buffer_load_u8 v196, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v181, s7
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v190, s11, v78
	v_add_nc_u32_e32 v191, s11, v79
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_add_nc_u32_e32 v204, 0, v0
	.loc	1 1177 25 is_stmt 1             ; ragged.py:1177:25
	s_add_i32 s9, s9, 16
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v197, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v182, s7
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_lt_i32 s9, s10
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v198, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v183, s7
	buffer_load_u8 v199, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v184, s7
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_add_nc_u32_e32 v184, 0, v156
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v200, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v185, s7
	buffer_load_u8 v201, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v186, s7
	buffer_load_u8 v202, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v187, s7
	buffer_load_u8 v203, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v188, s7
	buffer_load_u8 v188, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v189, s7
	buffer_load_u8 v189, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v190, s7
	buffer_load_u8 v190, v176, s[36:39], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v191, s7
	buffer_load_u8 v191, v176, s[36:39], 0 offen
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_add_nc_u32_e32 v176, 0, v155
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(16)
	ds_store_b8 v176, v172
	s_waitcnt vmcnt(15)
	ds_store_b8 v176, v173 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v176, v174 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v176, v175 offset:768
	v_add_nc_u32_e32 v176, 0, v153
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[172:175], v176 offset1:32
	ds_load_2addr_b64 v[176:179], v176 offset0:64 offset1:96
	ds_load_2addr_b64 v[180:183], v184 offset1:32
	ds_load_2addr_b64 v[184:187], v184 offset0:64 offset1:96
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v204, v192
	ds_store_b8 v204, v193 offset:256
	ds_store_b8 v204, v194 offset:512
	v_add_nc_u32_e32 v192, 0, v157
	ds_store_b8 v192, v195
	s_waitcnt vmcnt(11)
	ds_store_b8 v204, v196 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v204, v197 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v204, v198 offset:1536
	v_add_nc_u32_e32 v192, 0, v158
	v_add_nc_u32_e32 v194, v147, v161
	s_waitcnt vmcnt(8)
	ds_store_b8 v192, v199
	s_waitcnt vmcnt(7)
	ds_store_b8 v204, v200 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v204, v201 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v204, v202 offset:2560
	v_add_nc_u32_e32 v192, 0, v159
	s_waitcnt vmcnt(4)
	ds_store_b8 v192, v203
	s_waitcnt vmcnt(3)
	ds_store_b8 v204, v188 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v204, v189 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v204, v190 offset:3584
	v_add_nc_u32_e32 v188, 0, v160
	s_waitcnt vmcnt(0)
	ds_store_b8 v188, v191
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1167 35                       ; ragged.py:1167:35
	ds_load_u8 v188, v194 offset:1280
	ds_load_u8 v189, v194 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v194 offset:1792
	ds_load_u8 v190, v194 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v189, 16, v188
	ds_load_u8 v188, v194 offset:256
	ds_load_u8 v190, v194
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v190, v188, 0xc0c0004
	ds_load_u8 v190, v194 offset:768
	ds_load_u8 v191, v194 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v190, 16, v188
	ds_load_u8 v190, v194 offset:3328
	ds_load_u8 v191, v194 offset:3072
	v_wmma_i32_16x16x16_iu4 v[57:64], v[188:189], v[172:173], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[188:189], v[174:175], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[176:177], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[178:179], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v194 offset:3840
	ds_load_u8 v192, v194 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v191, 16, v190
	ds_load_u8 v190, v194 offset:2304
	ds_load_u8 v192, v194 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v192, v190, 0xc0c0004
	ds_load_u8 v192, v194 offset:2816
	ds_load_u8 v193, v194 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v193, v192, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v192, 16, v190
	ds_load_u8 v192, v194 offset:1408
	ds_load_u8 v193, v194 offset:1152
	v_wmma_i32_16x16x16_iu4 v[57:64], v[190:191], v[180:181], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[190:191], v[182:183], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[190:191], v[184:185], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[190:191], v[186:187], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v193, v192, 0xc0c0004
	ds_load_u8 v193, v194 offset:1920
	ds_load_u8 v195, v194 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v195, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v193, 16, v192
	ds_load_u8 v192, v194 offset:384
	ds_load_u8 v195, v194 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v195, v192, 0xc0c0004
	ds_load_u8 v195, v194 offset:896
	ds_load_u8 v196, v194 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v192, v195, 16, v192
	v_wmma_i32_16x16x16_iu4 v[49:56], v[192:193], v[172:173], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v172, v194 offset:3456
	ds_load_u8 v173, v194 offset:3200
	v_wmma_i32_16x16x16_iu4 v[33:40], v[192:193], v[174:175], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[192:193], v[176:177], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[192:193], v[178:179], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v194 offset:3968
	ds_load_u8 v195, v194 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v195, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v173, 16, v172
	ds_load_u8 v172, v194 offset:2432
	ds_load_u8 v195, v194 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v195, v172, 0xc0c0004
	ds_load_u8 v195, v194 offset:2944
	ds_load_u8 v194, v194 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v194, v194, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v172, v194, 16, v172
	v_wmma_i32_16x16x16_iu4 v[49:56], v[172:173], v[180:181], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[172:173], v[182:183], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[172:173], v[184:185], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[172:173], v[186:187], v[1:8] neg_lo:[1,1,0]
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1146 25                       ; ragged.py:1146:25
	s_sub_i32 s10, s48, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1144 42                       ; ragged.py:1144:42
	s_min_i32 s10, s10, 16
	.loc	1 1178 24                       ; ragged.py:1178:24
	s_cmp_ge_i32 s9, s10
	.loc	1 1178 21 is_stmt 0             ; ragged.py:1178:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1179 30 is_stmt 1             ; ragged.py:1179:30
	s_add_i32 s38, s9, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s9, s38, 1
	s_or_b32 s11, s38, 2
	s_or_b32 s12, s38, 3
	s_or_b32 s13, s38, 4
	s_or_b32 s14, s38, 5
	s_or_b32 s15, s38, 6
	s_or_b32 s16, s38, 7
	s_or_b32 s17, s38, 8
	s_or_b32 s18, s38, 9
	s_or_b32 s19, s38, 10
	s_or_b32 s20, s38, 11
	s_or_b32 s21, s38, 12
	s_or_b32 s22, s38, 13
	s_or_b32 s26, s38, 14
	s_or_b32 s27, s38, 15
	.loc	1 1188 35                       ; ragged.py:1188:35
	s_sub_i32 s39, s9, s3
	s_sub_i32 s42, s11, s3
	s_sub_i32 s43, s12, s3
	s_sub_i32 s57, s13, s3
	s_sub_i32 s58, s14, s3
	s_sub_i32 s59, s15, s3
	s_sub_i32 s60, s16, s3
	s_sub_i32 s61, s17, s3
	s_sub_i32 s62, s18, s3
	s_sub_i32 s63, s19, s3
	s_sub_i32 s64, s20, s3
	s_sub_i32 s65, s21, s3
	s_sub_i32 s66, s22, s3
	s_sub_i32 s67, s26, s3
	s_sub_i32 s68, s27, s3
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	s_cmp_lt_i32 s39, s10
	.loc	1 1179 30 is_stmt 1             ; ragged.py:1179:30
	v_or_b32_e32 v172, s38, v65
	.loc	1 1188 34                       ; ragged.py:1188:34
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s42, s10
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s43, s10
	.loc	1 1188 35 is_stmt 0             ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v173, s3, v172
	.loc	1 1188 34                       ; ragged.py:1188:34
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s57, s10
	v_add_nc_u32_e32 v174, v172, v163
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s58, s10
	v_cmp_gt_i32_e64 s3, s10, v173
	s_cselect_b32 s72, -1, 0
	s_cmp_lt_i32 s59, s10
	v_add_nc_u32_e32 v173, v172, v162
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s60, s10
	v_add_nc_u32_e32 v175, v172, v164
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s61, s10
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s62, s10
	s_cselect_b32 s76, -1, 0
	s_cmp_lt_i32 s63, s10
	s_cselect_b32 s77, -1, 0
	s_cmp_lt_i32 s64, s10
	s_cselect_b32 s78, -1, 0
	s_cmp_lt_i32 s65, s10
	s_cselect_b32 s79, -1, 0
	s_cmp_lt_i32 s66, s10
	s_cselect_b32 s80, -1, 0
	s_cmp_lt_i32 s67, s10
	s_cselect_b32 s81, -1, 0
	s_cmp_lt_i32 s68, s10
	s_cselect_b32 s82, -1, 0
	.loc	1 1189 60 is_stmt 1             ; ragged.py:1189:60
	s_cmp_eq_u32 s38, s55
	s_cselect_b32 s10, -1, 0
	s_cmp_eq_u32 s9, s55
	v_cmp_eq_u32_e64 s9, s55, v172
	s_cselect_b32 s42, -1, 0
	s_cmp_eq_u32 s11, s55
	v_add_nc_u32_e32 v172, v172, v165
	s_cselect_b32 s11, -1, 0
	s_cmp_eq_u32 s12, s55
	s_cselect_b32 s12, -1, 0
	s_cmp_eq_u32 s13, s55
	s_cselect_b32 s13, -1, 0
	s_cmp_eq_u32 s14, s55
	s_cselect_b32 s14, -1, 0
	s_cmp_eq_u32 s15, s55
	s_cselect_b32 s15, -1, 0
	s_cmp_eq_u32 s16, s55
	s_cselect_b32 s16, -1, 0
	s_cmp_eq_u32 s17, s55
	s_cselect_b32 s17, -1, 0
	s_cmp_eq_u32 s18, s55
	s_cselect_b32 s18, -1, 0
	s_cmp_eq_u32 s19, s55
	s_cselect_b32 s19, -1, 0
	s_cmp_eq_u32 s20, s55
	s_cselect_b32 s20, -1, 0
	s_cmp_eq_u32 s21, s55
	s_cselect_b32 s21, -1, 0
	s_cmp_eq_u32 s22, s55
	s_cselect_b32 s22, -1, 0
	s_cmp_eq_u32 s26, s55
	s_cselect_b32 s67, -1, 0
	s_cmp_eq_u32 s27, s55
	s_cselect_b32 s68, -1, 0
	.loc	1 1189 36 is_stmt 0             ; ragged.py:1189:36
	s_and_b32 s26, s10, s23
	s_and_b32 s27, s42, s23
	s_and_b32 s42, s11, s23
	s_and_b32 s83, s9, s23
	.loc	1 1190 70 is_stmt 1             ; ragged.py:1190:70
	s_and_b32 s9, vcc_lo, s3
	s_and_b32 s10, s0, s3
	s_and_b32 s11, s1, s3
	s_and_b32 s3, s2, s3
	.loc	1 1190 38 is_stmt 0             ; ragged.py:1190:38
	v_cndmask_b32_e64 v173, 0x80000000, v173, s9
	v_cndmask_b32_e64 v172, 0x80000000, v172, s3
	.loc	1 1191 46 is_stmt 1             ; ragged.py:1191:46
	s_add_i32 s38, s38, s51
	.loc	1 1191 70 is_stmt 0             ; ragged.py:1191:70
	s_and_b32 s3, s7, s39
	.loc	1 1191 46                       ; ragged.py:1191:46
	s_mul_i32 s38, s38, s35
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	s_clause 0x1
	buffer_load_u8 v176, v173, s[28:31], 0 offen
	buffer_load_u8 v177, v172, s[28:31], 0 offen
	v_cndmask_b32_e64 v173, 0x80000000, v174, s10
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v172, s38, v66
	v_add_nc_u32_e32 v178, s38, v151
	v_add_nc_u32_e32 v179, s38, v69
	v_add_nc_u32_e32 v180, s38, v152
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v174, v173, s[28:31], 0 offen
	v_cndmask_b32_e64 v173, 0x80000000, v175, s11
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v172, 0x80000000, v172, s7
	.loc	1 1191 46 is_stmt 0             ; ragged.py:1191:46
	v_add_nc_u32_e32 v181, s38, v70
	v_add_nc_u32_e32 v182, s38, v71
	v_add_nc_u32_e32 v183, s38, v72
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	buffer_load_u8 v175, v173, s[28:31], 0 offen
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v173, s38, v150
	v_add_nc_u32_e32 v184, s38, v154
	v_add_nc_u32_e32 v185, s38, v73
	v_add_nc_u32_e32 v186, s38, v74
	v_add_nc_u32_e32 v187, s38, v75
	v_add_nc_u32_e32 v188, s38, v76
	v_add_nc_u32_e32 v189, s38, v77
	v_add_nc_u32_e32 v190, s38, v78
	v_add_nc_u32_e32 v191, s38, v79
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s9, s7, s69
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v192, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v173, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s10, s7, s70
	s_and_b32 s11, s7, s71
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s43, s12, s23
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s12, s7, s72
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v193, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v178, s9
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s57, s13, s23
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s13, s7, s73
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s58, s14, s23
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s14, s7, s74
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v194, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v179, s10
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s59, s15, s23
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s15, s7, s75
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s60, s16, s23
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s16, s7, s76
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v195, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v180, s11
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s61, s17, s23
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s17, s7, s77
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s62, s18, s23
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s18, s7, s78
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v196, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v181, s12
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s63, s19, s23
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s19, s7, s79
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s64, s20, s23
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s20, s7, s80
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v197, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v182, s13
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s65, s21, s23
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s21, s7, s81
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s66, s22, s23
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s22, s7, s82
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	buffer_load_u8 v182, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v183, s14
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s67, s67, s23
	s_and_b32 s68, s68, s23
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v183, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v184, s15
	buffer_load_u8 v184, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v185, s16
	buffer_load_u8 v185, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v186, s17
	buffer_load_u8 v186, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v187, s18
	buffer_load_u8 v187, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v188, s19
	buffer_load_u8 v198, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v189, s20
	buffer_load_u8 v199, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v190, s21
	buffer_load_u8 v200, v172, s[36:39], 0 offen
	v_cndmask_b32_e64 v172, 0x80000000, v191, s22
	buffer_load_u8 v201, v172, s[36:39], 0 offen
	.loc	1 1192 38                       ; ragged.py:1192:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1192 66 is_stmt 0             ; ragged.py:1192:66
	s_waitcnt vmcnt(19)
	v_and_b16 v172.l, v176.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v173.h, v177.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v172.l, v176.l, v172.l, s83
	v_cndmask_b16 v173.h, v177.l, v173.h, s83
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(17)
	v_and_b16 v172.h, v174.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v172.h, v174.l, v172.h, s83
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(16)
	v_and_b16 v173.l, v175.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v173.l, v175.l, v173.l, s83
	.loc	1 1193 66 is_stmt 1             ; ragged.py:1193:66
	s_waitcnt vmcnt(15)
	v_and_b16 v174.l, v192.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v188.l, v192.l, v174.l, s26
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(14)
	v_and_b16 v174.h, v193.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v188.h, v193.l, v174.h, s27
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(13)
	v_and_b16 v175.l, v194.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v174, 0, v155
	ds_store_b8 v174, v172
	ds_store_b8_d16_hi v174, v172 offset:256
	ds_store_b8 v174, v173 offset:512
	ds_store_b8_d16_hi v174, v173 offset:768
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(12)
	v_and_b16 v175.h, v195.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v189.l, v194.l, v175.l, s42
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(11)
	v_and_b16 v176.l, v196.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v189.h, v195.l, v175.h, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b16 v190.l, v196.l, v176.l, s57
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(10)
	v_and_b16 v176.h, v197.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_add_nc_u32_e32 v196, 0, v0
	v_cndmask_b16 v190.h, v197.l, v176.h, s58
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(9)
	v_and_b16 v177.l, v182.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v176, 0, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v191.l, v182.l, v177.l, s59
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	s_waitcnt vmcnt(8)
	v_and_b16 v177.h, v183.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v191.h, v183.l, v177.h, s60
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(7)
	v_and_b16 v178.l, v184.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v192.l, v184.l, v178.l, s61
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(6)
	v_and_b16 v178.h, v185.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v184, 0, v156
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v192.h, v185.l, v178.h, s62
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	s_waitcnt vmcnt(5)
	v_and_b16 v179.l, v186.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v193.l, v186.l, v179.l, s63
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(4)
	v_and_b16 v179.h, v187.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v193.h, v187.l, v179.h, s64
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(3)
	v_and_b16 v180.l, v198.l, 15
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	ds_load_2addr_b64 v[172:175], v176 offset1:32
	ds_load_2addr_b64 v[176:179], v176 offset0:64 offset1:96
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v194.l, v198.l, v180.l, s65
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	s_waitcnt vmcnt(2)
	v_and_b16 v180.h, v199.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v194.h, v199.l, v180.h, s66
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(1)
	v_and_b16 v181.l, v200.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v195.l, v200.l, v181.l, s67
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(0)
	v_and_b16 v181.h, v201.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v195.h, v201.l, v181.h, s68
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	ds_load_2addr_b64 v[180:183], v184 offset1:32
	ds_load_2addr_b64 v[184:187], v184 offset0:64 offset1:96
	.loc	1 1193 38                       ; ragged.py:1193:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v196, v188
	ds_store_b8_d16_hi v196, v188 offset:256
	ds_store_b8 v196, v189 offset:512
	v_add_nc_u32_e32 v188, 0, v157
	ds_store_b8_d16_hi v188, v189
	ds_store_b8 v196, v190 offset:1024
	ds_store_b8_d16_hi v196, v190 offset:1280
	ds_store_b8 v196, v191 offset:1536
	v_add_nc_u32_e32 v188, 0, v158
	ds_store_b8_d16_hi v188, v191
	ds_store_b8 v196, v192 offset:2048
	ds_store_b8_d16_hi v196, v192 offset:2304
	ds_store_b8 v196, v193 offset:2560
	v_add_nc_u32_e32 v188, 0, v159
	ds_store_b8_d16_hi v188, v193
	ds_store_b8 v196, v194 offset:3072
	ds_store_b8_d16_hi v196, v194 offset:3328
	ds_store_b8 v196, v195 offset:3584
	v_add_nc_u32_e32 v188, 0, v160
	v_add_nc_u32_e32 v194, v147, v161
	ds_store_b8_d16_hi v188, v195
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1194 35                       ; ragged.py:1194:35
	ds_load_u8 v188, v194 offset:1280
	ds_load_u8 v189, v194 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v194 offset:1792
	ds_load_u8 v190, v194 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v189, 16, v188
	ds_load_u8 v188, v194 offset:256
	ds_load_u8 v190, v194
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v190, v188, 0xc0c0004
	ds_load_u8 v190, v194 offset:768
	ds_load_u8 v191, v194 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v190, 16, v188
	ds_load_u8 v190, v194 offset:3328
	ds_load_u8 v191, v194 offset:3072
	v_wmma_i32_16x16x16_iu4 v[57:64], v[188:189], v[172:173], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[188:189], v[174:175], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[188:189], v[176:177], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[188:189], v[178:179], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v194 offset:3840
	ds_load_u8 v192, v194 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v191, 16, v190
	ds_load_u8 v190, v194 offset:2304
	ds_load_u8 v192, v194 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v192, v190, 0xc0c0004
	ds_load_u8 v192, v194 offset:2816
	ds_load_u8 v193, v194 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v193, v192, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v192, 16, v190
	ds_load_u8 v192, v194 offset:1408
	ds_load_u8 v193, v194 offset:1152
	v_wmma_i32_16x16x16_iu4 v[57:64], v[190:191], v[180:181], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[190:191], v[182:183], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[190:191], v[184:185], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[190:191], v[186:187], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v193, v192, 0xc0c0004
	ds_load_u8 v193, v194 offset:1920
	ds_load_u8 v195, v194 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v195, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v193, 16, v192
	ds_load_u8 v192, v194 offset:384
	ds_load_u8 v195, v194 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v195, v192, 0xc0c0004
	ds_load_u8 v195, v194 offset:896
	ds_load_u8 v196, v194 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v192, v195, 16, v192
	v_wmma_i32_16x16x16_iu4 v[49:56], v[192:193], v[172:173], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v172, v194 offset:3456
	ds_load_u8 v173, v194 offset:3200
	v_wmma_i32_16x16x16_iu4 v[33:40], v[192:193], v[174:175], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[192:193], v[176:177], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[192:193], v[178:179], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v194 offset:3968
	ds_load_u8 v195, v194 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v195, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v173, 16, v172
	ds_load_u8 v172, v194 offset:2432
	ds_load_u8 v195, v194 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v195, v172, 0xc0c0004
	ds_load_u8 v195, v194 offset:2944
	ds_load_u8 v194, v194 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v194, v194, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v172, v194, 16, v172
	v_wmma_i32_16x16x16_iu4 v[49:56], v[172:173], v[180:181], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[172:173], v[182:183], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[172:173], v[184:185], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[172:173], v[186:187], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %Flow360
	.loc	1 0 35 is_stmt 0                ; ragged.py:0:35
	v_dual_mov_b32 v1, v112 :: v_dual_mov_b32 v32, v113
.LBB0_12:                               ; %._crit_edge17
	.loc	1 1226 33 is_stmt 1             ; ragged.py:1226:33
	v_bfe_u32 v3, v145, 16, 1
	v_bfe_u32 v4, v144, 16, 1
	v_cmp_o_f32_e64 s0, v145, v145
	v_bfe_u32 v2, v146, 16, 1
	v_cmp_o_f32_e64 s1, v144, v144
	v_add3_u32 v3, v145, v3, 0x7fff
	v_add3_u32 v4, v144, v4, 0x7fff
	v_bfe_u32 v7, v141, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v146, v146
	v_add3_u32 v2, v146, v2, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v142, 16, 1
	v_bfe_u32 v5, v143, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v4.h, s1
	v_add3_u32 v7, v141, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v141, v141
	v_add3_u32 v3, v142, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v142, v142
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_add3_u32 v5, v143, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_cndmask_b16 v12.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v138, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v139, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v140, 16, 1
	v_add3_u32 v7, v138, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v138, v138
	v_add3_u32 v3, v139, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v139, v139
	v_add3_u32 v5, v140, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	v_cndmask_b16 v18.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v135, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v136, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v137, 16, 1
	v_add3_u32 v7, v135, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v135, v135
	v_add3_u32 v3, v136, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v136, v136
	v_add3_u32 v5, v137, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_cndmask_b16 v24.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v132, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v133, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v134, 16, 1
	v_add3_u32 v7, v132, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v132, v132
	v_add3_u32 v3, v133, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v133, v133
	v_add3_u32 v5, v134, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_cndmask_b16 v30.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v129, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v130, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v131, 16, 1
	v_add3_u32 v7, v129, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v129, v129
	v_add3_u32 v3, v130, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v130, v130
	v_add3_u32 v5, v131, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v126, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v127, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v128, 16, 1
	v_add3_u32 v7, v126, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v126, v126
	v_add3_u32 v3, v127, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v127, v127
	v_add3_u32 v5, v128, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	v_cndmask_b16 v10.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v123, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v124, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v125, 16, 1
	v_add3_u32 v7, v123, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v123, v123
	v_add3_u32 v3, v124, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v124, v124
	v_add3_u32 v5, v125, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v125, v125
	v_cndmask_b16 v16.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v120, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v121, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v122, 16, 1
	v_add3_u32 v7, v120, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v120, v120
	v_add3_u32 v3, v121, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v121, v121
	v_add3_u32 v5, v122, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v122, v122
	v_cndmask_b16 v22.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v117, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v118, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v119, 16, 1
	v_add3_u32 v7, v117, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v117, v117
	v_add3_u32 v3, v118, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v118, v118
	v_add3_u32 v5, v119, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v119, v119
	v_cndmask_b16 v28.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v114, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v115, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v116, 16, 1
	v_add3_u32 v7, v114, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v114, v114
	v_add3_u32 v3, v115, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v115, v115
	v_bfe_u32 v9, v110, 16, 1
	v_add3_u32 v5, v116, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v116, v116
	v_cndmask_b16 v3.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v109, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v3.h, s0
	v_add3_u32 v9, v110, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v110, v110
	v_bfe_u32 v13, v107, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v111, 16, 1
	v_add3_u32 v7, v109, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v9.h, s0
	v_add3_u32 v13, v107, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v107, v107
	v_bfe_u32 v19, v104, 16, 1
	v_add3_u32 v5, v111, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v111, v111
	v_bfe_u32 v11, v108, 16, 1
	v_cmp_o_f32_e64 s1, v109, v109
	v_bfe_u32 v15, v106, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_add3_u32 v19, v104, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v104, v104
	v_bfe_u32 v25, v101, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v11, v108, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v108, v108
	v_bfe_u32 v17, v105, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v7.h, s1
	v_add3_u32 v15, v106, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v106, v106
	v_bfe_u32 v21, v103, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s0
	v_add3_u32 v25, v101, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v101, v101
	v_bfe_u32 v31, v98, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, vcc_lo
	v_add3_u32 v17, v105, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_bfe_u32 v23, v102, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s1
	v_add3_u32 v21, v103, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v103, v103
	v_bfe_u32 v27, v100, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s0
	v_add3_u32 v31, v98, v31, 0x7fff
	v_cmp_o_f32_e64 s0, v98, v98
	v_bfe_u32 v36, v95, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v17.h, vcc_lo
	v_add3_u32 v23, v102, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	v_bfe_u32 v29, v99, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s1
	v_add3_u32 v27, v100, v27, 0x7fff
	v_cmp_o_f32_e64 s1, v100, v100
	v_bfe_u32 v34, v97, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s0
	v_add3_u32 v36, v95, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v95, v95
	v_cndmask_b16 v23.l, 0x7fff, v23.h, vcc_lo
	v_add3_u32 v29, v99, v29, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	v_bfe_u32 v35, v96, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s1
	v_add3_u32 v34, v97, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v97, v97
	v_bfe_u32 v37, v94, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v92, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v29.h, vcc_lo
	v_add3_u32 v35, v96, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v96, v96
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s1
	v_add3_u32 v37, v94, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v94, v94
	v_add3_u32 v36, v92, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v92, v92
	v_cndmask_b16 v3.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v93, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v91, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v89, 16, 1
	v_add3_u32 v35, v93, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v93, v93
	v_add3_u32 v37, v91, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v91, v91
	v_add3_u32 v36, v89, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v89, v89
	v_cndmask_b16 v9.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v90, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v88, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v86, 16, 1
	v_add3_u32 v35, v90, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_add3_u32 v37, v88, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v88, v88
	v_add3_u32 v36, v86, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v86, v86
	v_bfe_u32 v38, v83, 16, 1
	v_cndmask_b16 v15.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v87, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v85, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v36.h, s0
	v_add3_u32 v36, v83, v38, 0x7fff
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v38, 3, v65
	v_lshlrev_b32_e32 v0, 6, v0
	v_and_b32_e32 v1, 0x1c0, v1
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v35, v87, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	v_add3_u32 v37, v85, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v85, v85
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v40, 11, v65
	v_and_b32_e32 v0, 0x400, v0
	v_xor_b32_e32 v1, v38, v1
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v21.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v84, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v82, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_or3_b32 v0, v40, v0, v1
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v35, v84, v35, 0x7fff
	v_cmp_o_f32_e64 s0, v84, v84
	v_add3_u32 v37, v82, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v82, v82
	v_cndmask_b16 v27.h, 0x7fff, v36.h, vcc_lo
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_add_nc_u32_e32 v1, 0, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v81
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v29.h, 0x7fff, v35.h, s0
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v35, v0, 8, 0
	v_xad_u32 v36, v0, 16, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_bfe_u32 v39, v80, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v37.h, s1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v37, v0, 24, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b64 v1, v[2:3], v[18:19] offset1:1
	ds_store_2addr_stride64_b64 v35, v[4:5], v[20:21] offset1:1
	ds_store_2addr_stride64_b64 v36, v[6:7], v[22:23] offset1:1
	ds_store_2addr_stride64_b64 v37, v[8:9], v[24:25] offset1:1
	v_lshlrev_b32_e32 v1, 3, v32
	v_cndmask_b32_e64 v2, 0x808, 0, vcc_lo
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v38, v80, v39, 0x7fff
	v_cmp_o_f32_e64 s2, v80, v80
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v3, v0, 32, 0
	v_xad_u32 v4, v0, 40, 0
	v_xor_b32_e32 v1, v2, v1
	v_xad_u32 v5, v0, 48, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v34.h, 0x7fff, v38.h, s2
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v0, v0, 56, 0
	ds_store_2addr_stride64_b64 v3, v[10:11], v[26:27] offset1:1
	ds_store_2addr_stride64_b64 v4, v[12:13], v[28:29] offset1:1
	ds_store_2addr_stride64_b64 v5, v[14:15], v[30:31] offset1:1
	ds_store_2addr_stride64_b64 v0, v[16:17], v[33:34] offset1:1
	v_add_nc_u32_e32 v0, 0, v1
	v_xad_u32 v2, 0x1010, v1, 0
	v_xad_u32 v3, 0x2020, v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[28:31], v0 offset1:2
	ds_load_2addr_stride64_b64 v[24:27], v2 offset1:2
	ds_load_2addr_stride64_b64 v[20:23], v3 offset1:2
	v_xad_u32 v0, 0x3030, v1, 0
	v_xad_u32 v2, 0x4040, v1, 0
	v_xad_u32 v3, 0x5050, v1, 0
	v_xad_u32 v4, 0x6060, v1, 0
	v_xad_u32 v1, 0x7070, v1, 0
	ds_load_2addr_stride64_b64 v[16:19], v0 offset1:2
	ds_load_2addr_stride64_b64 v[12:15], v2 offset1:2
	ds_load_2addr_stride64_b64 v[8:11], v3 offset1:2
	ds_load_2addr_stride64_b64 v[4:7], v4 offset1:2
	ds_load_2addr_stride64_b64 v[0:3], v1 offset1:2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v33, 7, v81
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_lshr_b32 s0, s35, 31
	.loc	1 1230 31                       ; ragged.py:1230:31
	v_lshl_or_b32 v32, s46, 7, v32
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v33, s47, v33
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_ashr_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1236 54                       ; ragged.py:1236:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v33
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s33, v33
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v36, v28, v30, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_14:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 2, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v24, v26, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 4, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v36, v20, v22, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 6, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v16, v18, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 8, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v36, v12, v14, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 10, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v8, v10, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 12, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v4, v6, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 14, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v0, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s33, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v28, v28, v30, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v28, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v28, 18, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v28
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v28, s33, v28
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v24, v24, v26, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v28, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v24, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(6)
	v_or_b32_e32 v24, 20, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v24
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v24, s33, v24
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v20, v22, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v24, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v20, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v20, 22, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v20
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v20, s33, v20
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v16, v18, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v20, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v16, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(4)
	v_or_b32_e32 v16, 24, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v16
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v16, s33, v16
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v12, v12, v14, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v16, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v12, off
.LBB0_38:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v12, 26, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v12
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v12, s33, v12
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v8, v10, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v12, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v8, off
.LBB0_40:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(2)
	v_or_b32_e32 v8, 28, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v8
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_42
; %bb.41:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v8, s33, v8
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v4, v4, v6, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v8, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v4, off
.LBB0_42:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v4, 30, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v4
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_44
; %bb.43:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v4, s33, v4
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v4, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_44:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v0, 32, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_46
; %bb.45:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v29, v31, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_46:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_48
; %bb.47:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v25, v27, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_48:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_50
; %bb.49:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v21, v23, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_50:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 38, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_52
; %bb.51:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v17, v19, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_52:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 40, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_54
; %bb.53:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v13, v15, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_54:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 42, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_56
; %bb.55:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v9, v11, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_56:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 44, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_58
; %bb.57:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v5, v7, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_58:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 46, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_60
; %bb.59:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v1, v3, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_60:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 48, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_62
; %bb.61:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v29, v31, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v28, s0, s44, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s45, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[28:29], v0, off
.LBB0_62:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 50, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_64
; %bb.63:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[28:29], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v25, v27, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v24, s0, s44, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s45, v29, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[24:25], v0, off
.LBB0_64:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 52, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_66
; %bb.65:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[24:25], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v21, v23, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v20, s0, s44, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s45, v25, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[20:21], v0, off
.LBB0_66:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 54, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_68
; %bb.67:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[20:21], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v17, v19, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v16, s0, s44, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s45, v21, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[16:17], v0, off
.LBB0_68:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 56, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_70
; %bb.69:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[16:17], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v13, v15, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v12, s0, s44, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s45, v17, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[12:13], v0, off
.LBB0_70:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 58, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_72
; %bb.71:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[12:13], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v9, v11, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v8, s0, s44, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s45, v13, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[8:9], v0, off
.LBB0_72:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 60, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_74
; %bb.73:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[8:9], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v5, v7, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v4, s0, s44, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s45, v9, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[4:5], v0, off
.LBB0_74:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 62, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_76
; %bb.75:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s33, v0
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v2, v1, v3, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[4:5], null, v0, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v0, vcc_lo, s44, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s45, v5, vcc_lo
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[0:1], v2, off
.LBB0_76:
	.loc	1 970 5 is_stmt 1               ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 205
		.amdhsa_next_free_sgpr 84
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 205
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 84
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13636
; TotalNumSgprs: 86
; NumVgprs: 205
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 86
; NumVGPRsForWavesPerEU: 205
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     86
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     205
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
