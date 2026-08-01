	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v94, 15, v0
	v_lshrrev_b32_e32 v133, 1, v0
	v_lshlrev_b32_e32 v134, 2, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s8, s5
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s4, s5, s4
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s4, s2, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s9, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s9, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s8, s9
	s_abs_i32 s9, s4
	s_add_i32 s8, s8, s2
	s_mul_hi_u32 s2, s9, s8
	s_xor_b32 s8, s4, s6
	s_mul_i32 s10, s2, s7
	s_ashr_i32 s13, s8, 31
	s_sub_i32 s8, s9, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s2, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s14, s2, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s12, 0xff
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s14, s13
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s33, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 120 13 is_stmt 0              ; generate_amdgcn.py:120:13
	s_add_i32 s4, s4, s5
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s2, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v3, 1, v0
.Ltmp15:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 2, v0
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow308
	s_load_b128 s[20:23], s[0:1], 0x20
	v_dual_mov_b32 v109, 0 :: v_dual_and_b32 v132, 7, v0
	v_lshrrev_b32_e32 v95, 4, v0
	v_dual_mov_b32 v111, 0 :: v_dual_and_b32 v96, 0x100, v0
	v_dual_mov_b32 v106, 0 :: v_dual_lshlrev_b32 v97, 4, v94
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v131, 0xe0, v0
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v98, 16, v0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v100, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s34, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 123 22 is_stmt 1              ; generate_amdgcn.py:123:22
	s_lshr_b32 s0, s12, 31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v19, s14, 9, v131
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s12, s12, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s16, s13, 9
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s15, s12, 1
	s_mov_b32 s12, 0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v2, 32, v95
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_subrev_nc_u32_e32 v140, s16, v19
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 3, v132
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v3, 1, v131
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v4, 4, v96
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s3, s3, 6
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s1, s2, 31
	v_dual_mov_b32 v105, 0 :: v_dual_lshlrev_b32 v6, 3, v0
	v_and_b32_e32 v7, 56, v133
.Ltmp18:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v135, s15, v2
	v_or_b32_e32 v2, s3, v1
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s1, s1, 24
	v_add3_u32 v136, 0, v94, v3
.Ltmp20:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add3_u32 v3, s34, v4, v94
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s2, s1
	v_xor_b32_e32 v7, v6, v7
	s_ashr_i32 s40, s2, 8
.Ltmp22:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v6, s3, v95
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v2
	s_add_i32 s42, s3, 64
	s_lshl_b32 s3, s13, 8
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v17, 64, v2
	v_lshrrev_b32_e32 v2, 3, v98
	v_add_nc_u32_e32 v18, 32, v3
	v_mul_lo_u32 v3, s40, v3
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s14, s14, 8
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v139, 2, v2
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v2, 0x60, v6
	v_add_nc_u32_e32 v4, 64, v6
	v_lshlrev_b32_e32 v142, 1, v3
	v_cmp_gt_i32_e64 s1, 0x80, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[2:3], null, s35, v2, s[14:15]
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v17, s34, v5
	v_or_b32_e32 v5, 32, v6
	v_cmp_gt_i32_e64 s2, 0x80, v4
	v_mad_u64_u32 v[3:4], null, s35, v4, s[14:15]
	v_sub_nc_u32_e32 v137, s15, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[4:5], null, s35, v5, s[14:15]
	v_sub_nc_u32_e32 v138, s15, v95
	v_cmp_gt_i32_e64 s0, 0x80, v6
	v_mad_u64_u32 v[5:6], null, s35, v6, s[14:15]
	v_mad_u64_u32 v[81:82], null, s15, v17, v[1:2]
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_and_b32_e32 v8, 0x438, v134
	v_subrev_nc_u32_e32 v143, s3, v2
	v_subrev_nc_u32_e32 v144, s3, v3
	v_subrev_nc_u32_e32 v145, s3, v4
	v_subrev_nc_u32_e32 v146, s3, v5
	v_lshl_or_b32 v8, v94, 6, v8
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v147, 0, v7
	v_lshlrev_b32_e32 v9, 4, v0
	v_mov_b32_e32 v99, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v10, 8, v8
	v_xor_b32_e32 v11, 16, v8
	v_xor_b32_e32 v12, 24, v8
	v_xor_b32_e32 v13, 32, v8
	v_xor_b32_e32 v14, 40, v8
	v_xor_b32_e32 v15, 48, v8
	v_xor_b32_e32 v16, 56, v8
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v149, 0, v8
	v_mov_b32_e32 v1, s12
	v_mul_lo_u32 v18, s40, v18
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v150, 0, v10
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v151, 0, v11
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v152, 0, v12
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v153, 0, v13
	v_dual_mov_b32 v126, 0 :: v_dual_lshlrev_b32 v141, 1, v18
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v154, 0, v14
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v155, 0, v15
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v156, 0, v16
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_mov_b32_e32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_add_nc_u32 v148, 0, v9
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s41, s35, 1
	s_lshl_b32 s43, s35, 7
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s28, s4
	s_mov_b32 s29, s5
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s36, s6
	s_mov_b32 s37, s7
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v9, v142, s[24:27], 0 offen
	buffer_load_u16 v10, v141, s[24:27], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_sub_i32 s5, s42, 64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v141, 2, v141
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s5, v137
	v_cmp_lt_i32_e64 s4, s5, v138
	v_cmp_lt_i32_e64 s5, s5, v135
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s40, s40, -1
	v_add_nc_u32_e32 v142, 2, v142
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s4, s4, s0
	s_and_b32 s5, s5, s0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v158, 16, v10
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v19, s42, v81
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v157, 16, v9
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v13, v97, v145
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v145, s43, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_subrev_nc_u32_e32 v9, 64, v19
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v13, 0x80000000, v13, s5
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s5, s42, v135
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s42, v137
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s5, s2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b64 v[17:18], v9, s[28:31], 0 offen
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v97, v146
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, s1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v146, s43, v146
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s4, s42, v138
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s42, 0x80
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v147, v[17:18] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v148, v[9:12]
	ds_store_b128 v148, v[13:16] offset:8192
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v9, 0x80000000, v19, s3
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s4, s4, s2
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v10, v97, v143
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v143, s43, v143
	s_cmp_lg_u32 s40, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b64 v[82:83], v9, s[28:31], 0 offen
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v97, v144
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v33, v136 offset:3456
	ds_load_u8 v34, v136 offset:3200
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[49:52], v149 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[53:56], v150 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[57:60], v151 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[61:64], v152 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[65:68], v153 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[69:72], v154 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[73:76], v155 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[77:80], v156 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v144, s43, v144
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[41:44], v9, s[36:39], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v10, s5
	buffer_load_b128 v[45:48], v9, s[36:39], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v136 offset:1280
	ds_load_u8 v10, v136 offset:1024
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:3968
	ds_load_u8 v35, v136 offset:3712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:1792
	ds_load_u8 v11, v136 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v10, 16, v9
	ds_load_u8 v9, v136 offset:256
	ds_load_u8 v10, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:768
	ds_load_u8 v11, v136 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v10, 16, v9
	ds_load_u8 v9, v136 offset:3328
	ds_load_u8 v10, v136 offset:3072
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[49:50], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:3840
	ds_load_u8 v11, v136 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v10, 16, v9
	ds_load_u8 v9, v136 offset:2304
	ds_load_u8 v10, v136 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:2816
	ds_load_u8 v11, v136 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v27, v10, 16, v9
	ds_load_u8 v9, v136 offset:5376
	ds_load_u8 v10, v136 offset:5120
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[53:54], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:5888
	ds_load_u8 v11, v136 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v10, 16, v9
	ds_load_u8 v9, v136 offset:4352
	ds_load_u8 v10, v136 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:4864
	ds_load_u8 v11, v136 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v10, 16, v9
	ds_load_u8 v9, v136 offset:7424
	ds_load_u8 v10, v136 offset:7168
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[57:58], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:7936
	ds_load_u8 v11, v136 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v10, 16, v9
	ds_load_u8 v9, v136 offset:6400
	ds_load_u8 v10, v136 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:6912
	ds_load_u8 v11, v136 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v10, 16, v9
	ds_load_u8 v9, v136 offset:9472
	ds_load_u8 v10, v136 offset:9216
	v_wmma_i32_16x16x16_iu4 v[17:24], v[31:32], v[61:62], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:9984
	ds_load_u8 v11, v136 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v10, 16, v9
	ds_load_u8 v9, v136 offset:8448
	ds_load_u8 v10, v136 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:8960
	ds_load_u8 v11, v136 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v10, 16, v9
	ds_load_u8 v9, v136 offset:11520
	ds_load_u8 v10, v136 offset:11264
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[65:66], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:12032
	ds_load_u8 v11, v136 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v10, 16, v9
	ds_load_u8 v9, v136 offset:10496
	ds_load_u8 v10, v136 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:11008
	ds_load_u8 v11, v136 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v10, 16, v9
	ds_load_u8 v9, v136 offset:13568
	ds_load_u8 v10, v136 offset:13312
	v_wmma_i32_16x16x16_iu4 v[17:24], v[86:87], v[69:70], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:14080
	ds_load_u8 v11, v136 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v10, 16, v9
	ds_load_u8 v9, v136 offset:12544
	ds_load_u8 v10, v136 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:13056
	ds_load_u8 v11, v136 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v88, v10, 16, v9
	ds_load_u8 v9, v136 offset:15616
	ds_load_u8 v10, v136 offset:15360
	v_wmma_i32_16x16x16_iu4 v[17:24], v[88:89], v[73:74], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:16128
	ds_load_u8 v11, v136 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v10, 16, v9
	ds_load_u8 v9, v136 offset:14592
	ds_load_u8 v10, v136 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:15104
	ds_load_u8 v11, v136 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v10, 16, v9
	ds_load_u8 v9, v136 offset:1408
	ds_load_u8 v10, v136 offset:1152
	v_wmma_i32_16x16x16_iu4 v[17:24], v[90:91], v[77:78], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:1920
	ds_load_u8 v11, v136 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v93, v10, 16, v9
	ds_load_u8 v9, v136 offset:384
	ds_load_u8 v10, v136 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v136 offset:896
	ds_load_u8 v11, v136 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v92, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[92:93], v[49:50], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v50, v34, 16, v33
	ds_load_u8 v33, v136 offset:2432
	ds_load_u8 v34, v136 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:2944
	ds_load_u8 v35, v136 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v34, 16, v33
	ds_load_u8 v33, v136 offset:5504
	ds_load_u8 v34, v136 offset:5248
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[53:54], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:6016
	ds_load_u8 v35, v136 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v34, 16, v33
	ds_load_u8 v33, v136 offset:4480
	ds_load_u8 v34, v136 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:4992
	ds_load_u8 v35, v136 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v34, 16, v33
	ds_load_u8 v33, v136 offset:7552
	ds_load_u8 v34, v136 offset:7296
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[57:58], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:8064
	ds_load_u8 v35, v136 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v34, 16, v33
	ds_load_u8 v33, v136 offset:6528
	ds_load_u8 v34, v136 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:7040
	ds_load_u8 v35, v136 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v34, 16, v33
	ds_load_u8 v33, v136 offset:9600
	ds_load_u8 v34, v136 offset:9344
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[61:62], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:10112
	ds_load_u8 v35, v136 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v34, 16, v33
	ds_load_u8 v33, v136 offset:8576
	ds_load_u8 v34, v136 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:9088
	ds_load_u8 v35, v136 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v34, 16, v33
	ds_load_u8 v33, v136 offset:11648
	ds_load_u8 v34, v136 offset:11392
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[65:66], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:12160
	ds_load_u8 v35, v136 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v34, 16, v33
	ds_load_u8 v33, v136 offset:10624
	ds_load_u8 v34, v136 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:11136
	ds_load_u8 v35, v136 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v34, 16, v33
	ds_load_u8 v33, v136 offset:13696
	ds_load_u8 v34, v136 offset:13440
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[69:70], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:14208
	ds_load_u8 v35, v136 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v34, 16, v33
	ds_load_u8 v33, v136 offset:12672
	ds_load_u8 v34, v136 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:13184
	ds_load_u8 v35, v136 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v34, 16, v33
	ds_load_u8 v33, v136 offset:15744
	ds_load_u8 v34, v136 offset:15488
	v_wmma_i32_16x16x16_iu4 v[9:16], v[69:70], v[73:74], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:16256
	ds_load_u8 v35, v136 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v34, 16, v33
	ds_load_u8 v33, v136 offset:14720
	ds_load_u8 v34, v136 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v136 offset:15232
	ds_load_u8 v35, v136 offset:14976
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v147, v[82:83] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v148, v[41:44]
	s_waitcnt vmcnt(0)
	ds_store_b128 v148, v[45:48] offset:8192
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v73, v34, 16, v33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[25:26], v[51:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[77:78], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[27:28], v[55:56], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[29:30], v[59:60], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[31:32], v[63:64], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[92:93], v[51:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[84:85], v[67:68], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[55:56], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[86:87], v[71:72], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[59:60], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[88:89], v[75:76], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[63:64], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[90:91], v[79:80], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[67:68], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[71:72], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[75:76], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[79:80], v[25:32] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[41:44], v149 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[45:48], v150 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[49:52], v151 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[53:56], v152 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[57:60], v153 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[61:64], v154 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[65:68], v155 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[69:72], v156 offset0:32 offset1:36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v73, v136 offset:1280
	ds_load_u8 v74, v136 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	ds_load_u8 v74, v136 offset:1792
	ds_load_u8 v75, v136 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v74, 16, v73
	ds_load_u8 v73, v136 offset:256
	ds_load_u8 v75, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v75, v73, 0xc0c0004
	ds_load_u8 v75, v136 offset:768
	ds_load_u8 v76, v136 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v73, v75, 16, v73
	ds_load_u8 v75, v136 offset:3328
	ds_load_u8 v76, v136 offset:3072
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[41:42], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[43:44], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v76, v136 offset:3840
	ds_load_u8 v77, v136 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v76, v76, 16, v75
	ds_load_u8 v75, v136 offset:2304
	ds_load_u8 v77, v136 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v77, v75, 0xc0c0004
	ds_load_u8 v77, v136 offset:2816
	ds_load_u8 v78, v136 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v77, 16, v75
	ds_load_u8 v77, v136 offset:5376
	ds_load_u8 v78, v136 offset:5120
	v_wmma_i32_16x16x16_iu4 v[17:24], v[75:76], v[45:46], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[47:48], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v136 offset:5888
	ds_load_u8 v79, v136 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v136 offset:4352
	ds_load_u8 v79, v136 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v79, v77, 0xc0c0004
	ds_load_u8 v79, v136 offset:4864
	ds_load_u8 v80, v136 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v79, 16, v77
	ds_load_u8 v79, v136 offset:7424
	ds_load_u8 v80, v136 offset:7168
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[49:50], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[77:78], v[51:52], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	ds_load_u8 v80, v136 offset:7936
	ds_load_u8 v82, v136 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v82, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v80, 16, v79
	ds_load_u8 v79, v136 offset:6400
	ds_load_u8 v82, v136 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v82, v79, 0xc0c0004
	ds_load_u8 v82, v136 offset:6912
	ds_load_u8 v83, v136 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v82, 16, v79
	ds_load_u8 v82, v136 offset:9472
	ds_load_u8 v83, v136 offset:9216
	v_wmma_i32_16x16x16_iu4 v[17:24], v[79:80], v[53:54], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[79:80], v[55:56], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v83, v82, 0xc0c0004
	ds_load_u8 v83, v136 offset:9984
	ds_load_u8 v84, v136 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v83, v83, 16, v82
	ds_load_u8 v82, v136 offset:8448
	ds_load_u8 v84, v136 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v82, v84, v82, 0xc0c0004
	ds_load_u8 v84, v136 offset:8960
	ds_load_u8 v85, v136 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v82, v84, 16, v82
	ds_load_u8 v84, v136 offset:11520
	ds_load_u8 v85, v136 offset:11264
	v_wmma_i32_16x16x16_iu4 v[17:24], v[82:83], v[57:58], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[82:83], v[59:60], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v85, v84, 0xc0c0004
	ds_load_u8 v85, v136 offset:12032
	ds_load_u8 v86, v136 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v85, v85, 16, v84
	ds_load_u8 v84, v136 offset:10496
	ds_load_u8 v86, v136 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v86, v84, 0xc0c0004
	ds_load_u8 v86, v136 offset:11008
	ds_load_u8 v87, v136 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v84, v86, 16, v84
	ds_load_u8 v86, v136 offset:13568
	ds_load_u8 v87, v136 offset:13312
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[61:62], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[84:85], v[63:64], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v136 offset:14080
	ds_load_u8 v88, v136 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v87, v87, 16, v86
	ds_load_u8 v86, v136 offset:12544
	ds_load_u8 v88, v136 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v88, v86, 0xc0c0004
	ds_load_u8 v88, v136 offset:13056
	ds_load_u8 v89, v136 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v88, 16, v86
	ds_load_u8 v88, v136 offset:15616
	ds_load_u8 v89, v136 offset:15360
	v_wmma_i32_16x16x16_iu4 v[17:24], v[86:87], v[65:66], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[86:87], v[67:68], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v136 offset:16128
	ds_load_u8 v90, v136 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v89, v89, 16, v88
	ds_load_u8 v88, v136 offset:14592
	ds_load_u8 v90, v136 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v88, v90, v88, 0xc0c0004
	ds_load_u8 v90, v136 offset:15104
	ds_load_u8 v91, v136 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v88, v90, 16, v88
	ds_load_u8 v90, v136 offset:1408
	ds_load_u8 v91, v136 offset:1152
	v_wmma_i32_16x16x16_iu4 v[33:40], v[88:89], v[71:72], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[88:89], v[69:70], v[17:24] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v136 offset:1920
	ds_load_u8 v92, v136 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v91, v92, v91, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v91, v91, 16, v90
	ds_load_u8 v90, v136 offset:384
	ds_load_u8 v92, v136 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v90, v92, v90, 0xc0c0004
	ds_load_u8 v92, v136 offset:896
	ds_load_u8 v93, v136 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v92, 16, v90
	v_wmma_i32_16x16x16_iu4 v[9:16], v[90:91], v[41:42], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v41, v136 offset:3456
	ds_load_u8 v42, v136 offset:3200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[90:91], v[43:44], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v136 offset:3968
	ds_load_u8 v92, v136 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v92, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v136 offset:2432
	ds_load_u8 v92, v136 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v92, v41, 0xc0c0004
	ds_load_u8 v92, v136 offset:2944
	ds_load_u8 v93, v136 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v92, 16, v41
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[45:46], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v136 offset:5504
	ds_load_u8 v46, v136 offset:5248
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[47:48], v[25:32] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v41, v139, v140
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v140, s41, v140
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v136 offset:6016
	ds_load_u8 v92, v136 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v92, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v136 offset:4480
	ds_load_u8 v92, v136 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v92, v45, 0xc0c0004
	ds_load_u8 v92, v136 offset:4992
	ds_load_u8 v93, v136 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v92, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[49:50], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v49, v136 offset:7552
	ds_load_u8 v50, v136 offset:7296
	v_wmma_i32_16x16x16_iu4 v[25:32], v[45:46], v[51:52], v[25:32] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v51, v35
	v_cvt_f32_i32_e32 v52, v36
	v_cvt_f32_i32_e32 v36, v37
	v_cvt_f32_i32_e32 v35, v38
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v136 offset:8064
	ds_load_u8 v92, v136 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v92, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v136 offset:6528
	ds_load_u8 v92, v136 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v92, v49, 0xc0c0004
	ds_load_u8 v92, v136 offset:7040
	ds_load_u8 v93, v136 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v92, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[53:54], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v53, v136 offset:9600
	ds_load_u8 v54, v136 offset:9344
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[55:56], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v136 offset:10112
	ds_load_u8 v92, v136 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v92, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v136 offset:8576
	ds_load_u8 v92, v136 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v92, v53, 0xc0c0004
	ds_load_u8 v92, v136 offset:9088
	ds_load_u8 v93, v136 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v92, 16, v53
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[57:58], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v57, v136 offset:11648
	ds_load_u8 v58, v136 offset:11392
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[59:60], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v136 offset:12160
	ds_load_u8 v92, v136 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v92, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v136 offset:10624
	ds_load_u8 v92, v136 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v92, v57, 0xc0c0004
	ds_load_u8 v92, v136 offset:11136
	ds_load_u8 v93, v136 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v92, 16, v57
	v_wmma_i32_16x16x16_iu4 v[9:16], v[57:58], v[61:62], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[63:64], v[25:32] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0xf
	buffer_load_u16 v48, v41, s[8:11], 0 offen
	buffer_load_u16 v47, v41, s[8:11], 0 offen offset:4
	buffer_load_u16 v46, v41, s[8:11], 0 offen offset:8
	buffer_load_u16 v45, v41, s[8:11], 0 offen offset:12
	buffer_load_u16 v44, v41, s[8:11], 0 offen offset:16
	buffer_load_u16 v43, v41, s[8:11], 0 offen offset:20
	buffer_load_u16 v42, v41, s[8:11], 0 offen offset:24
	buffer_load_u16 v49, v41, s[8:11], 0 offen offset:28
	buffer_load_u16 v53, v41, s[8:11], 0 offen offset:256
	buffer_load_u16 v57, v41, s[8:11], 0 offen offset:260
	buffer_load_u16 v58, v41, s[8:11], 0 offen offset:264
	buffer_load_u16 v59, v41, s[8:11], 0 offen offset:268
	buffer_load_u16 v60, v41, s[8:11], 0 offen offset:272
	buffer_load_u16 v54, v41, s[8:11], 0 offen offset:276
	buffer_load_u16 v55, v41, s[8:11], 0 offen offset:280
	buffer_load_u16 v56, v41, s[8:11], 0 offen offset:284
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v61, v136 offset:13696
	ds_load_u8 v62, v136 offset:13440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v136 offset:14208
	ds_load_u8 v92, v136 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v92, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v136 offset:12672
	ds_load_u8 v92, v136 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v92, v61, 0xc0c0004
	ds_load_u8 v92, v136 offset:13184
	ds_load_u8 v93, v136 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v92, 16, v61
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[65:66], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v136 offset:15744
	ds_load_u8 v66, v136 offset:15488
	v_wmma_i32_16x16x16_iu4 v[25:32], v[61:62], v[67:68], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v136 offset:16256
	ds_load_u8 v92, v136 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v92, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v66, 16, v65
	ds_load_u8 v65, v136 offset:14720
	ds_load_u8 v92, v136 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v92, v65, 0xc0c0004
	ds_load_u8 v92, v136 offset:15232
	ds_load_u8 v93, v136 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v92, 16, v65
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[69:70], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v50, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v41, v31
	v_cvt_f32_i32_e32 v9, v9
	v_mul_f32_e32 v32, v158, v25
	v_mul_f32_e32 v25, v158, v50
	v_cvt_f32_i32_e32 v50, v34
	v_cvt_f32_i32_e32 v34, v39
	v_mul_f32_e32 v31, v158, v30
	v_mul_f32_e32 v30, v158, v41
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_mul_f32_e32 v34, v158, v34
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v10, v157, v10
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v12, v157, v12 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v43, 16, v43
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v41, 16, v49
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v49, v33
	v_cvt_f32_i32_e32 v33, v40
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v40, v158, v49 :: v_dual_mul_f32 v49, v157, v20
	v_dual_mul_f32 v35, v158, v35 :: v_dual_lshlrev_b32 v46, 16, v46
	v_dual_mul_f32 v39, v158, v50 :: v_dual_lshlrev_b32 v48, 16, v48
	v_mul_f32_e32 v37, v158, v52
	v_mul_f32_e32 v38, v158, v51
	v_mul_f32_e32 v50, v157, v19
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v51, v157, v18 :: v_dual_lshlrev_b32 v20, 16, v53
	v_mul_f32_e32 v52, v157, v17
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v55
	v_lshlrev_b32_e32 v19, 16, v54
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v55, v22
	v_cvt_f32_i32_e32 v54, v23
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v56
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v56, v21
	v_cvt_f32_i32_e32 v53, v24
	v_dual_mul_f32 v33, v158, v33 :: v_dual_lshlrev_b32 v42, 16, v42
	v_mul_f32_e32 v36, v158, v36
	v_mul_f32_e32 v21, v157, v16
	v_mul_f32_e32 v22, v157, v15
	v_dual_mul_f32 v23, v157, v14 :: v_dual_lshlrev_b32 v16, 16, v57
	v_mul_f32_e32 v24, v157, v9
	v_dual_mul_f32 v53, v157, v53 :: v_dual_mul_f32 v28, v158, v28
	v_mul_f32_e32 v54, v157, v54
	v_dual_mul_f32 v55, v157, v55 :: v_dual_mul_f32 v26, v158, v26
	v_mul_f32_e32 v56, v157, v56
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v9, 16, v60
	v_lshlrev_b32_e32 v14, 16, v59
	v_lshlrev_b32_e32 v15, 16, v58
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v29, v158, v29 :: v_dual_fmac_f32 v130, v52, v48
	v_dual_mul_f32 v13, v157, v13 :: v_dual_fmac_f32 v128, v50, v46
	v_mul_f32_e32 v27, v158, v27
	v_dual_mul_f32 v11, v157, v11 :: v_dual_fmac_f32 v126, v56, v44
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v129, v51, v47 :: v_dual_fmac_f32 v124, v54, v42
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v127, v49, v45 :: v_dual_fmac_f32 v120, v11, v15
	v_dual_fmac_f32 v121, v10, v16 :: v_dual_fmac_f32 v106, v33, v41
	v_dual_fmac_f32 v118, v13, v9 :: v_dual_fmac_f32 v119, v12, v14
	v_fmac_f32_e32 v104, v27, v15
	v_dual_fmac_f32 v125, v55, v43 :: v_dual_fmac_f32 v122, v24, v20
	v_dual_fmac_f32 v123, v53, v41 :: v_dual_fmac_f32 v116, v22, v18
	v_dual_fmac_f32 v117, v23, v19 :: v_dual_fmac_f32 v114, v40, v48
	v_dual_fmac_f32 v115, v21, v17 :: v_dual_fmac_f32 v112, v38, v46
	v_dual_fmac_f32 v113, v39, v47 :: v_dual_fmac_f32 v110, v36, v44
	v_dual_fmac_f32 v111, v37, v45 :: v_dual_fmac_f32 v108, v34, v42
	v_dual_fmac_f32 v109, v35, v43 :: v_dual_fmac_f32 v102, v29, v9
	v_dual_fmac_f32 v105, v32, v20 :: v_dual_fmac_f32 v100, v30, v18
	v_fmac_f32_e32 v107, v26, v16
	v_fmac_f32_e32 v103, v28, v14
	v_fmac_f32_e32 v101, v31, v19
	v_fmac_f32_e32 v99, v25, v17
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v3, v133
	v_mov_b32_e32 v1, v134
.LBB0_7:                                ; %Flow309
.Ltmp23:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v4, |v129|, |v129|
	v_max_f32_e64 v5, |v130|, |v130|
	v_max3_f32 v6, |v127|, |v126|, |v125|
	v_max_f32_e64 v7, |v113|, |v113|
	v_max_f32_e64 v8, |v114|, |v114|
	v_max3_f32 v9, |v121|, |v120|, |v119|
	v_max_f32_e32 v4, v5, v4
	v_max3_f32 v10, |v118|, |v117|, |v116|
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v7, v8, v7 :: v_dual_and_b32 v2, 0x1f0, v0
	v_max3_f32 v5, |v124|, |v123|, |v122|
	v_max3_f32 v8, |v111|, |v110|, |v109|
	v_max3_f32 v11, |v107|, |v104|, |v103|
	v_max3_f32 v12, |v102|, |v101|, |v100|
	v_max3_f32 v4, v4, |v128|, v6
	v_max3_f32 v6, v9, v10, |v115|
	v_max3_f32 v9, |v108|, |v106|, |v105|
	v_max3_f32 v7, v7, |v112|, v8
	v_max3_f32 v8, v11, v12, |v99|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v4, v4, v5, v6
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v11, v132, 8, 0
	s_waitcnt lgkmcnt(0)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v5, v7, v9, v8
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v9, 0xf0, v3
	v_permlanex16_b32 v6, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v8, 4, v132
	s_barrier
	v_permlanex16_b32 v7, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v3, v6, v6
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v10, v131, 3, v8
	v_xor_b32_e32 v8, v8, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v6, v7, v7 :: v_dual_and_b32 v7, 8, v0
	v_max_f32_e32 v3, v4, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v9, v10, v9
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v5, v11, v8, v7
	v_lshrrev_b32_e32 v8, 2, v131
	v_add3_u32 v6, 0, v7, v9
	v_lshrrev_b32_e32 v9, 1, v96
	v_lshl_add_u32 v7, v7, 3, 0
	ds_store_b64 v5, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[3:4], v6
	v_add3_u32 v7, v7, v8, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v5, v3 :: v_dual_mov_b32 v6, v4
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v6, v6, v6
	v_dual_max_f32 v3, v3, v5 :: v_dual_max_f32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v5, v3 :: v_dual_mov_b32 v6, v4
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v5, v3, v5 :: v_dual_max_f32 v6, v4, v6
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v3, v5 :: v_dual_mov_b32 v4, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v3, v3 :: v_dual_max_f32 v11, v4, v4
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v3, 3, v94
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v4, v5, v10 :: v_dual_max_f32 v5, v6, v11
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v6, 0, v3, v9
	ds_store_b64 v7, v[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[4:5], v6
.Ltmp43:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v12, vcc_lo, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v8, v6
	v_fma_f32 v10, -v6, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v5, 0x2b8cbccc, v5 :: v_dual_fmac_f32 v8, v10, v8
	v_div_scale_f32 v7, null, 0x40e00000, 0x40e00000, v5
	v_div_scale_f32 v10, s0, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v9, v7
	v_fma_f32 v11, -v7, v9, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v9, v11, v9
	v_mul_f32_e32 v11, v12, v8
	v_mul_f32_e32 v13, v10, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v14, -v6, v11, v12
	v_fma_f32 v15, -v7, v13, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v11, v14, v8
	v_fmac_f32_e32 v13, v15, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v6, v11, v12
	v_fma_f32 v7, -v7, v13, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v6, v6, v8, v11
	s_mov_b32 vcc_lo, s0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v8.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v7, v7, v9, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v6, 0x40e00000, v4
	v_div_fixup_f32 v6, v7, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v5.h, v8.h
	v_mov_b16_e32 v5.l, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v8.l, v6.h
	v_and_b32_e32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v7, 1, v8
	v_add3_u32 v5, v4, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v6, v7, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 0xffff0000, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v6, 0xffff0000, v4
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v28, null, v7, v7, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v28
	v_fma_f32 v58, -v28, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v44, v58, v44
	v_div_scale_f32 v12, null, v7, v7, v128
	v_div_scale_f32 v20, null, v7, v7, v124
	v_div_scale_f32 v8, null, v7, v7, v130
	v_div_scale_f32 v14, null, v7, v7, v127
	v_div_scale_f32 v30, null, v7, v7, v119
	v_rcp_f32_e32 v36, v12
	v_rcp_f32_e32 v40, v20
	v_div_scale_f32 v10, null, v7, v7, v129
	v_div_scale_f32 v18, null, v7, v7, v125
	v_rcp_f32_e32 v34, v8
	v_rcp_f32_e32 v37, v14
	v_rcp_f32_e32 v45, v30
	v_div_scale_f32 v16, null, v7, v7, v126
	v_div_scale_f32 v24, null, v7, v7, v122
	v_rcp_f32_e32 v35, v10
	v_rcp_f32_e32 v39, v18
	v_fma_f32 v50, -v12, v36, 1.0
	v_fma_f32 v54, -v20, v40, 1.0
	v_div_scale_f32 v13, s1, v128, v7, v128
	v_div_scale_f32 v21, s5, v124, v7, v124
	v_div_scale_f32 v22, null, v7, v7, v123
	v_rcp_f32_e32 v38, v16
	v_rcp_f32_e32 v42, v24
	v_fma_f32 v48, -v8, v34, 1.0
	v_fma_f32 v51, -v14, v37, 1.0
	v_fma_f32 v59, -v30, v45, 1.0
	v_fmac_f32_e32 v36, v50, v36
	v_fmac_f32_e32 v40, v54, v40
	v_div_scale_f32 v9, vcc_lo, v130, v7, v130
	v_div_scale_f32 v26, null, v7, v7, v121
	v_rcp_f32_e32 v41, v22
	v_fma_f32 v49, -v10, v35, 1.0
	v_fma_f32 v53, -v18, v39, 1.0
	v_dual_fmac_f32 v34, v48, v34 :: v_dual_fmac_f32 v37, v51, v37
	v_dual_mul_f32 v50, v13, v36 :: v_dual_fmac_f32 v45, v59, v45
	v_mul_f32_e32 v54, v21, v40
	v_div_scale_f32 v11, s0, v129, v7, v129
	v_div_scale_f32 v19, s4, v125, v7, v125
	v_rcp_f32_e32 v43, v26
	v_fma_f32 v52, -v16, v38, 1.0
	v_fma_f32 v56, -v24, v42, 1.0
	v_mul_f32_e32 v48, v9, v34
	v_fma_f32 v63, -v12, v50, v13
	v_fmac_f32_e32 v35, v49, v35
	v_fma_f32 v67, -v20, v54, v21
	v_fmac_f32_e32 v39, v53, v39
	v_div_scale_f32 v15, s2, v127, v7, v127
	v_div_scale_f32 v17, s3, v126, v7, v126
	v_div_scale_f32 v25, s7, v122, v7, v122
	v_div_scale_f32 v29, s9, v120, v7, v120
	v_div_scale_f32 v32, null, v7, v7, v118
	v_div_scale_f32 v33, null, v7, v7, v117
	v_fma_f32 v55, -v22, v41, 1.0
	v_fmac_f32_e32 v38, v52, v38
	v_fmac_f32_e32 v42, v56, v42
	v_fma_f32 v61, -v8, v48, v9
	v_fmac_f32_e32 v50, v63, v36
	v_mul_f32_e32 v49, v11, v35
	v_fmac_f32_e32 v54, v67, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v53, v19, v39 :: v_dual_fmac_f32 v48, v61, v34
	v_div_scale_f32 v23, s6, v123, v7, v123
	v_rcp_f32_e32 v46, v32
	v_rcp_f32_e32 v47, v33
	v_fma_f32 v57, -v26, v43, 1.0
	v_dual_fmac_f32 v41, v55, v41 :: v_dual_mul_f32 v52, v17, v38
	v_dual_mul_f32 v51, v15, v37 :: v_dual_mul_f32 v58, v29, v44
	v_mul_f32_e32 v56, v25, v42
	v_fma_f32 v62, -v10, v49, v11
	v_fma_f32 v66, -v18, v53, v19
	v_div_scale_f32 v27, s8, v121, v7, v121
	v_fma_f32 v65, -v16, v52, v17
	v_mul_f32_e32 v55, v23, v41
	v_fma_f32 v71, -v28, v58, v29
	v_fmac_f32_e32 v43, v57, v43
	v_fmac_f32_e32 v49, v62, v35
	v_fmac_f32_e32 v53, v66, v39
	v_div_scale_f32 v31, s10, v119, v7, v119
	v_fma_f32 v60, -v32, v46, 1.0
	v_fma_f32 v64, -v14, v51, v15
	v_fma_f32 v69, -v24, v56, v25
	v_fmac_f32_e32 v52, v65, v38
	v_fma_f32 v68, -v22, v55, v23
	v_fmac_f32_e32 v58, v71, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v57, v27, v43 :: v_dual_fmac_f32 v56, v69, v42
	v_fma_f32 v8, -v8, v48, v9
	v_fma_f32 v9, -v10, v49, v11
	v_fma_f32 v10, -v12, v50, v13
	v_fma_f32 v13, -v18, v53, v19
	v_fma_f32 v19, -v33, v47, 1.0
	v_dual_mul_f32 v59, v31, v45 :: v_dual_fmac_f32 v46, v60, v46
	v_fma_f32 v70, -v26, v57, v27
	v_fmac_f32_e32 v55, v68, v41
	v_div_fmas_f32 v8, v8, v34, v48
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v18, s0, v118, v7, v118
	v_fmac_f32_e32 v47, v19, v47
	v_fmac_f32_e32 v51, v64, v37
	v_fmac_f32_e32 v57, v70, v43
	v_fma_f32 v12, -v16, v52, v17
	v_fma_f32 v16, -v24, v56, v25
	v_fma_f32 v72, -v30, v59, v31
	v_fma_f32 v11, -v14, v51, v15
	v_fma_f32 v14, -v20, v54, v21
	v_fma_f32 v15, -v22, v55, v23
	v_mul_f32_e32 v21, v18, v46
	v_div_scale_f32 v22, null, v7, v7, v116
	v_fma_f32 v17, -v26, v57, v27
	v_div_scale_f32 v27, null, v7, v7, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v32, v21, v18
	v_rcp_f32_e32 v25, v22
	v_fma_f32 v20, -v28, v58, v29
	v_div_fixup_f32 v8, v8, v7, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v21, v24, v46
	v_rcp_f32_e32 v24, v27
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v18, -v32, v21, v18
	v_fma_f32 v29, -v22, v25, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v25, v29, v25
	v_fma_f32 v29, -v27, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v24, v29, v24
	v_div_fmas_f32 v9, v9, v35, v49
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v19, s1, v117, v7, v117
	v_div_fmas_f32 v10, v10, v36, v50
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v29, null, v6, v6, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v26, v19, v47
	v_div_fmas_f32 v11, v11, v37, v51
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v37, null, v6, v6, v111
	v_fma_f32 v28, -v33, v26, v19
	v_div_fmas_f32 v12, v12, v38, v52
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v9, v9, v7, v129
	v_div_fmas_f32 v13, v13, v39, v53
	v_fmac_f32_e32 v26, v28, v47
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v28, s2, v116, v7, v116
	v_div_fmas_f32 v14, v14, v40, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v19, -v33, v26, v19
	v_div_scale_f32 v33, null, v6, v6, v113
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v39, v37
	v_div_fmas_f32 v15, v15, v41, v55
	v_rcp_f32_e32 v34, v33
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v10, v10, v7, v128
	v_div_fmas_f32 v16, v16, v42, v56
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v11, v11, v7, v127
	v_div_fmas_f32 v17, v17, v43, v57
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v12, v12, v7, v126
	v_div_fmas_f32 v20, v20, v44, v58
	v_fma_f32 v36, -v33, v34, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v13, v13, v7, v125
	v_div_fixup_f32 v14, v14, v7, v124
	v_div_fixup_f32 v15, v15, v7, v123
	v_fmac_f32_e32 v34, v36, v34
	v_fmac_f32_e32 v59, v72, v45
	v_div_fixup_f32 v16, v16, v7, v122
	v_div_fixup_f32 v17, v17, v7, v121
	v_div_fixup_f32 v20, v20, v7, v120
	v_div_scale_f32 v40, null, v6, v6, v107
	v_fma_f32 v23, -v30, v59, v31
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v42, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v23, v23, v45, v59
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v30, s0, v115, v7, v115
	v_div_fmas_f32 v18, v18, v46, v21
	v_mul_f32_e32 v21, v28, v25
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v32, v30, v24
	v_div_fmas_f32 v19, v19, v47, v26
	v_rcp_f32_e32 v26, v29
	v_fma_f32 v31, -v22, v21, v28
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v23, v23, v7, v119
	v_div_fixup_f32 v18, v18, v7, v118
	v_div_fixup_f32 v19, v19, v7, v117
	v_fmac_f32_e32 v21, v31, v25
	v_fma_f32 v31, -v27, v32, v30
	v_fma_f32 v44, -v40, v42, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v35, -v29, v26, 1.0
	v_fma_f32 v22, -v22, v21, v28
	v_div_scale_f32 v28, null, v6, v6, v112
	v_fmac_f32_e32 v32, v31, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v26, v35, v26
	v_div_scale_f32 v31, s1, v114, v6, v114
	v_rcp_f32_e32 v35, v28
	v_div_fmas_f32 v21, v22, v25, v21
	v_fma_f32 v22, -v27, v32, v30
	v_div_scale_f32 v27, s2, v113, v6, v113
	v_mul_f32_e32 v25, v31, v26
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v21, v21, v7, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v38, v27, v34
	v_div_fmas_f32 v22, v22, v24, v32
	v_fma_f32 v30, -v28, v35, 1.0
	v_fma_f32 v36, -v29, v25, v31
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v24, -v33, v38, v27
	v_div_fixup_f32 v7, v22, v7, v115
	v_fmac_f32_e32 v35, v30, v35
	v_div_scale_f32 v30, s3, v112, v6, v112
	v_fmac_f32_e32 v25, v36, v26
	v_fmac_f32_e32 v38, v24, v34
	v_fmac_f32_e32 v42, v44, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v32, v30, v35
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v22, -v29, v25, v31
	v_fma_f32 v29, -v37, v39, 1.0
	v_div_scale_f32 v31, null, v6, v6, v110
	v_fma_f32 v24, -v28, v32, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v22, v22, v26, v25
	v_fma_f32 v25, -v33, v38, v27
	v_fmac_f32_e32 v39, v29, v39
	v_div_scale_f32 v29, null, v6, v6, v109
	v_fmac_f32_e32 v32, v24, v35
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v26, s0, v111, v6, v111
	v_div_fmas_f32 v25, v25, v34, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v28, v32, v30
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v24, v31
	v_div_scale_f32 v44, s3, v107, v6, v107
	v_div_fmas_f32 v27, v27, v35, v32
	v_rcp_f32_e32 v32, v29
	v_div_scale_f32 v35, null, v6, v6, v108
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v22, v22, v6, v114
	v_div_fixup_f32 v25, v25, v6, v113
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v30, -v31, v24, 1.0
	v_div_fixup_f32 v27, v27, v6, v112
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v34, -v29, v32, 1.0
	v_fmac_f32_e32 v24, v30, v24
	v_div_scale_f32 v30, s1, v110, v6, v110
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v32, v34, v32
	v_mul_f32_e32 v28, v26, v39
	v_div_scale_f32 v34, s2, v109, v6, v109
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v33, -v37, v28, v26
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v28, v33, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v26, -v37, v28, v26
	v_rcp_f32_e32 v37, v35
	.loc	1 86 37 is_stmt 1               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s4, s35, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v26, v26, v39, v28
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v26, v26, v6, v111
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v35, v37, 1.0
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v37, v38, v37
	v_mul_f32_e32 v33, v30, v24
	v_fma_f32 v36, -v31, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v33, v36, v24
	v_div_scale_f32 v36, null, v6, v6, v106
	v_fma_f32 v30, -v31, v33, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v39, v36
	v_div_fmas_f32 v24, v30, v24, v33
	v_div_scale_f32 v30, null, v6, v6, v105
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v43, s2, v105, v6, v105
	v_rcp_f32_e32 v33, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v36, v39, 1.0
	v_div_fixup_f32 v24, v24, v6, v110
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v41, -v30, v33, 1.0
	v_dual_mul_f32 v28, v34, v32 :: v_dual_fmac_f32 v33, v41, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v29, v28, v34
	v_div_scale_f32 v41, null, v6, v6, v104
	v_mul_f32_e32 v46, v43, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v31, v32
	v_div_scale_f32 v31, s0, v108, v6, v108
	v_rcp_f32_e32 v45, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v29, v28, v34
	v_mul_f32_e32 v34, v31, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v28, v29, v32, v28
	v_fma_f32 v29, -v35, v34, v31
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s1, v106, v6, v106
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v41, v45, 1.0
	v_fmac_f32_e32 v34, v29, v37
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v32, v38, v39
	v_div_fixup_f32 v28, v28, v6, v109
	v_fmac_f32_e32 v45, v47, v45
	v_fma_f32 v31, -v35, v34, v31
	v_mul_f32_e32 v35, v44, v42
	v_fma_f32 v29, -v36, v32, v38
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v31, v31, v37, v34
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v32, v29, v39
	v_fma_f32 v29, -v30, v46, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v31, v31, v6, v108
	v_fma_f32 v34, -v36, v32, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v29, v33
	v_fma_f32 v29, -v40, v35, v44
	v_div_scale_f32 v36, s0, v104, v6, v104
	v_div_fmas_f32 v32, v34, v39, v32
	v_div_scale_f32 v34, null, v6, v6, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v29, v42
	v_fma_f32 v30, -v30, v46, v43
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v38, v34
	v_mul_f32_e32 v29, v36, v45
	v_div_scale_f32 v39, null, v6, v6, v100
	v_div_fmas_f32 v30, v30, v33, v46
	v_fma_f32 v33, -v40, v35, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v37, -v41, v29, v36
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v43, v39
	v_div_fixup_f32 v32, v32, v6, v106
	v_div_fmas_f32 v33, v33, v42, v35
	v_fmac_f32_e32 v29, v37, v45
	v_fma_f32 v37, -v34, v38, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v30, v30, v6, v105
	v_div_fixup_f32 v33, v33, v6, v107
	v_fma_f32 v35, -v41, v29, v36
	v_fmac_f32_e32 v38, v37, v38
	v_div_scale_f32 v37, null, v6, v6, v101
	v_div_scale_f32 v36, null, v6, v6, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v29, v35, v45, v29
	v_div_scale_f32 v40, vcc_lo, v103, v6, v103
	v_rcp_f32_e32 v41, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v36
	v_div_scale_f32 v45, null, v6, v6, v99
	v_mul_f32_e32 v44, v40, v38
	v_fma_f32 v49, -v39, v43, 1.0
	v_div_fixup_f32 v29, v29, v6, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v47, v45
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v48, -v34, v44, v40
	v_fma_f32 v46, -v37, v41, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v36, v35, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_fmac_f32 v44, v48, v38 :: v_dual_fmac_f32 v41, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v42, v35
	v_div_scale_f32 v42, s0, v102, v6, v102
	v_fma_f32 v34, -v34, v44, v40
	v_div_scale_f32 v46, s1, v101, v6, v101
	v_fma_f32 v51, -v45, v47, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v34, v34, v38, v44
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_mul_f32_e32 v52, v46, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v37, v52, v46
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v50, v42, v35
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, s2, v100, v6, v100
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v47, v51, v47
	v_div_scale_f32 v51, s3, v99, v6, v99
	v_fma_f32 v48, -v36, v50, v42
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v52, v40, v41
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v53, v49, v43
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v54, v51, v47
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v50, v48, v35
	v_fma_f32 v48, -v39, v53, v49
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v38, -v45, v54, v51
	v_div_fixup_f32 v34, v34, v6, v103
	v_fma_f32 v36, -v36, v50, v42
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_cvt_i32_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v53, v48, v43
	v_fmac_f32_e32 v54, v38, v47
	v_div_fmas_f32 v35, v36, v35, v50
	v_fma_f32 v36, -v37, v52, v46
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v37, -v39, v53, v49
	v_fma_f32 v38, -v45, v54, v51
	v_div_fixup_f32 v35, v35, v6, v102
	v_div_fmas_f32 v36, v36, v41, v52
	s_mov_b32 vcc_lo, s2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v37, v37, v43, v53
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v36, v36, v6, v101
	v_div_fmas_f32 v38, v38, v47, v54
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v37, v37, v6, v100
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v38, v6, v99
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v38, v7
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v39, v24
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v40, v32
	v_cvt_i32_f32_e32 v32, v33
	v_cvt_i32_f32_e32 v33, v29
	v_cvt_i32_f32_e32 v41, v6
	v_and_b32_e32 v6, 15, v8
	v_and_b32_e32 v8, 15, v10
	v_and_b32_e32 v10, 15, v12
	v_and_b32_e32 v12, 15, v14
	v_and_b32_e32 v14, 15, v16
	v_and_b32_e32 v16, 15, v20
	v_and_b32_e32 v20, 15, v21
	v_and_b32_e32 v21, 15, v38
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v29, 11, v0
	v_lshlrev_b32_e32 v38, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v34, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v7, 15, v9
	v_and_b32_e32 v9, 15, v11
	v_and_b32_e32 v11, 15, v13
	v_and_b32_e32 v13, 15, v15
	v_and_b32_e32 v15, 15, v17
	v_and_b32_e32 v17, 15, v23
	v_and_b32_e32 v23, 15, v25
	v_and_b32_e32 v24, 15, v27
	v_and_b32_e32 v25, 15, v26
	v_and_b32_e32 v26, 15, v39
	v_and_b32_e32 v27, 15, v28
	v_and_b32_e32 v28, 15, v31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v31, 0x160, v0
	v_and_b32_e32 v29, 0x3000, v29
	v_lshlrev_b32_e32 v39, 7, v98
	v_lshlrev_b32_e32 v44, 7, v0
	v_and_b32_e32 v38, 0x60, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v37, v37
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v42, 0x200, v1
	v_xor_b32_e32 v43, v97, v31
	v_add3_u32 v39, 0, v29, v39
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v31, 15, v33
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v33, 0x3600, v44, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v22, v22
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v34, v34
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v38, v39, v42, v43
	v_xad_u32 v2, v33, v2, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v22, 15, v22
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v37, v37
	v_and_b32_e32 v18, 15, v18
	v_and_b32_e32 v19, 15, v19
	v_and_b32_e32 v29, 15, v30
	v_and_b32_e32 v30, 15, v32
	v_and_b32_e32 v32, 15, v34
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v38, v[6:9]
	ds_store_b128 v38, v[14:17] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v2
	ds_load_b128 v[14:17], v2 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v38, v[22:25]
	ds_store_b128 v38, v[29:32] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v2
	ds_load_b128 v[30:33], v2 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v38, v[10:13]
	ds_store_b128 v38, v[18:21] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v2
	ds_load_b128 v[18:21], v2 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v29, 15, v40
	v_and_b32_e32 v34, 15, v35
	v_and_b32_e32 v35, 15, v36
	v_and_b32_e32 v36, 15, v37
	v_and_b32_e32 v37, 15, v41
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v38, v[26:29]
	ds_store_b128 v38, v[34:37] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v2
	ds_load_b128 v[34:37], v2 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v38.l, v5.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v14, 4, v6
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v15, 4, v7
	v_lshl_or_b32 v7, v16, 4, v8
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v16, s0, v95
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s34, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v2, v17, 4, v9
	v_lshl_or_b32 v9, v18, 4, v10
	v_lshl_or_b32 v10, v19, 4, v11
	v_lshl_or_b32 v8, v20, 4, v12
	v_lshl_or_b32 v11, v21, 4, v13
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v3, s2, s1, v3
	s_lshl_b32 s0, s0, 5
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v12, v30, 4, v22
	v_lshl_or_b32 v13, v31, 4, v23
	v_lshl_or_b32 v14, v32, 4, v24
	v_lshl_or_b32 v15, v33, 4, v25
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v34, 4, v26
	v_lshl_or_b32 v18, v35, 4, v27
	v_lshl_or_b32 v19, v36, 4, v28
	v_lshl_or_b32 v20, v37, 4, v29
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v21, v3, v16
	v_add3_u32 v16, v16, s0, v3
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v2.l
	v_and_b16 v2.h, 0xff, v7.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v3.h, 0xff, v5.l
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v5.l, 0xff, v8.l
	v_or_b16 v8.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v10.l
	v_or_b16 v8.l, v3.h, v3.l
	v_and_b16 v2.h, 0xff, v9.l
	v_or_b16 v9.h, v5.l, v4.l
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v3.h, 0xff, v14.l
	v_lshlrev_b16 v4.l, 8, v13.l
	v_and_b16 v5.l, 0xff, v12.l
	v_lshlrev_b16 v5.h, 8, v20.l
	v_and_b16 v6.l, 0xff, v19.l
	v_lshlrev_b16 v6.h, 8, v18.l
	v_and_b16 v7.l, 0xff, v17.l
	v_or_b16 v9.l, v2.h, v2.l
	v_or_b16 v2.h, v3.h, v3.l
	v_or_b16 v2.l, v5.l, v4.l
	v_or_b16 v3.h, v6.l, v5.h
	v_or_b16 v3.l, v7.l, v6.h
	s_and_b32 s1, s21, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s20
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v38.h, v4.h
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v21, s[0:3], 0 offen
	buffer_store_b64 v[2:3], v16, s[0:3], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v2, 2, v94
	v_lshrrev_b32_e32 v3, 2, v96
	v_and_b32_e32 v1, 0x7c, v1
	v_and_b32_e32 v4, 2, v95
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s4, 24
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v2, 0, v2, v3
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v3, v0, 63, s34
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v1, 0, v1, v4
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	ds_store_b32 v2, v38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v1
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v3, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	s_and_b32 s1, s23, 0xffff
	s_mov_b32 s0, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp44:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp45:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 159
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 159
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13028
; TotalNumSgprs: 46
; NumVgprs: 159
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 159
; Occupancy: 9
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
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	181                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
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
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     159
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
